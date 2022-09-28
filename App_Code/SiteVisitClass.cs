using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Linq.SqlClient;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for SiteVisitClass
/// </summary>
public class SiteVisitClass
{
    public SiteVisitClass()
    {

    }

    private static bool CheckDate()
    {
        var db = new DataClassesDataContext();
        var query = (from t in db.SiteVisitTables
            where t.Date == DateTime.Now
            select t).SingleOrDefault();

        if (query == null)
        {
            return false;
        }
        else
        {
            return true;
        }
    }

    public static void SeeSite()
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = (from t in db.SiteVisitTables
                where t.Date == DateTime.Now
                select t).SingleOrDefault();

            if (CheckDate())
            {
                if (query != null)
                {
                    query.View++;
                    db.SubmitChanges();
                }
            }
            else
            {
                var siteVisit = new SiteVisitTable();

                siteVisit.View = 1;
                siteVisit.Date = DateTime.Now;

                db.SiteVisitTables.InsertOnSubmit(siteVisit);

            }
            db.SubmitChanges();
        }
        catch
        {
        }      
    }

    public static void Visitor(System.Web.HttpBrowserCapabilities browser)
    {
        var db = new DataClassesDataContext();

        var query = from t in db.VisitorTables
                    where t.Date == DateTime.Now
                    select t;

        string userIp = GlobalVariable.GetIp();

        foreach (var user in query)
        {
            if (user.Ip == userIp)
            {
                return;
            }
        }

        var visitor = new VisitorTable();
        visitor.Ip = userIp;
        visitor.Date = DateTime.Now;
        visitor.BrowserName = browser.Browser;
        visitor.BrowserVersion = browser.Version;
        visitor.Platform = browser.Platform;

        db.VisitorTables.InsertOnSubmit(visitor);
        db.SubmitChanges();
    }
    public static List<long> GetState()
    {
        var db = new DataClassesDataContext();


        var query1 = from t in db.SiteVisitTables
            select t;

        long sum = 0;
        foreach (var t in query1)
        {
            sum += t.View.Value;
        }

        var query2 = (from t in db.SiteVisitTables
            where t.Date == DateTime.Now
            select new {t.View}).SingleOrDefault();

        var query3 = (from t in db.SiteVisitTables
            where t.Date == DateTime.Now.AddDays(-1)
            select new {t.View}).SingleOrDefault();

        var query4 = from t in db.SiteVisitTables
            where t.Date.Value.Month == DateTime.Now.Month
            select new {t.View};

        long sum1 = 0;
        foreach (var t in query4)
        {
            sum1 += t.View.Value;
        }

        List<long> list = new List<long>();

        list.Add(sum);
        if (query2 != null)
        {
            list.Add(query2.View.Value);
        }
        else
        {
            list.Add(0);
        }
        if (query3 != null)
        {
            list.Add(query3.View.Value);
        }
        else
        {
            list.Add(0);
        }
        list.Add(sum1);

        return list;
    }

    public static List<long> GetVisitor()
    {
        var db = new DataClassesDataContext();


        var query1 = (from t in db.VisitorTables
                      select t).Count();

        var query2 = (from t in db.VisitorTables
                      where t.Date == DateTime.Now
                      select t).Count();

        var query3 = (from t in db.VisitorTables
                      where t.Date == DateTime.Now.AddDays(-1)
                      select t).Count();

        var query4 = (from t in db.VisitorTables
                      where t.Date.Value.Month == DateTime.Now.Month
                      select t).Count();


        List<long> list = new List<long>();

        list.Add(query1);
        list.Add(query2);
        list.Add(query3);
        list.Add(query4);

        return list;
    }

}