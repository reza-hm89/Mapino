using System;
using System.Collections.Generic;
using System.EnterpriseServices;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.Services;
using Newtonsoft.Json;

/// <summary>
/// Summary description for WebUserWs
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class WebUserWs : System.Web.Services.WebService {

    [WebMethod(EnableSession = true)]
    public string CheckUrl(long id)
    {
        var webUser = new WebUserClass();

        string url = webUser.ReturnUrl(id);

        var jsSettings = new JsonSerializerSettings
        {
            ReferenceLoopHandling = ReferenceLoopHandling.Ignore,
            PreserveReferencesHandling = PreserveReferencesHandling.None
        };

        return JsonConvert.SerializeObject(url, Formatting.None, jsSettings);
    }

    [WebMethod(EnableSession = true)]
    public string ReportMonthly()
    {
        var webUser = new WebUserClass();

        var registers = webUser.ReportRegistrationInMonth();


        string result = "{";

        foreach (var register in registers)
            result += "'" + register.Year + "': {" +
                      "label: '" + register.Year + "'," +
                      "data: [" + "[" + 1 + "," + register.Month[0] + "]," +
                      "[" + 2 + " ," + register.Month[1] + "]," +
                      "[" + 3 + " ," + register.Month[2] + "]," +
                      "[" + 4 + " ," + register.Month[3] + "]," +
                      "[" + 5 + " ," + register.Month[4] + "]," +
                      "[" + 6 + " ," + register.Month[5] + "]," +
                      "[" + 7 + " ," + register.Month[6] + "]," +
                      "[" + 8 + " ," + register.Month[7] + "]," +
                      "[" + 9 + " ," + register.Month[8] + "]," +
                      "[" + 10 + " ," + register.Month[9] + "]," +
                      "[" + 11 + " ," + register.Month[10] + "]," +
                      "[" + 12 + " ," + register.Month[11] + "]" + "]},";
        //result +=  "'" + register.year + "': {" +
        //              "label: '" + register.year + "'," +
        //              "data: [" + "['فروردین' ," + register.months[0] + "]," +
        //              "['اردیبهشت' ," + register.months[1] + "]," +
        //              "['خرداد' ," + register.months[2] + "]," +
        //              "['تیر' ," + register.months[3] + "]," +
        //              "['مرداد' ," + register.months[4] + "]," +
        //              "['شهریور' ," + register.months[5] + "]," +
        //              "['مهر' ," + register.months[6] + "]," +
        //              "['آبان' ," + register.months[7] + "]," +
        //              "['آذر' ," + register.months[8] + "]," +
        //              "['دی' ," + register.months[9] + "]," +
        //              "['بهمن' ," + register.months[10] + "]," +
        //              "['اسفند' ," + register.months[11] + "]" + "]},";

        result = result.Substring(0, result.Length - 1);

        result += "}";

        return result;
    }

    [WebMethod (EnableSession = true)]
    public bool CheckLogin()
    {
        if (Session["webUsername"] == null)
        {
            return false;
        }

        return true;
    }

    [WebMethod(EnableSession = true)]    
    public int Login(string webUserName, string pass, bool rememberMe)
    {

        string password = FormsAuthentication.HashPasswordForStoringInConfigFile(pass, "md5");

        var db = new DataClassesDataContext();
        var query = (from t in db.WebUserTables
                     where t.Username == webUserName && t.Password == password
                     select t).FirstOrDefault();

        if (query == null)
            return -1;

        query = (from t in db.WebUserTables
                 where t.Username == webUserName && t.Password == password
                 select t).Single();

        if (query == null)
            return 0;

        Session["webUsername"] = query.Username;
        Session["webUserId"] = Convert.ToInt64(query.Id);

        db.SubmitChanges();      

        RememberMe(webUserName, pass, rememberMe);

        return 1;
    }

    public void RememberMe(string username, string password, bool rememberMe)
    {
        if (rememberMe == true)
        {
            HttpCookie cookie = new HttpCookie("SaveWebUser");
            cookie.Values.Add("webUsername", username);
            cookie.Values.Add("webUserPassword", password);
            cookie.Expires = DateTime.Now.AddYears(1);
            HttpContext.Current.Response.Cookies.Set(cookie);
        }
        else
        {
            //HttpContext.Current.Request.Cookies.Clear();
            HttpCookie myCookie = new HttpCookie("SaveWebUser");
            myCookie.Expires = DateTime.Now.AddDays(-1d);
            HttpContext.Current.Response.Cookies.Add(myCookie);
        }
    }

    [WebMethod(EnableSession = true)]
    public string CheckRememberMe()
    {
        if (HttpContext.Current.Request.Cookies["SaveWebUser"] != null)
            if (HttpContext.Current.Request.Cookies["SaveWebUser"]["webUsername"] != null && HttpContext.Current.Request.Cookies["SaveWebUser"]["webUserPassword"] != null)
            {
                object[] names = new object[2];

                names[0] = HttpContext.Current.Request.Cookies["SaveWebUser"]["webUsername"].ToString();
                names[1] = HttpContext.Current.Request.Cookies["SaveWebUser"]["webUserPassword"].ToString();

                var jsSettings = new JsonSerializerSettings
                {
                    ReferenceLoopHandling = ReferenceLoopHandling.Ignore,
                    PreserveReferencesHandling = PreserveReferencesHandling.None
                };

                return JsonConvert.SerializeObject(names, Formatting.None, jsSettings);
            }
        return null;
    }

    [WebMethod(EnableSession = true)]
    public void Logout()
    {
        if (Session["webUsername"] == null)
        {
            return;
        }
        var db = new DataClassesDataContext();
        var query = (from t in db.WebUserTables
                     where t.Username == Session["webUsername"].ToString()
                     select t).Single();

        if (query != null)
        {
            //  db.SubmitChanges();
        }      

        Session.RemoveAll();

        Session["webUsername"] = null;
        Session["webUserId"] = -1;
    }

    [WebMethod(EnableSession = true)]
    public bool ExistEmail(string email)
    {
        var webUser = new WebUserClass();

        return webUser.ExistEmail(email.Trim());
    }

    [WebMethod(EnableSession = true)]
    public bool ExistMobile(string mobile)
    {
        var webUser = new WebUserClass();

        return webUser.ExistMobile(mobile.Trim());
    }

    [WebMethod (EnableSession = true)]
    public bool ExistUser(long webUserId)
    {
        var webUser = new WebUserClass();

        if (webUser.SelectOne(webUserId) == null)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    [WebMethod(EnableSession = true)]
    public bool ChangePassword(WebUserEntity webUserEntity, string password, string newPassword)
    {
        var db = new DataClassesDataContext();

        var query = (from t in db.WebUserTables
                     where t.Id == webUserEntity.Id
                     select t).Single();

        if (query != null)
        {
            password = FormsAuthentication.HashPasswordForStoringInConfigFile(password, "md5");

            if (query.Password.ToLower() == password.ToLower())
            {
                query.Password = FormsAuthentication.HashPasswordForStoringInConfigFile(newPassword, "md5");
                db.SubmitChanges();

                return true;
            }
        }

        return false;
    }

    [WebMethod (EnableSession = true)]
    public string GetData()
    {
        if (GlobalFunction.CheckModulePermission("show") == false)
        {
            return null;
        }

        try
        {
            var webUsers = new WebUserClass();

            var query = webUsers.SelectAll();

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
    public string GetDataByKind(byte kind)
    {
        if (GlobalFunction.CheckModulePermission("show") == false)
        {
            return null;
        }

        try
        {
            var webUsers = new WebUserClass();

            var query = webUsers.SelectAllByKind(kind);

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
    public bool Insert(WebUserEntity webUserEntity, bool fromSite)
    {
        if (!fromSite)
        {
            if (GlobalFunction.CheckModulePermission("insert") == false)
            {
                return false;
            }
        }
      
        try
        {
            var webUser = new WebUserClass();

            webUserEntity.Mobile = GlobalFunction.ChangeNumbers(webUserEntity.Mobile);

            webUserEntity.RegDate = DateTime.Now;
            webUserEntity.VerifyEmail = false;
            webUserEntity.VerifyMobile = false;
            webUserEntity.Ip = GlobalVariable.GetIp();

            webUserEntity.Password = FormsAuthentication.HashPasswordForStoringInConfigFile(webUserEntity.Password, "md5");

            if (webUser.Insert(webUserEntity)!=-1)
            {
                string username;
                if (webUserEntity.Mobile!="")
                {
                    username = webUserEntity.Mobile;
                }
                else
                {
                    username = webUserEntity.Email;
                }               

                return true;
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
    public string BindRecordToEdit(Int64 id)
    {
        if (GlobalFunction.CheckModulePermission("show") == false)
        {
            return null;
        }

        try
        {
            var webUser = new WebUserClass();

            var query = webUser.SelectOne(id);

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
    public bool Update(WebUserEntity webUserEntity)
    {
        if (GlobalFunction.CheckModulePermission("update") == false)
        {
            return false;
        }

        try
        {
            var webUser = new WebUserClass();

            webUser.Update(webUserEntity);

            return true;
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
            var webUser = new WebUserClass();

            webUser.DeleteOne(id);
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
            var webUser = new WebUserClass();

            for (int i = 0; i < idList.Count; i++)
            {
                string imageUrl = webUser.DeleteOne(Convert.ToInt64(idList[i]));
            }
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
        }
    }   
}
