using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using Newtonsoft.Json;

/// <summary>
/// Summary description for ProductGroupWs2
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class ProductGroupWs2 : System.Web.Services.WebService
{

    [WebMethod (EnableSession = true)]
    public bool SetVisibility(long id, bool visibility)
    {
        try
        {
            var group2 = new ProductGroupClass2();

            bool result = group2.SetVisibility(id, visibility);

            return result;
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return false;
        }
    }

    [WebMethod (EnableSession = true)]
    public string GetData(bool fromSite)
    {
        if (!fromSite)
        {
            if (GlobalFunction.CheckModulePermission("show") == false)
            {
                return null;
            }
        }       

        try
        {
            var group2 = new ProductGroupClass2();

            var query = group2.SelectAll();

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
    public bool Insert(ProductGroupEntity2 productGroupEntity2)
    {
        if (GlobalFunction.CheckModulePermission("insert") == false)
        {
            return false;
        }

        try
        {
            var group2 = new ProductGroupClass2();

            var db = new DataClassesDataContext();

            if (group2.Insert(productGroupEntity2))
            {
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
            var group2 = new ProductGroupClass2();

            var query = group2.SelectOne(id);

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
    public bool Update(ProductGroupEntity2 productGroupEntity2)
    {
        if (GlobalFunction.CheckModulePermission("update") == false)
        {
            return false;
        }

        try
        {
            var group2 = new ProductGroupClass2();

            group2.Update(productGroupEntity2);

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
            var group2 = new ProductGroupClass2();

            group2.DeleteOne(id);
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
            var group2 = new ProductGroupClass2();

            for (int i = 0; i < idList.Count; i++)
            {
                group2.DeleteOne(Convert.ToInt64(idList[i]));
            }
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
        }

    }

    [WebMethod (EnableSession = true)]
    public string SelectAllFromOneGroup(long id, bool fromSite)
    {
        if (!fromSite)
        {
            if (GlobalFunction.CheckModulePermission("show") == false)
            {
                return null;
            }
        }
      
        try
        {
            var group2 = new ProductGroupClass2();

            var query = group2.SelectAllFromOneGroup(id);

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
}
