using System;
using System.Collections.Generic;
using System.Data.Linq.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ProductGroup
/// </summary>
public class ProductGroupClass1
{
    public ProductGroupClass1()
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

            var productGroup = (from t in db.ProductGroupTable1s
                         where t.Id == id
                         select t).Single();

            productGroup.Visibility = visibility;

            db.SubmitChanges();

            return true;
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return false;
        }
    }

    public bool Insert(ProductGroupEntity1 productGroupEntity1)
    {
        try
        {
            var db = new DataClassesDataContext();

            var productGroup = new ProductGroupTable1();

            productGroup.Name = productGroupEntity1.Name;
            productGroup.Priority = productGroupEntity1.Priority;
            productGroup.Link = productGroupEntity1.Link;
            productGroup.OpenLink = productGroupEntity1.OpenLink;           
            productGroup.Visibility = productGroupEntity1.Visibility;
            productGroup.LanguageID = productGroupEntity1.LanguageID;
            productGroup.Image = productGroupEntity1.Image;
            productGroup.Description = productGroupEntity1.Description;

            db.ProductGroupTable1s.InsertOnSubmit(productGroup);
            db.SubmitChanges();
           
            return true;
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return false;
        }
    }

    public string Update(ProductGroupEntity1 productGroupEntity1)
    {
        try
        {
            var db = new DataClassesDataContext();

            var productGroup = (from t in db.ProductGroupTable1s
                where t.Id == productGroupEntity1.Id
                select t).Single();

            string oldImage = productGroup.Image;


            productGroup.Name = productGroupEntity1.Name;
            productGroup.Priority = productGroupEntity1.Priority;
            productGroup.Link = productGroupEntity1.Link;
            productGroup.OpenLink = productGroupEntity1.OpenLink;
            productGroup.LanguageID = productGroupEntity1.LanguageID;
            productGroup.Image = productGroupEntity1.Image;
            productGroup.Description = productGroupEntity1.Description;

            db.SubmitChanges();

            return oldImage;

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

            var query = (from t in db.ProductGroupTable1s
                where t.Id == id
                select t).Single();

            string oldImage = query.Image;

            db.ProductGroupTable1s.DeleteOnSubmit(query);
            db.SubmitChanges();

            return oldImage;
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

            var query = from t in db.ProductGroupTable1s
                select new {t.Id, t.Name, t.Link, t.OpenLink, t.Priority, t.Visibility, t.LanguageID, t.Image, t.Description};

            return query;
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

            var query = from t in db.ProductGroupTable1s
                where t.Id == id
                select new { t.Id, t.Name, t.Link, t.OpenLink, t.Priority, t.Visibility, t.LanguageID, t.Image, t.Description};

            return query;
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return null;
        }
    }

    public string ReturnImageUrl(Int64 id)
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = (from t in db.ProductGroupTable1s
                         where t.Id == id
                         select t).Single();

            return query.Image;
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return null;
        }
    }
}