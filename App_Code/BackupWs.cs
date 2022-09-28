using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services;
using Newtonsoft.Json;

/// <summary>
/// Summary description for BackupWs
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class BackupWs : System.Web.Services.WebService
{

    [WebMethod (EnableSession = true)]
    public string GetData()
    {
        if (GlobalFunction.CheckModulePermission("show") == false)
        {
            return null;
        }

        try
        {
            var backup = new BackupClass();

            var query = backup.SelectAll();

            var jsSettings = new JsonSerializerSettings
            {
                ReferenceLoopHandling = ReferenceLoopHandling.Ignore,
                PreserveReferencesHandling = PreserveReferencesHandling.None
            };

            return JsonConvert.SerializeObject(query, Formatting.None, jsSettings);
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return null;
        }
    }
  
    [WebMethod (EnableSession = true)]
    public bool Insert(BackupEntity backupEntity)
    {
        if (GlobalFunction.CheckModulePermission("insert") == false)
        {
            return false;
        }

        try
        {
            var backup = new BackupClass();

            backupEntity.Date = DateTime.Now;
            backupEntity.UserID = (long) Session["UserId"];
            backupEntity.Path = FarsiLibrary.Utils.PersianDate.Now.Year + "-" +
                                FarsiLibrary.Utils.PersianDate.Now.Month + "-" +
                                FarsiLibrary.Utils.PersianDate.Now.Day + "-" +
                                FarsiLibrary.Utils.PersianDate.Now.Hour + "-" +
                                FarsiLibrary.Utils.PersianDate.Now.Minute + "-" +
                                FarsiLibrary.Utils.PersianDate.Now.Second;

            if (backup.BackupData(Server.MapPath("~/Backups/")))
            {
                if (backup.Insert(backupEntity))
                {
                    return true;
                }
            }

            return false;
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return false;
        }
    }

    [WebMethod (EnableSession = true)]
    public bool BindRecordToEdit(Int64 id)
    {
        if (GlobalFunction.CheckModulePermission("show") == false)
        {
            return false;
        }

        try
        {
            var backup = new BackupClass();

            var query = backup.RestoreData(Server.MapPath("~/Backups/" + backup.SelectOne(id).Path));

            return query;
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return false;
        }
    }

    [WebMethod (EnableSession = true)]
    public void DeleteRecord(long id)
    {
        if (GlobalFunction.CheckModulePermission("delete") == false)
        {
            return;
        }

        try
        {
            var backup = new BackupClass();

            string logoUrl = backup.DeleteOne(id);

            if (logoUrl != null)
            {
                if (File.Exists(Server.MapPath("~/Backups/" + logoUrl)))
                {
                    File.Delete(Server.MapPath("~/Backups/" + logoUrl));
                }
            }
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
        }
    }

    [WebMethod (EnableSession = true)]
    public void DeleteMultiRecord(List<string> idList)
    {
        if (GlobalFunction.CheckModulePermission("delete") == false)
        {
            return;
        }

        try
        {
            var backup = new BackupClass();

            for (int i = 0; i < idList.Count; i++)
            {
                string imageUrl = backup.DeleteOne(Convert.ToInt64(idList[i]));

                string url = Server.MapPath("~/Backups/" + imageUrl);

                if (imageUrl != "")
                {
                    if (File.Exists(url))
                    {
                        File.Delete(url);
                    }
                }
            }
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
        }
    }
}
