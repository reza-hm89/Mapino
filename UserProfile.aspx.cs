using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["webUsername"]==null)
            {
                Response.Redirect("Default.aspx");
            }
            if (!IsPostBack)
            {
                var db = new DataClassesDataContext();

                var query = (from t in db.WebUserTables
                             where t.Username == Session["webUsername"].ToString()
                             select t).SingleOrDefault();

                if (query != null)
                {
                    txtUsername3.Text = query.Username;
                    txtName.Text = query.Name;
                    txtMobile.Text = query.Mobile;
                    txtEmail.Text = query.Email;
                }
            }
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message,ex.StackTrace,"کاربر سایت");
        }
       
    }

    protected void btnSaveProfile_OnClick(object sender, EventArgs e)
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = (from t in db.WebUserTables
                         where t.Username == Session["webUsername"].ToString()
                         select t).SingleOrDefault();

            if (query != null)
            {
                query.Name = txtName.Text;
                query.Mobile = txtMobile.Text;
                query.Email = txtEmail.Text;

                Session["WebName"] = query.Name;

                db.SubmitChanges();

                lblResultProfile.ForeColor = Color.Green;
                lblResultProfile.Text = "اطلاعات با موفقیت ثبت شد";
            }
            else
            {
                lblResultProfile.ForeColor = Color.Red;
                lblResultProfile.Text = "خطا در ثبت اطلاعات";
            }
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, "کاربر سایت");
        }
    }

    protected void btnChangePassword_OnClick(object sender, EventArgs e)
    {
        try
        {
            string password = FormsAuthentication.HashPasswordForStoringInConfigFile(txtCurrentPassword.Text.Trim(), "md5");

            var db = new DataClassesDataContext();

            var query = (from t in db.WebUserTables
                         where t.Username == Session["webUsername"].ToString()
                         select t).Single();

            if (query != null)
            {
                if (query.Password != password)
                {
                    lblResultPass.ForeColor = Color.Red;
                    lblResultPass.Text = "کلمه عبور فعلی معتبر نمی باشد";
                }
                else
                {
                    string newPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txtNewPassword.Text.Trim(), "md5");

                    query.Password = newPassword;

                    db.SubmitChanges();

                    lblResultPass.ForeColor = Color.Green;
                    lblResultPass.Text = "کلمه عبور جدید با موفقیت ثبت شد";
                }
            }

        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, "کاربران سایت");
            Response.Redirect("Error.aspx", false);
        }

    }
}