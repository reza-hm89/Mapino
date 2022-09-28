using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            divVerifyCode.Style["display"] = "none";
        }
       
    }

    protected void btnRegister_OnClick(object sender, EventArgs e)
    {
        try
        {
            bool IsNoActivation=false;

            var webuser = new WebUserClass();

            bool result = webuser.ExistUsername(txtUsername.Text.Trim());
           
            if (!result)
            {
                IsNoActivation = webuser.IsRegisterNoActivate(txtUsername.Text.Trim());

                if (IsNoActivation)
                {
                    lblResult2.ForeColor = Color.Orange;
                    lblResult2.Text = "شما با این نام کاربری قبلا ثبت نام کرده اید. لطفا به فعال سازی آن بپردازید";

                    var webuserEntity1 = new WebUserEntity();

                    webuserEntity1.Username = txtUsername.Text.Trim();

                    webuserEntity1 = ActivateAccount(webuserEntity1);

                    var db = new DataClassesDataContext();

                    var query = (from t in db.WebUserTables
                                 where t.Username == webuserEntity1.Username
                                 select t).SingleOrDefault();

                    if (query != null)
                    {
                        query.VerifyCode = webuserEntity1.VerifyCode;
                        query.Mobile = webuserEntity1.Mobile;
                        query.Email = webuserEntity1.Email;

                        db.SubmitChanges();
                    }
                }
                else
                {
                   
                    lblResult.ForeColor = Color.Red;
                    lblResult.Text = "نام کاربری در پایگاه داده موجود است. لطفا نام کاربری دیگری انتخاب نمایید";

                    return;
                }                
            }

            if (!IsNoActivation)
            {
                var webuserEntity = new WebUserEntity();

                webuserEntity.Name = txtName.Text.Trim();
                webuserEntity.Username = txtUsername.Text.Trim();
                webuserEntity.Password =
                    FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text.Trim(), "md5");
                webuserEntity.RegDate = DateTime.Now;
                webuserEntity.VerifyExpire = 24;

                ActivateAccount(webuserEntity);

                long userId = UserRegister(webuserEntity);

                if (userId != -1)
                {
                    lblResult2.ForeColor = Color.Green;
                    lblResult2.Text = "ثبت نام شما با موفقیت انجام شد. لطفا به فعال سازی حساب خود اقدام فرمایید";

                    Session["WebUserId"] = userId;
                }
                else
                {
                    lblResult2.ForeColor = Color.Red;
                    lblResult2.Text = "خطا در ثبت اطلاعات. لطفا مجددا تلاش فرمایید";
                }
            }
           
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, "کاربران سایت");
            //Response.Redirect("Error.aspx", false);
        }
    }

    WebUserEntity ActivateAccount(WebUserEntity webuserEntity)
    {
        Regex regexMobile = new Regex(@"(^(09|9)[0-3][0-9]\d{7}$)");
        Regex regexEmail = new Regex(@"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*");

        webuserEntity.Username = GlobalFunction.ChangeNumbers(webuserEntity.Username);

        if (regexMobile.IsMatch(webuserEntity.Username))
        {
            webuserEntity.Mobile = GlobalFunction.ChangeNumbers(txtUsername.Text.Trim());

            SmsWs sms = new SmsWs();

            var code = new Random().Next(1000, 9999);

            webuserEntity.VerifyCode = code.ToString();

            var smsEntity = new SmsEntity();
            smsEntity.Receptor = webuserEntity.Mobile;
            smsEntity.Message = "کد فعال سازی: " + code + "\r\nhttp:\\mapino.ir";

            if (sms.Insert(smsEntity))
            {
                lblResult.ForeColor = Color.Green;
                lblResult.Text = "پیامک فعال سازی با موفقیت ارسال شد";

                divVerifyCode.Style["display"] = "block";
            }
        }

        else if (regexEmail.IsMatch(webuserEntity.Username))
        {
            webuserEntity.Email = txtUsername.Text;

            string guid = Guid.NewGuid().ToString();

            string emailBody = "کاربر گرامی: " + webuserEntity.Name + "\n" +
                               "لینک زیر برای فعال سازی حساب کاربری در سایت مپی نو برای شما ارسال شده است." +
                               "\n" +
                               "لطفاً توجه داشته باشید لینک فوق از تاریخ ارسال برای مدت 24 ساعت معتبر می باشد و پس از آن منقضی می گردد." +
                               "\n" +
                               "تاریخ: " + FarsiLibrary.Utils.PersianDate.Now.ToString("yy/mm/dd") + "\n" + "\n" +

                               "لطفا جهت فعال سازی حساب کاربری خود بر روی لینک زیر کلیک نمائید :" + "\n" +
                               "http://" + HttpContext.Current.Request.Url.Host + ":" + HttpContext.Current.Request.Url.Port + "/VerifyEmail.aspx?email=" + webuserEntity.Email + "&guid=" + guid;

            if (GlobalFunction.SendEmail(webuserEntity.Email, "فعال سازی حساب کاربری - mapino.ir", emailBody) == true)
            {
                webuserEntity.VerifyCode = guid;
                lblResult.ForeColor = Color.Green;

                lblResult.Text = "ایمیل فعال سازی حساب کاربری با موفقیت ارسال شد";
            }

        }

        return webuserEntity;
    }

    public long UserRegister(WebUserEntity webUserEntity)
    {
        try
        {
            var webuser = new WebUserClass();

            return webuser.Insert(webUserEntity);
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, "کاربران سایت");
            Response.Redirect("Error.aspx", false);
            return -1;
        }

    }

    protected void btnMobileVerify_OnClick(object sender, EventArgs e)
    {
        var webUser = new MapinoWs();

        if (webUser.AuthenticationMobile(txtUsername.Text, txtVerfiyMobile.Text))
        {
            lblActivation.ForeColor = Color.Green;
            lblActivation.Text = "نام کاربری شما فعال گردید";

            Session["WebUsername"] = txtUsername.Text;
            Session["WebName"] = txtName.Text;
            //Session["WebUserId"] = userId;

            Response.Redirect("Map.aspx", false);
        }
        else
        {
            lblActivation.ForeColor = Color.Red;
            lblActivation.Text = "کد فعال سازی اشتباه است";
            txtVerfiyMobile.Text = "";
        }
       
    }

    protected void txtUsername_OnTextChanged(object sender, EventArgs e)
    {
        txtUsername.Text= GlobalFunction.ChangeNumbers(txtUsername.Text);
    }
}