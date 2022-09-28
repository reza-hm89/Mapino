using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Mngmnt_Place : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         if (Session["username"] == null)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "redirect", "window.location.href='login.aspx';", true);
            Response.Redirect("login.aspx",true);
        }

        if (!IsPostBack)
        {

            if (Request.QueryString["tid"] != null)
            {
                // IMPORTANT! Make sure to validate uploaded file contents, size, etc. to prevent scripts being uploaded into your web app directory

                if (!Directory.Exists(Server.MapPath("~/Mngmnt/upload/")))
                {
                    Directory.CreateDirectory(Server.MapPath("~/Mngmnt/upload/"));

                    foreach (string s in Request.Files)
                    {
                        HttpPostedFile file = Request.Files[s];
                        int fileSizeInBytes = file.ContentLength;
                        string fileName = GlobalVariable.GetCurrentTime() + file.FileName; // Request.Headers["X-File-Name"];

                        if (!string.IsNullOrEmpty(fileName))
                        {
                            string filename =
                                Server.MapPath("~/Mngmnt/upload/" + fileName);

                            file.SaveAs(filename);
                        }
                    }
                }
                else
                {
                    foreach (string s in Request.Files)
                    {
                        HttpPostedFile file = Request.Files[s];
                        int fileSizeInBytes = file.ContentLength;
                        string fileName = GlobalVariable.GetCurrentTime() + file.FileName; // Request.Headers["X-File-Name"];

                        if (!string.IsNullOrEmpty(fileName))
                        {
                            string filename =
                                Server.MapPath("~/Mngmnt/upload/" + fileName);

                            file.SaveAs(filename);
                        }
                    }
                }
            }
        }
    }
}