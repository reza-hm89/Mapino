using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ResetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSendVerify_OnClick(object sender, EventArgs e)
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = (from t in db.WebUserTables
                where t.Username == txtUsername3.Text
                select t).SingleOrDefault();

            if (query == null)
            {
                lblResult.ForeColor = Color.Red;
                lblResult.Text = "نام کاربری با این نام وجود ندارد";
                txtUsername3.Text = "";

                return;
            }

            Regex regexMobile = new Regex(@"(^(09|9)[0-3][0-9]\d{7}$)");
            Regex regexEmail = new Regex(@"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*");

            if (regexMobile.IsMatch(txtUsername3.Text))
            {
                if (query.VerifyMobile == false)
                {
                    lblResult.ForeColor = Color.Red;
                    lblResult.Text = "نام کاربری اعتبار سنجی نشده است";
                    txtUsername3.Text = "";
                }


                SmsWs sms = new SmsWs();

                var code = new Random().Next(100000, 999999);

                query.Password = FormsAuthentication.HashPasswordForStoringInConfigFile(code.ToString(), "md5");

                var smsEntity = new SmsEntity();
                smsEntity.Receptor = query.Mobile;
                smsEntity.Message = "کلمه عبور جدید: " + code + "\r\nhttp:\\mapino.ir";

                if (sms.Insert(smsEntity))
                {
                    lblResult.ForeColor = Color.Green;
                    lblResult.Text = "پیامک بازنشانی کلمه عبور با موفقیت ارسال شد";

                    db.SubmitChanges();
                }
            }

            else if (regexEmail.IsMatch(txtUsername3.Text))
            {
                if (query.VerifyEmail == false)
                {
                    lblResult.ForeColor = Color.Red;
                    lblResult.Text = "نام کاربری اعتبار سنجی نشده است";
                    txtUsername3.Text = "";
                }

                var code = new Random().Next(100000, 999999);

                query.Password = FormsAuthentication.HashPasswordForStoringInConfigFile(code.ToString(), "md5");

                string emailBody = "کاربر گرامی: " + query.Name + "\n" +
                                   "این ایمیل از سایت مپی نو برای شما ارسال شده است." +
                                   "\n" +
                                   "کلمه عبور شما بازنشانی شده است و کلمه عبور جدیدی به درخواست شما ارسال گردیده است." +
                                   "\n" +
                                   "تاریخ: " + FarsiLibrary.Utils.PersianDate.Now.ToString("yy/mm/dd") + "\n" + "\n" +

                                   "کلمه عبور جدید :" + code + "\n" +
                                   "لطفا پس از ورود کلمه عبور خود را تغییر دهید";

                if (GlobalFunction.SendEmail(query.Email, "بازنشانی حساب کاربری - mapino.ir", emailBody) == true)
                {

                    lblResult.ForeColor = Color.Green;

                    lblResult.Text = "ایمیل بازنشانی کلمه عبور با موفقیت ارسال شد";

                    db.SubmitChanges();
                }
            }

        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message,ex.StackTrace,"کاربر سایت");
            throw;
        }
    }
}