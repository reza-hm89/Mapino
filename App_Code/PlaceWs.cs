using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using Newtonsoft.Json;
using  System.IO;

/// <summary>
/// Summary description for PlaceWs
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class PlaceWs : System.Web.Services.WebService {

    [WebMethod(EnableSession = true)]
    public bool SetVisibility(long id, bool visibility)
    {
        try
        {
            var place = new PlaceClass();

            bool result = place.SetVisibility(id, visibility);

            return result;
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return false;
        }
    }

    [WebMethod (EnableSession = true)]
    public bool SetVerify(long id, bool verify)
    {
        try
        {
            var place = new PlaceClass();

            bool result = place.SetVerify(id, verify);

            return result;
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return false;
        }
    }

    [WebMethod (EnableSession = true)]
    public string CheckUrl(long id)
    {
        var place = new PlaceClass();

        string url = place.ReturnUrl(id);

        var jsSettings = new JsonSerializerSettings
        {
            ReferenceLoopHandling = ReferenceLoopHandling.Ignore,
            PreserveReferencesHandling = PreserveReferencesHandling.None
        };

        return JsonConvert.SerializeObject(url, Formatting.None, jsSettings);
    }

    [WebMethod(EnableSession = true)]
    public string SelectAllByGroup1(long id)
    {

        if (GlobalFunction.CheckModulePermission("show") == false)
        {
            return null;
        }

        try
        {
            var place = new PlaceClass();

            var query = place.SelectAllByGroup1(id);

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
    public string SelectAllByGroup2(long id)
    {

        if (GlobalFunction.CheckModulePermission("show") == false)
        {
            return null;
        }

        try
        {
            var place = new PlaceClass();

            var query = place.SelectAllByGroup2(id);

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
    public string SelectAllByRegion(long id)
    {

        if (GlobalFunction.CheckModulePermission("show") == false)
        {
            return null;
        }

        try
        {
            var place = new PlaceClass();

            var query = place.SelectAllByRegion(id);

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
    public string SelectAllByCity(long id)
    { 

        if (GlobalFunction.CheckModulePermission("show") == false)
        {
            return null;
        }

        try
        {
            var place = new PlaceClass();

            var query = place.SelectAllByCity(id);

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
    public string SelectAllByTitle(string title)
    {

        //if (GlobalFunction.CheckModulePermission("show") == false)
        //{
        //    return null;
        //}

        try
        {
            var place = new PlaceClass();

            var query = place.SelectAllByTitle(title);

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
    public string GetData()
    {

        if (GlobalFunction.CheckModulePermission("show") == false)
        {
            return null;
        }

        try
        {
            var place = new PlaceClass();

            var query = place.SelectAll();

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
    public bool Insert(PlaceEntity placeEntity)
    {
        if (GlobalFunction.CheckModulePermission("insert") == false)
        {
            return false;
        }

        try
        {
            var place = new PlaceClass();

            var db = new DataClassesDataContext();

            placeEntity.RegDate = DateTime.Now;
            placeEntity.UserIp = GlobalVariable.GetIp();
            placeEntity.UserID = (long) Session["UserId"];
            placeEntity.WebUserID = -1;
            placeEntity.NumberOfView = 0;
            placeEntity.Rate = 0;
            placeEntity.PackageID = 0;

            if (placeEntity.Logo != "")
            {
                placeEntity.Logo = GlobalVariable.CurrentTime + placeEntity.Logo;
            }
         
            long placeId = place.Insert(placeEntity);

            if (Directory.Exists(Server.MapPath("~/Mngmnt/images/")))
            {

                var dirInfo = new DirectoryInfo(Server.MapPath("~/Mngmnt/upload/"));

                FileInfo[] fileInfo = dirInfo.GetFiles();

                foreach (FileInfo info in fileInfo)
                {
                    var placePicEntity = new PlacePicEntity();

                    placePicEntity.PlaceID = placeId;
                    placePicEntity.Image = info.Name;

                    place.InsertPic(placePicEntity);

                    info.CopyTo(Server.MapPath("~/Mngmnt/images/") + info.Name, false);

                    info.Delete();
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

    [WebMethod(EnableSession = true)]
    public bool InsertForWebUser(PlaceEntity placeEntity)
    {

        try
        {
            var place = new PlaceClass();

            placeEntity.RegDate = DateTime.Now;
            placeEntity.UserIp = GlobalVariable.GetIp();
            placeEntity.WebUserID = Convert.ToInt64(Session["webUserId"].ToString());
            placeEntity.UserID = -1;
            placeEntity.NumberOfView = 0;
            placeEntity.Rate = 0;
            placeEntity.PackageID = 0;
            placeEntity.Visibility = false;
            placeEntity.Verify = false;

            if (placeEntity.Logo != "")
            {
                placeEntity.Logo = GlobalVariable.CurrentTime + placeEntity.Logo;
            }

            place.Insert(placeEntity);

            //if (Directory.Exists(Server.MapPath("~/Mngmnt/images/")))
            //{

            //    var dirInfo = new DirectoryInfo(Server.MapPath("~/Mngmnt/upload/"));

            //    FileInfo[] fileInfo = dirInfo.GetFiles();

            //    foreach (FileInfo info in fileInfo)
            //    {
            //        var placePicEntity = new PlacePicEntity();

            //        placePicEntity.PlaceID = placeId;
            //        placePicEntity.Image = info.Name;

            //        place.InsertPic(placePicEntity);

            //        info.CopyTo(Server.MapPath("~/Mngmnt/images/") + info.Name, false);

            //        info.Delete();
            //    }
            //}

            return true;
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, "کاربر سایت");
            return false;
        }


    }

    [WebMethod (EnableSession = true)]
    public string BindRecordToEdit(Int64 id, bool fromSite)
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
            var place = new PlaceClass();

            var query = place.SelectOne(id);

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
    public string SelectPicsFromOne(Int64 id)
    {
        if (GlobalFunction.CheckModulePermission("show") == false)
        {
            return null;
        }

        try
        {
            var place = new PlaceClass();

            var query = place.SelectPicsFromOne(id);

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
    public bool Update(PlaceEntity placeEntity)
    {
        if (GlobalFunction.CheckModulePermission("update") == false)
        {
            return false;
        }

        try
        {
            var place = new PlaceClass();

            if (place.ReturnUrl(placeEntity.Id) == placeEntity.Logo)
            {
                place.Update(placeEntity);
            }
            else
            {
                string newUrl = GlobalVariable.CurrentTime + placeEntity.Logo;

                placeEntity.Logo = newUrl;

                string oldUrl = place.Update(placeEntity);

                if (newUrl != oldUrl && File.Exists(Server.MapPath("~/Mngmnt/images/" + oldUrl)))
                {
                    File.Delete(Server.MapPath("~/Mngmnt/images/" + oldUrl));
                }
            }

            if (Directory.Exists(Server.MapPath("~/Mngmnt/images/")))
            {
                var dirInfo = new DirectoryInfo(Server.MapPath("~/Mngmnt/upload/"));

                FileInfo[] fileInfo = dirInfo.GetFiles();

                foreach (FileInfo info in fileInfo)
                {
                    var placePicEntity = new PlacePicEntity();

                    placePicEntity.PlaceID = placeEntity.Id;
                    placePicEntity.Image = info.Name;

                    place.InsertPic(placePicEntity);

                    info.CopyTo(Server.MapPath("~/Mngmnt/images/") + info.Name, false);

                    info.Delete();
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
            var place = new PlaceClass();

            var db = new DataClassesDataContext();

            var query = from t in db.PlacePicTables
                        where t.PlaceID == id
                        select t;

            foreach (var placePic in query)
            {
                if (File.Exists(Server.MapPath("~/Mngmnt/images/") + placePic.Image))
                {
                    File.Delete(Server.MapPath("~/Mngmnt/images/") + placePic.Image);
                }
            }

            string logoUrl = place.DeleteOne(id);

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

    [WebMethod(EnableSession = true)]
    public void DeleteImage(long id)
    {
        if (GlobalFunction.CheckModulePermission("delete") == false)
        {
            return;
        }

        try
        {
            var place = new PlaceClass();

            var url = place.DeleteOnePic(id);

            if (File.Exists(Server.MapPath("~/Mngmnt/images/") + url))
            {
                File.Delete(Server.MapPath("~/Mngmnt/images/") + url);
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
            var place = new PlaceClass();

            var db = new DataClassesDataContext();

            for (int i = 0; i < idList.Count; i++)
            {
             
                var query = from t in db.PlacePicTables
                            where t.PlaceID == Convert.ToInt64(idList[i])
                            select t;

                foreach (var placePic in query)
                {
                    if (File.Exists(Server.MapPath("~/Mngmnt/images/") + placePic.Image))
                    {
                        File.Delete(Server.MapPath("~/Mngmnt/images/") + placePic.Image);
                    }
                }

                string imageUrl = place.DeleteOne(Convert.ToInt64(idList[i]));

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
