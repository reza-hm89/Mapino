using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for RegionClass
/// </summary>
public class RegionClass
{
	public RegionClass()
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

            var region = (from t in db.RegionTables
                         where t.Id == id
                         select t).Single();

            region.Visibility = visibility;

            db.SubmitChanges();

            return true;
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return false;
        }
    }

    public bool Insert(RegionEntity regionEntity)
    {
        try
        {
            var db = new DataClassesDataContext();
            var region = new RegionTable();

            region.Name = regionEntity.Name;
            region.Parent = regionEntity.Parent;
            region.Position = regionEntity.Position;
            region.Priority = regionEntity.Priority;
            region.Visibility = regionEntity.Visibility;
            region.LanguageID = regionEntity.LanguageID;
            
            db.RegionTables.InsertOnSubmit(region);
            db.SubmitChanges();

            region.Priority = region.Id;
            db.SubmitChanges();

            return true;
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return false;
        }
    }

    public void Update(RegionEntity regionEntity)
    {
        try
        {
            var db = new DataClassesDataContext();
            var region = (from t in db.RegionTables
                        where t.Id == regionEntity.Id
                        select t).Single();

            if (region != null)
            {
                region.Name = regionEntity.Name;
                region.Parent = regionEntity.Parent;
                region.Position = regionEntity.Position;
                //region.Priority = regionEntity.Priority;         
                region.LanguageID = regionEntity.LanguageID;
                
                db.SubmitChanges();
            }
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
        }
    }

    public void DeleteOne(Int64 id)
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = (from t in db.RegionTables
                         where t.Id == id
                         select t).Single();

            if (query != null)
            {
                db.RegionTables.DeleteOnSubmit(query);
                db.SubmitChanges();
            }

        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
        }
    }

    public void DeleteChildren(Int64 id)
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = from t in db.RegionTables
                        where t.Id == id
                        select t;

            db.RegionTables.DeleteAllOnSubmit(query);
            db.SubmitChanges();
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
        }
    }

    public IEnumerable<object> SelectOne(Int64 id)
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = from t in db.RegionTables
                        where t.Id == id
                        select t;

            return query;
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return null;
        }
    }

    public IEnumerable<object> SelectChildren(Int64 id)
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = from t in db.RegionTables
                        where t.Parent == id
                        select t;

            return query;
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

            var query = from t in db.RegionTables
                join y in db.RegionTables on t.Parent equals y.Id into temp
                from y2 in temp.DefaultIfEmpty()

                select
                    new {t.Id, t.Name, ParentId = t.Parent, ParentName = y2.Name, t.Visibility, t.Position, t.Priority};

            
            return query;
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return null;
        }
    }

    public IEnumerable<object> SelectRegions()
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = from t in db.RegionTables
                        where t.Parent == -1
                        select
                            new { t.Id, t.Name, ParentId = t.Parent, t.Visibility, t.Position, t.Priority };


            return query;
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return null;
        }
    }

    public IEnumerable<object> SelectCities(long regionId)
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = from t in db.RegionTables
                        where t.Parent==regionId                      
                        select
                            new { t.Id, t.Name, ParentId = t.Parent, t.Visibility, t.Position, t.Priority };


            return query;
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return null;
        }
    }

    public bool HaveChildren(long id)
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = (from t in db.RegionTables
                         where t.Parent == id
                         select t).Single();

            if (query != null)
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
}