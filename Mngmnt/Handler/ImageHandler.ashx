<%@ WebHandler Language="C#" Class="ImageHandler" %>

using System;
using System.IO;
using System.Linq;
using System.Web;

public class ImageHandler : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        GlobalVariable.CurrentTime = null;

        if (context.Request.Files.Count > 0)
        {
            HttpFileCollection selectedFiles = context.Request.Files;

            for (int i = 0; i < selectedFiles.Count; i++)
            {
                HttpPostedFile postedFile = selectedFiles[i];

                GlobalVariable.CurrentTime = GlobalVariable.GetCurrentTime();

                string[] validExtensions = { ".jpg", ".jpeg", ".png" };

                if (!string.IsNullOrEmpty(postedFile.FileName))
                {
                    var fileExtension = Path.GetExtension(postedFile.FileName);

                    if (validExtensions.Contains(fileExtension))
                    {
                        string fileName = context.Server.MapPath("~/Mngmnt/images/" + GlobalVariable.CurrentTime + postedFile.FileName);
                        postedFile.SaveAs(fileName);                       
                    }
                    else
                    {
                        context.Response.Write("<script> alert('asd'); </script>");
                    }
                }
            }
        }       
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}