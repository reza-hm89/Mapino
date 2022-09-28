using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services;
using Newtonsoft.Json;

/// <summary>
/// Summary description for ProductGroupWs1
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class ProductGroupWs1 : System.Web.Services.WebService {

    [WebMethod (EnableSession = true)]
    public string CheckUrl(long id)
    {
        var group1 = new ProductGroupClass1();

        string url = group1.ReturnImageUrl(id);

        var jsSettings = new JsonSerializerSettings
        {
            ReferenceLoopHandling = ReferenceLoopHandling.Ignore,
            PreserveReferencesHandling = PreserveReferencesHandling.None
        };

        return JsonConvert.SerializeObject(url, Formatting.None, jsSettings);
    }

    [WebMethod (EnableSession = true)]
    public bool SetVisibility(long id, bool visibility)
    {
        try
        {
            var group1 = new ProductGroupClass1();

            bool result = group1.SetVisibility(id, visibility);

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
            var group1 = new ProductGroupClass1();

            var query = group1.SelectAll();

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
    public bool Insert(ProductGroupEntity1 productGroupEntity1)
    {
        if (GlobalFunction.CheckModulePermission("insert") == false)
        {
            return false;
        }

        try
        {
            var group1 = new ProductGroupClass1();

            productGroupEntity1.Image = GlobalVariable.CurrentTime + productGroupEntity1.Image;

            if (group1.Insert(productGroupEntity1))
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
            var group1 = new ProductGroupClass1();

            var query = group1.SelectOne(id);

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
    public bool Update(ProductGroupEntity1 productGroupEntity1)
    {

        if (GlobalFunction.CheckModulePermission("update") == false)
        {
            return false;
        }

        try
        {
            var group1 = new ProductGroupClass1();

            if (group1.ReturnImageUrl(productGroupEntity1.Id) == productGroupEntity1.Image)
            {
                group1.Update(productGroupEntity1);
            }
            else
            {
                productGroupEntity1.Image = GlobalVariable.CurrentTime + productGroupEntity1.Image;
                string oldUrl = group1.Update(productGroupEntity1);

                if (productGroupEntity1.Image != oldUrl && File.Exists(Server.MapPath("~/Mngmnt/images/" + oldUrl)))
                {
                    File.Delete(Server.MapPath("~/Mngmnt/images/" + oldUrl));
                }
            }
           
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
            var group1 = new ProductGroupClass1();

            string logoUrl = group1.DeleteOne(id);

            if (logoUrl != null)
            {
                if (File.Exists(Server.MapPath("~/Mngmnt/images/" + logoUrl)))
                {
                    File.Delete(Server.MapPath("~/Mngmnt/images/" + logoUrl));
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
            var group1 = new ProductGroupClass1();

            for (int i = 0; i < idList.Count; i++)
            {
                string imageUrl = group1.DeleteOne(Convert.ToInt64(idList[i]));

                string url = Server.MapPath("~/Mngmnt/images/" + imageUrl);

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
