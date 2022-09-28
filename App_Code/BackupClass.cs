using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BackupClass
/// </summary>
public class BackupClass
{
    public BackupClass()
    {
       
    }

    public bool BackupData(string path)
    {


        SqlConnection conn = new SqlConnection();

        SqlConnectionStringBuilder SSB =
            new SqlConnectionStringBuilder(
                ConfigurationManager.ConnectionStrings["TerendCmsDBConnectionString"].ConnectionString);

        conn.ConnectionString = ConfigurationManager.ConnectionStrings["TerendCmsDBConnectionString"].ConnectionString;

        try
        {
            conn.Open();

            string dbname = SSB.InitialCatalog;

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            dbname = cmd.Connection.Database.ToString();

            string queryBK = "BACKUP DATABASE [" + dbname + "] TO DISK ='" + path + 
                             FarsiLibrary.Utils.PersianDate.Now.Year+ "-" +
                             FarsiLibrary.Utils.PersianDate.Now.Month + "-" +
                             FarsiLibrary.Utils.PersianDate.Now.Day + "-" +
                             FarsiLibrary.Utils.PersianDate.Now.Hour + "-" +
                             FarsiLibrary.Utils.PersianDate.Now.Minute + "-" +
                             FarsiLibrary.Utils.PersianDate.Now.Second +
                             "' WITH INIT, SKIP, CHECKSUM";

            SqlCommand cmdBK = new SqlCommand(queryBK, conn);

            cmdBK.ExecuteNonQuery();
            conn.Close();

            return true;
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return false;
        }
        finally
        {
            conn.Close();
        }
    }

    public bool RestoreData(string path)
    {

        SqlConnection conn = new SqlConnection();

        SqlConnectionStringBuilder SSB =
            new SqlConnectionStringBuilder(
                ConfigurationManager.ConnectionStrings["TerendCmsDBConnectionString"].ConnectionString);

        conn.ConnectionString = ConfigurationManager.ConnectionStrings["TerendCmsDBConnectionString"].ConnectionString;

        try
        {
            conn.Open();

            string dbname= SSB.InitialCatalog;

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            dbname = cmd.Connection.Database.ToString();

            string Alter1 = @"ALTER DATABASE [" + dbname + "] SET Single_User WITH Rollback Immediate";
            SqlCommand Alter1Cmd = new SqlCommand(Alter1, conn);
            Alter1Cmd.ExecuteNonQuery();

            string queryBK = "use master restore DATABASE [" + dbname + "] from DISK ='" + path +
                             "' WITH RECOVERY,REPLACE";

            SqlCommand cmdBK = new SqlCommand(queryBK, conn);

            cmdBK.ExecuteNonQuery();

            string Alter2 = @"ALTER DATABASE [" + dbname + "] SET Multi_User";
            SqlCommand Alter2Cmd = new SqlCommand(Alter2, conn);
            Alter2Cmd.ExecuteNonQuery();
            conn.Close();

            return true;
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return false;
        }
        finally
        {
            conn.Close();
        }
    }

    public bool Insert(BackupEntity backupEntity)
    {
        try
        {
            var db = new DataClassesDataContext();
            var backup = new BackupTable();

            backup.Date = backupEntity.Date;
            backup.UserID = backupEntity.UserID;
            backup.Path = backupEntity.Path;
            backup.Description = backupEntity.Description;


            db.BackupTables.InsertOnSubmit(backup);
            db.SubmitChanges();
        
            return true;
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return false;
        }
    }

    public string DeleteOne(Int64 id)
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = (from t in db.BackupTables
                         where t.Id == id
                         select t).Single();

            string oldUrl = query.Path;

            db.BackupTables.DeleteOnSubmit(query);
            db.SubmitChanges();

            return oldUrl;
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return null;
        }
    }

    public BackupTable SelectOne(long id)
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = (from t in db.BackupTables
                where t.Id == id
                select t).Single();

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

            var query = from t in db.BackupTables
                join user in db.UserTables on t.UserID equals user.Id
                select new
                {
                    t.Id,
                    Date = FarsiLibrary.Utils.PersianDateConverter.ToPersianDate(t.Date.Value).ToString(),
                    t.Description,
                    user.Username
                };

            return query;
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return null;
        }
    }
}