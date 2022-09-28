<%@ WebHandler Language="C#" Class="SettingHandler" %>

using System;
using System.Web;

public class SettingHandler : IHttpHandler {

    public void ProcessRequest(HttpContext context)
    {
        if (context.Request.Files.Count > 0)
        {
            HttpFileCollection selectedFiles = context.Request.Files;
            for (int i = 0; i < selectedFiles.Count; i++)
            {
                HttpPostedFile postedFile = selectedFiles[i];

                GlobalVariable.CurrentTime = GlobalVariable.GetCurrentTime();

                string fileName = context.Server.MapPath("~/Mngmnt/images/" +  postedFile.FileName);
                postedFile.SaveAs(fileName);
            }
        }

    }
    public bool IsReusable {
        get {
            return false;
        }
    }

}