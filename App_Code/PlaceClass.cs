using System;
using System.Collections.Generic;
using System.Data.Linq.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for PlaceClass
/// </summary>
public class PlaceClass
{
	public PlaceClass()
	{
		
	}   

    public bool SetVisibility(long id, bool visibility)
    {
        if (GlobalFunction.CheckModulePermission("update") == false)
        {
            return false;
        }

        try
        {
            var db = new DataClassesDataContext();

            var place = (from t in db.PlaceTables
                         where t.Id == id
                         select t).Single();

            place.Visibility = visibility;

            db.SubmitChanges();

            return true;
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return false;
        }
    }

    public bool SetVerify(long id, bool verify)
    {
        if (GlobalFunction.CheckModulePermission("update") == false)
        {
            return false;
        }

        try
        {
            var db = new DataClassesDataContext();

            var place = (from t in db.PlaceTables
                where t.Id == id
                select t).Single();

            place.Verify = verify;
        
            db.SubmitChanges();
            
            return true;
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return false;
        }
    }

    public void SetRate(long id, byte rate)
    {

    }

    public void SetView(long id)
    {

    }

    public void SetPackage(long id, byte packageId)
    {

    }

    public long Insert(PlaceEntity placeEntity)
    {
        try
        {
            var db = new DataClassesDataContext();
            var place = new PlaceTable();

            place.Name = placeEntity.Name;
            place.GroupID1 = placeEntity.GroupID1;
            place.Logo = placeEntity.Logo;
            place.Banner = placeEntity.Banner;
            place.Owner = placeEntity.Owner;
            place.Description = placeEntity.Description;
            place.Tel = placeEntity.Tel;
            place.Fax = placeEntity.Fax;
            place.Mobile = placeEntity.Mobile;
            place.Email = placeEntity.Email;
            place.Website = placeEntity.Website;
            place.Address = placeEntity.Address;
            place.Position = placeEntity.Position;
            place.Facilities = placeEntity.Facilities;
            place.Services = placeEntity.Services;
            place.WorkTime = placeEntity.WorkTime;
            place.RegDate = placeEntity.RegDate;
            place.UserIp = placeEntity.UserIp;
            place.UserID = placeEntity.UserID;
            place.WebUserID = placeEntity.WebUserID;
            place.NumberOfView = placeEntity.NumberOfView;
            place.Rate = placeEntity.Rate;
            place.Verify = placeEntity.Verify;
            place.Visibility = placeEntity.Visibility;
            place.PackageID = placeEntity.PackageID;
            place.GroupID2 = placeEntity.GroupID2;
            place.CityID = placeEntity.CityID;
            place.RegionID = placeEntity.RegionID;

            db.PlaceTables.InsertOnSubmit(place);
            db.SubmitChanges();

            return place.Id;
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return -1;
        }
    }

    public bool InsertPic(PlacePicEntity placePicEntity)
    {
        try
        {
            var db = new DataClassesDataContext();
            var placePic = new PlacePicTable();

            placePic.Image = placePicEntity.Image;
            placePic.Alt = placePicEntity.Alt;
            placePic.PlaceID = placePicEntity.PlaceID;
          
            db.PlacePicTables.InsertOnSubmit(placePic);
            db.SubmitChanges();

            return true;
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return false;
        }
    }

