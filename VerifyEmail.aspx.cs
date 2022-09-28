using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VerifyEmail : System.Web.UI.Page
{
    static string userEmaill;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Request.QueryString["email"] == null || Request.QueryString["guid"] == null)
            {
                Response.Redirect("~/Default.aspx", false);
            }


            string email = Request.QueryString["email"];
            string guid = Request.QueryString["guid"];

            var webUser = new MapinoWs();

            if (webUser.AuthenticationEmail(email, guid))
            {

                lblResult.ForeColor = Color.Green;
                lblResult.Text = "نام کاربری شما فعال گردید";

                var db = new DataClassesDataContext();

                var query = (from t in db.WebUserTables
                    where t.Email == email
                    select t).SingleOrDefault();

                if (query!=null)
                {
                    Session["WebName"] = query.Name;

                    Session["WebUsername"] = email;

                    Session["WebUserId"] = query.Id;
                }

                

                Response.Redirect("Map.aspx", false);

              
            }
            else
            {
                lblResult.ForeColor = Color.Red;
                lblResult.Text = "ایمیل شما معتبر نمی باشد";
            }
        }
        catch (InvalidOperationException ex)
        {
            //Response.Redirect("~/Default.aspx", false);
        }

    }

}