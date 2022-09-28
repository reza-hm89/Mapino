using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.Services;
using Newtonsoft.Json;
using  System.IO;

/// <summary>
/// Summary description for WebsiteSettingWs
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class WebsiteSettingWs : System.Web.Services.WebService
{

    [WebMethod (EnableSession = true)]
    public void Insert(WebsiteSettingEntity websiteSettingEntity)
    {
        if (GlobalFunction.CheckModulePermission("insert") == false)
        {
            return;
        }

        try
        {

            var web = new WebsiteSettingClass();

            var db = new DataClassesDataContext();

            var query = (from t in db.WebsiteSettingTables
                where t.LanguageID == websiteSettingEntity.LanguageID
                select t).Count();

            if (query == 0)
            {
              
                web.Insert(websiteSettingEntity);
            }

            else
            {
                Update(websiteSettingEntity);
            }

        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
        }
    }

    [WebMethod (EnableSession = true)]
    public string BindRecordToEdit(long languageId)
    {
        if (GlobalFunction.CheckModulePermission("show") == false)
        {
            return null;
        }

        try
        {
            var web = new WebsiteSettingClass();

            var query = web.SelectOne(languageId);

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
    public void Update(WebsiteSettingEntity websiteSettingEntity)
    {
        if (GlobalFunction.CheckModulePermission("update") == false)
        {
            return ;
        }

        try
        {
            var web = new WebsiteSettingClass();

            var db = new DataClassesDataContext();

            var query = (from t in db.WebsiteSettingTables
                where t.LanguageID == websiteSettingEntity.LanguageID
                select t).FirstOrDefault();

            if (query != null)
            {
                if (query.HeaderImage1 != websiteSettingEntity.HeaderImage1)
                {
                    if (File.Exists(Server.MapPath("~/Mngmnt/images/" + query.HeaderImage1)))
                    {
                        File.Delete(Server.MapPath("~/Mngmnt/images/" + query.HeaderImage1));
                    }

                 //   websiteSettingEntity.HeaderImage1 = GlobalVariable.CurrentTime + websiteSettingEntity.HeaderImage1;
                }

                if (query.HeaderImage2 != websiteSettingEntity.HeaderImage2)
                {
                    if (File.Exists(Server.MapPath("~/Mngmnt/images/" + query.HeaderImage2)))
                    {
                        File.Delete(Server.MapPath("~/Mngmnt/images/" + query.HeaderImage2));
                    }

                   // websiteSettingEntity.HeaderImage2 = GlobalVariable.CurrentTime + websiteSettingEntity.HeaderImage2;
                }

                if (query.FooterImage1 != websiteSettingEntity.FooterImage1)
                {
                    if (File.Exists(Server.MapPath("~/Mngmnt/images/" + query.FooterImage1)))
                    {
                        File.Delete(Server.MapPath("~/Mngmnt/images/" + query.FooterImage1));
                    }

                  //  websiteSettingEntity.FooterImage1 = GlobalVariable.CurrentTime + websiteSettingEntity.FooterImage1;
                }

                if (query.FooterImage2 != websiteSettingEntity.FooterImage2)
                {
                    if (File.Exists(Server.MapPath("~/Mngmnt/images/" + query.FooterImage2)))
                    {
                        File.Delete(Server.MapPath("~/Mngmnt/images/" + query.FooterImage2));
                    }

                  //  websiteSettingEntity.FooterImage2 = GlobalVariable.CurrentTime + websiteSettingEntity.FooterImage2;
                }

                if (query.Logo1 != websiteSettingEntity.Logo1)
                {
                    if (File.Exists(Server.MapPath("~/Mngmnt/images/" + query.Logo1)))
                    {
                        File.Delete(Server.MapPath("~/Mngmnt/images/" + query.Logo1));
                    }

                  //  websiteSettingEntity.Logo1 = GlobalVariable.CurrentTime + websiteSettingEntity.Logo1;
                }
                if (query.Logo2 != websiteSettingEntity.Logo2)
                {
                    if (File.Exists(Server.MapPath("~/Mngmnt/images/" + query.Logo2)))
                    {
                        File.Delete(Server.MapPath("~/Mngmnt/images/" + query.Logo2));
                    }

                  //  websiteSettingEntity.Logo2 = GlobalVariable.CurrentTime + websiteSettingEntity.Logo2;
                }
            }

            web.Update(websiteSettingEntity);

        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
        }
    }
}
