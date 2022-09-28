using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services;
using Newtonsoft.Json;

/// <summary>
/// Summary description for RegionWs
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class RegionWs : System.Web.Services.WebService {

    [WebMethod (EnableSession = true)]
    public bool SetVisibility(long id, bool visibility)
    {
        try
        {
            var region = new RegionClass();

            bool result = region.SetVisibility(id, visibility);

            return result;
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return false;
        }
    }

    [WebMethod (EnableSession = true)]
    public string GetRegions(bool fromSite)
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
            var region = new RegionClass();

            var query = region.SelectRegions();

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
    public string GetCities(long id, bool fromSite)
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
            var region = new RegionClass();

            var query = region.SelectCities(id);

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
            var region = new RegionClass();

            var query = region.SelectAll();

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
    public bool Insert(RegionEntity regionEntity)
    {
        if (GlobalFunction.CheckModulePermission("insert") == false)
        {
            return false;
        }

        try
        {
            var region = new RegionClass();

            if (region.Insert(regionEntity))
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
            var region = new RegionClass();

            var query = region.SelectOne(id);

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
    public bool Update(RegionEntity regionEntity)
    {
        if (GlobalFunction.CheckModulePermission("update") == false)
        {
            return false;
        }

        try
        {
            var region = new RegionClass();

            region.Update(regionEntity);

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
            var region = new RegionClass();

            region.DeleteOne(id);
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
            var region = new RegionClass();

            for (int i = 0; i < idList.Count; i++)
            {
                region.DeleteOne(Convert.ToInt64(idList[i]));
            }
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
        }

    }
}