    public string Update(PlaceEntity placeEntity)
    {
        try
        {
            var db = new DataClassesDataContext();
          
            var place = (from t in db.PlaceTables
                        where t.Id == placeEntity.Id
                        select t).Single();

       
            string oldUrl = place.Logo;

            place.Name = placeEntity.Name;
            place.GroupID1 = placeEntity.GroupID1;
            place.Logo = placeEntity.Logo;
            place.Banner = placeEntity.Banner;
            place.Owner = placeEntity.Owner;
            place.Description = placeEntity.Description;
            place.Tel = placeEntity.Tel;
            place.Fax = placeEntity.Fax;
            place.Mobile = placeEntity.Mobile;
            place.Email = placeEntity.Email;
            place.Website = placeEntity.Website;
            place.Address = placeEntity.Address;
            place.Position = placeEntity.Position;
            place.Facilities = placeEntity.Facilities;
            place.Services = placeEntity.Services;
            place.WorkTime = placeEntity.WorkTime;          
            place.UserIp = placeEntity.UserIp;
            place.UserID = placeEntity.UserID;
            place.WebUserID = placeEntity.WebUserID;
            place.GroupID2 = placeEntity.GroupID2;
            place.CityID = placeEntity.CityID;
            place.RegionID = placeEntity.RegionID;

            db.SubmitChanges();

            return oldUrl;
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());           
            return null;
        }
    }

    public string DeleteOne(Int64 id)
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = (from t in db.PlaceTables
                         where t.Id == id
                         select t).Single();

            if (query != null)
            {

               string imageUrl = query.Logo;

                db.PlaceTables.DeleteOnSubmit(query);
                db.SubmitChanges();

                return query.Logo;
            }
           
            return null;
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());            
            return "";
        }
    }

    public string DeleteOnePic(long id)
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = (from t in db.PlacePicTables
                         where t.Id == id
                         select t).Single();

            string oldUrl = query.Image;

            db.PlacePicTables.DeleteOnSubmit(query);
            db.SubmitChanges();

            return oldUrl;
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return null;
        }
    }

    public IEnumerable<object> SelectAll()
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = from t in db.PlaceTables
                        join g2 in db.ProductGroupTable2s on t.GroupID2 equals g2.Id into g2temp
                        from g22 in g2temp.DefaultIfEmpty()
                        join g1 in db.ProductGroupTable1s on g22.GroupID1 equals g1.Id into g1temp
                        from g11 in g1temp.DefaultIfEmpty()                      
                        orderby g11.Id ascending
                        where g22.Id!=-1
                        select
                            new
                            {
                                t.Id,
                                t.Logo,
                                t.Name,
                                t.Tel,
                                t.Address,
                                t.Verify,
                                GroupName1 = g11.Name,
                                GroupName2 = g22.Name,
                                t.Position,
                                t.Visibility
                            };

            var query2 = from t in db.PlaceTables
                         join g1 in db.ProductGroupTable1s on t.GroupID1 equals g1.Id                         
                         where t.GroupID2 == -1
                         orderby g1.Id ascending
                         select
                             new
                             {
                                 t.Id,
                                 t.Logo,
                                 t.Name,
                                 t.Tel,
                                 t.Address,
                                 t.Verify,
                                 GroupName1 = g1.Name,
                                 GroupName2 = "",
                                 t.Position,
                                 t.Visibility
                             };

            var result = query.Union(query2);
            return result;

        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return null;
        }
    }

    public IEnumerable<object> SelectAllByGroup1(long id)
    {
        try
        {
            if (id != -1)
            {
                var db = new DataClassesDataContext();

                var query = from t in db.PlaceTables
                            join y in db.ProductGroupTable1s on t.GroupID1 equals y.Id into temp
                            from grp1 in temp.DefaultIfEmpty()
                            where t.GroupID1 == id
                            select new { t.Id, t.Logo, t.Name, t.Tel, t.Address, t.Verify, t.Visibility, GroupName = grp1.Name, t.Position };

                return query;
            }
            else
            {
                var db = new DataClassesDataContext();

                var query = from t in db.PlaceTables
                            join y in db.ProductGroupTable1s on t.GroupID1 equals y.Id into temp
                            from grp1 in temp.DefaultIfEmpty()                           
                            select new { t.Id, t.Logo, t.Name, t.Tel, t.Address, t.Verify, t.Visibility, GroupName = grp1.Name, t.Position };

                return query;
            }

        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return null;
        }
    }

    public IEnumerable<object> SelectAllByGroup2(long id)
    {
        try
        {
            if (id!=-1)
            {
                var db = new DataClassesDataContext();

                var query = from t in db.PlaceTables
                            join y in db.ProductGroupTable2s on t.GroupID2 equals y.Id into temp
                            from grp2 in temp.DefaultIfEmpty()
                            where t.GroupID2 == id
                            select new { t.Id, t.Logo, t.Name, t.Tel, t.Address, t.Verify, GroupName = grp2.Name, t.Position };

                return query;
            }
            else
            {
                var db = new DataClassesDataContext();

                var query = from t in db.PlaceTables
                            join y in db.ProductGroupTable2s on t.GroupID2 equals y.Id into temp
                            from grp2 in temp.DefaultIfEmpty()
                            where t.GroupID1 == id
                            select new { t.Id, t.Logo, t.Name, t.Tel, t.Address, t.Verify, GroupName = grp2.Name, t.Position };

                return query;
            }
            
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return null;
        }
    }

    public IEnumerable<object> SelectAllByRegion(long id)
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = from t in db.PlaceTables
                        where t.RegionID == id
                        select t;

            return query;
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return null;
        }
    }

    public IEnumerable<object> SelectAllByCity(long id)
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = from t in db.PlaceTables
                        where t.CityID == id
                        select t;

            return query;
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return null;
        }
    }

    public IEnumerable<object> SelectAllByTitle(string titles)
    {
        try
        {
            var db = new DataClassesDataContext();

            var titleList = titles.Split(' ');

            return titleList.Select(item => (from t in db.PlaceTables where SqlMethods.Like(t.Name, item) select t)).Cast<PlaceTable>().ToList();
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return null;
        }
    }

    public IEnumerable<object> SelectOne(Int64 id)
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = from t in db.PlaceTables
                where t.Id == id
                select
                    new
                    {
                        t.Id,
                        t.Name,
                        t.GroupID1,
                        t.GroupID2,
                        t.Logo,
                        t.Banner,
                        t.Owner,
                        t.Description,
                        t.Tel,
                        t.Fax,
                        t.Mobile,
                        t.Email,
                        t.Website,
                        t.Address,
                        t.Position,
                        t.Facilities,
                        t.Services,
                        t.WorkTime,
                        t.RegDate,
                        t.UserID,
                        t.UserIp,
                        t.WebUserID,
                        t.NumberOfView,
                        t.Rate,
                        t.Verify,
                        t.Visibility,
                        t.PackageID,
                        t.CityID,
                        t.RegionID
                    };

            return query;
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return null;
        }
    }

    public IEnumerable<object> SelectPicsFromOne(Int64 id)
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = from t in db.PlacePicTables
                where t.PlaceID == id
                select t;

            return query;
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return null;
        }
    }

    public string ReturnUrl(Int64 id)
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = (from t in db.PlaceTables
                         where t.Id == id
                         select t).Single();


            return query.Logo;
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return null;
        }
    }
}