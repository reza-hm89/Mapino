using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.Services;
using Newtonsoft.Json;

/// <summary>
/// Summary description for ErrorWs
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class MapinoWs : System.Web.Services.WebService
{
    [WebMethod(EnableSession = true)]
    public string LoadCacheCity()
    {
        try
        {
           
            var httpCookie = HttpContext.Current.Request.Cookies["CacheCity"];
            if (httpCookie != null)
            {
                string result = httpCookie["position"].ToString();

                var jsSettings = new JsonSerializerSettings
                {
                    ReferenceLoopHandling = ReferenceLoopHandling.Ignore,
                    PreserveReferencesHandling = PreserveReferencesHandling.None
                };

                return JsonConvert.SerializeObject(result, Formatting.None, jsSettings);
            }

            return null;
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, "کاربر سایت");
            return null;
        }
    }

    [WebMethod(EnableSession = true)]
    public void CacheCity(string position)
    {
        try
        {
            HttpCookie cookie = new HttpCookie("CacheCity");
            cookie.Values.Add("position", position);
            
            cookie.Expires = DateTime.Now.AddYears(1);
            HttpContext.Current.Response.Cookies.Set(cookie);
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, "کاربر سایت");
            return;
        }
    }

    [WebMethod(EnableSession = true)]
    public string SelectAllRegions()
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = from t in db.RegionTables                        
                        select
                            new { t.Id, t.Name, t.Parent, t.Position };


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

    [WebMethod(EnableSession = true)]
    public string SelectAllPlaceFromGroup1(long groupId1)
    {
        try
        {
            var db = new DataClassesDataContext();


            var query = from t in db.PlaceTables
                join grp in db.ProductGroupTable1s on t.GroupID1 equals grp.Id
                where t.GroupID1 == groupId1 && t.Verify == true && t.Visibility == true
                select new {t.Id, t.Name, t.Logo, t.Tel, t.Email, t.Address, t.Position, GroupName = grp.Name};

            var jsSettings = new JsonSerializerSettings
            {
                ReferenceLoopHandling = ReferenceLoopHandling.Ignore,
                PreserveReferencesHandling = PreserveReferencesHandling.None
            };

            return JsonConvert.SerializeObject(query, Formatting.None, jsSettings);
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, "کاربران سایت");
            return null;
        }
    }

    [WebMethod(EnableSession = true)]
    public string SelectAllPlaceFromGroup2(long groupId1, long groupId2)
    {
        try
        {
            var db = new DataClassesDataContext();

            if (groupId2 != -1)
            {
                var query = from t in db.PlaceTables
                    join grp in db.ProductGroupTable2s on t.GroupID2 equals grp.Id
                    where t.GroupID2 == groupId2 && t.Verify == true && t.Visibility == true
                            select new {t.Id, t.Name, t.Logo, t.Tel, t.Email, t.Address, t.Position, GroupName = grp.Name};

                var jsSettings = new JsonSerializerSettings
                {
                    ReferenceLoopHandling = ReferenceLoopHandling.Ignore,
                    PreserveReferencesHandling = PreserveReferencesHandling.None
                };

                return JsonConvert.SerializeObject(query, Formatting.None, jsSettings);
            }
            else
            {
                var query = from t in db.PlaceTables
                            join grp in db.ProductGroupTable1s on t.GroupID1 equals grp.Id
                            where t.GroupID1 == groupId1
                            select new { t.Id, t.Name, t.Logo, t.Tel, t.Email, t.Address, t.Position, GroupName = grp.Name };

                var jsSettings = new JsonSerializerSettings
                {
                    ReferenceLoopHandling = ReferenceLoopHandling.Ignore,
                    PreserveReferencesHandling = PreserveReferencesHandling.None
                };

                return JsonConvert.SerializeObject(query, Formatting.None, jsSettings);
            }
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, "کاربران سایت");
            return null;
        }
    }

    [WebMethod(EnableSession = true)]
    public string SelectOnePlace(long id)
    {
        try
        {
            var db = new DataClassesDataContext();


            var query = from t in db.PlaceTables
                join grp in db.ProductGroupTable1s on t.GroupID1 equals grp.Id
                where t.Id == id && t.Verify == true && t.Visibility == true
                select new {t.Id, t.Name, t.Logo, t.Tel, t.Email, t.Address, t.Position, GroupName = grp.Name};

            var jsSettings = new JsonSerializerSettings
            {
                ReferenceLoopHandling = ReferenceLoopHandling.Ignore,
                PreserveReferencesHandling = PreserveReferencesHandling.None
            };

            return JsonConvert.SerializeObject(query, Formatting.None, jsSettings);
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, "کاربران سایت");
            return null;
        }
    }

    [WebMethod(EnableSession = true)]
    public string SelectAllFromOneGroup1(long groupId1)
    {
        try
        {
            var db = new DataClassesDataContext();
            var query = from t in db.ProductGroupTable2s
                        where t.GroupID1 == groupId1
                        select t;

            var jsSettings = new JsonSerializerSettings
            {
                ReferenceLoopHandling = ReferenceLoopHandling.Ignore,
                PreserveReferencesHandling = PreserveReferencesHandling.None
            };

            return JsonConvert.SerializeObject(query, Formatting.None, jsSettings);
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, "کاربران سایت");
            return null;
        }
    }

    [WebMethod(EnableSession = true)]
    public void Logout()
    {
        try
        {
            Session["WebUsername"] = null;
            Session["WebName"] = null;
            Session["WebUserId"] = null;
            HttpCookie cookie = new HttpCookie("SaveWebUser");
            cookie.Expires = DateTime.Now.AddDays(-1);

            HttpContext.Current.Response.Cookies.Add(cookie);

            Session.Clear();
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, "کاربران سایت");
        }
    }

    [WebMethod(EnableSession = true)]
    public bool AuthenticationEmail(string username, string code)
    {
        try
        {
            var db = new DataClassesDataContext();
            var query = (from t in db.WebUserTables
                where t.Username == username &&
                      t.VerifyCode == code &&
                      t.RegDate.Value.AddHours(t.VerifyExpire.Value) > DateTime.Now
                select t).SingleOrDefault();

            if (query != null)
            {
                query.VerifyEmail = true;
                query.VerifyCode = "";
                query.VerifyExpire = 0;

                db.SubmitChanges();

                return true;
            }
            return false;
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, "کاربران سایت");
            return false;
        }
    }

    [WebMethod(EnableSession = true)]
    public bool AuthenticationMobile(string username, string code)
    {
        try
        {
            var db = new DataClassesDataContext();
            var query = (from t in db.WebUserTables
                where t.Username == username &&
                      t.VerifyCode == code &&
                      t.RegDate.Value.AddHours(t.VerifyExpire.Value) > DateTime.Now
                select t).SingleOrDefault();

            if (query != null)
            {
                query.VerifyMobile = true;
                query.VerifyCode = "";
                query.VerifyExpire = 0;

                db.SubmitChanges();

                return true;
            }
            return false;
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, "کاربران سایت");
            return false;
        }
    }

    public void RememberMe(long userId, string username, string name, string family)
    {
        try
        {
            HttpCookie cookie = new HttpCookie("SaveWebUser");
            cookie.Values.Add("WebUsername", username);
            cookie.Values.Add("WebUserId", userId.ToString());
            cookie.Values.Add("WebName", name);
            cookie.Expires = DateTime.Now.AddYears(1);
            HttpContext.Current.Response.Cookies.Set(cookie);
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, "کاربران سایت");
        }
    }

    [WebMethod(EnableSession = true)]
    public bool CheckLogin()
    {
        try
        {
            if (Session["webUserId"] != null)
            {
                return true;
            }
            return false;
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, "کاربران سایت");
            return false;
        }

    }

    [WebMethod(EnableSession = true)]
    public string CheckRememberMe()
    {
        try
        {

            if (HttpContext.Current.Request.Cookies["SaveWebUser"] != null)
                if (HttpContext.Current.Request.Cookies["SaveWebUser"]["webUsername"] != null)
                {
                    object[] names = new object[3];

                    names[0] = HttpContext.Current.Request.Cookies["SaveWebUser"]["WebName"].ToString();
                    names[1] = HttpContext.Current.Request.Cookies["SaveWebUser"]["webUsername"].ToString();
                    names[2] = HttpContext.Current.Request.Cookies["SaveWebUser"]["WebUserId"].ToString();

                    Session["WebName"] = names[0];
                    Session["webUsername"] = names[1];
                    Session["webUserId"] = names[2];

                    var jsSettings = new JsonSerializerSettings
                    {
                        ReferenceLoopHandling = ReferenceLoopHandling.Ignore,
                        PreserveReferencesHandling = PreserveReferencesHandling.None
                    };

                    return JsonConvert.SerializeObject(names, Formatting.None, jsSettings);
                }

            if (Session["WebName"] != null)
            {
                object[] names = new object[3];

                names[0] = Session["WebName"].ToString() + " خوش آمدید";
                names[1] = Session["webUsername"];
                names[2] = Session["webUserId"];

                var jsSettings = new JsonSerializerSettings
                {
                    ReferenceLoopHandling = ReferenceLoopHandling.Ignore,
                    PreserveReferencesHandling = PreserveReferencesHandling.None
                };

                return JsonConvert.SerializeObject(names, Formatting.None, jsSettings);


            }

            return null;
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, "کاربران سایت");
            return null;
        }

    }

    [WebMethod(EnableSession = true)]
    public int Login(string username, string pass, bool rememberMe)
    {
        try
        {
            string password = FormsAuthentication.HashPasswordForStoringInConfigFile(pass, "md5");

            var db = new DataClassesDataContext();

            var query = (from t in db.WebUserTables
                         where t.Username == username && t.Password == password
                         select t).FirstOrDefault();

            if (query == null)
                return -1;

            query = (from t in db.WebUserTables
                     where t.Username == username && t.Password == password &&
                     (t.VerifyEmail==true || t.VerifyMobile==true)
                     select t).Single();

            if (query == null)
            { return 0; }               
          
            Session["WebUsername"] = query.Username;

            if (string.IsNullOrEmpty(query.Name))
            {
                Session["WebName"] = query.Username;
            }
            else
            {
                Session["WebName"] = query.Name;
            }

            Session["webUserId"] = Convert.ToInt64(query.Id);

            if (rememberMe)
            {
                RememberMe(query.Id, query.Username, query.Name, query.Family);
            }

            return 1;

        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, "کاربران سایت");
            return -1;
        }
    }

    [WebMethod(EnableSession = true)]
    public bool InsertMessage(MessageEntity messageEntity, bool fromSite)
    {
        if (!fromSite)
        {
            if (GlobalFunction.CheckModulePermission("show") == false)
            {
                return false;
            }
        }

        try
        {
            var message = new MessageClass();

            messageEntity.UserIp = GlobalVariable.GetIp();
            messageEntity.SendDate = DateTime.Now;
            //messageEntity.UserID = (long)Session["UserId"];

            if (string.IsNullOrEmpty(messageEntity.UserIp))
            {
                return false;
            }

            if (message.Insert(messageEntity))
            {
                return true;
            }

            return false;
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, "کاربر سایت");
            return false;
        }
    }
}