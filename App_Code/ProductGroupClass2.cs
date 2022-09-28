using System;
using System.Collections.Generic;
using System.Data.Linq.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ProductGroup
/// </summary>
public class ProductGroupClass2
{
    public ProductGroupClass2()
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

            var productGroup = (from t in db.ProductGroupTable2s
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

    public bool Insert(ProductGroupEntity2 productGroupEntity2)
    {
        try
        {
            var db = new DataClassesDataContext();

            var productGroup = new ProductGroupTable2();

            productGroup.Name = productGroupEntity2.Name;
            productGroup.Parent = productGroupEntity2.Parent;
            productGroup.Link = productGroupEntity2.Link;
            productGroup.OpenLink = productGroupEntity2.OpenLink;
            productGroup.Priority = productGroupEntity2.Priority;
            productGroup.Visibility = productGroupEntity2.Visibility;
            productGroup.LanguageID = productGroupEntity2.LanguageID;
            productGroup.GroupID1 = productGroupEntity2.GroupID1;
         
            db.ProductGroupTable2s.InsertOnSubmit(productGroup);
            db.SubmitChanges();

           
            return true;
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return false;
        }
    }

    public bool Update(ProductGroupEntity2 productGroupEntity2)
    {
        try
        {
            var db = new DataClassesDataContext();

            var productGroup = (from t in db.ProductGroupTable2s
                                where t.Id == productGroupEntity2.Id
                                select t).Single();

            if (productGroup != null)
            {
                productGroup.Name = productGroupEntity2.Name;
                productGroup.Parent = productGroupEntity2.Parent;
                productGroup.Link = productGroupEntity2.Link;
                productGroup.OpenLink = productGroupEntity2.OpenLink;            
                productGroup.LanguageID = productGroupEntity2.LanguageID;
                productGroup.GroupID1 = productGroupEntity2.GroupID1;
                productGroup.Priority = productGroupEntity2.Priority;

                db.SubmitChanges();

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

    public void DeleteOne(Int64 id)
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = (from t in db.ProductGroupTable2s
                         where t.Id == id
                         select t).Single();

            db.ProductGroupTable2s.DeleteOnSubmit(query);
            db.SubmitChanges();
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
        }
    }

    public IEnumerable<object> SelectAll()
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = from t in db.ProductGroupTable2s
                join y in db.ProductGroupTable1s on t.GroupID1 equals y.Id
                join u in db.ProductGroupTable2s on t.Parent equals u.Id into temp
                from u1 in temp.DefaultIfEmpty()
                orderby t.Priority ascending
                select new {t.Id, t.Name, Parent = u1.Name, t.GroupID1, t.Visibility, ParentName = y.Name};

            return query;
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return null;
        }
    }

    public IEnumerable<object> SelectAllFromOneGroup(long id)
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = from t in db.ProductGroupTable2s
                where t.GroupID1 == id
                select new {t.Id,t.Name,t.Parent};

            return query;
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return null;
        }
    }
  

    public IEnumerable<object> SelectOne(Int64 groupId)
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = from t in db.ProductGroupTable2s
                where t.Id == groupId
                select new { t.Id, t.Name, t.GroupID1, t.Parent, t.Link, t.OpenLink, t.Priority, t.LanguageID};


            return query;
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return null;
        }
    }   
}