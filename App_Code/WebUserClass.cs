using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for WebUserClass
/// </summary>
public class WebUserClass
{
    public WebUserClass()
    {

    }

    public long Insert(WebUserEntity webUserEntity)
    {
        try
        {
            var db = new DataClassesDataContext();
            var user = new WebUserTable();

            user.Name = webUserEntity.Name;
            user.Family = webUserEntity.Family;
            user.Father = webUserEntity.Father;
            user.CodeMeli = webUserEntity.CodeMeli;
            user.ShomareSh = webUserEntity.ShomareSh;
            user.BirthhDay = webUserEntity.BirthhDay;
            user.Tel = webUserEntity.Tel;
            user.Mobile = webUserEntity.Mobile;
            user.Email = webUserEntity.Email;
            user.Address = webUserEntity.Address;
            user.ZipCode = webUserEntity.ZipCode;
            user.TelOwnerName = webUserEntity.TelOwnerName;
            user.Username = webUserEntity.Username;
            user.Password = webUserEntity.Password;
            user.Ip = webUserEntity.Ip;
            user.RegDate = webUserEntity.RegDate;
            user.VerifyEmail = webUserEntity.VerifyEmail;
            user.VerifyMobile = webUserEntity.VerifyMobile;
            user.VerifyCode = webUserEntity.VerifyCode;
            user.VerifyExpire = webUserEntity.VerifyExpire;
            user.Kind = webUserEntity.Kind;
            user.Gender = webUserEntity.Gender;
            user.ImageUrl = webUserEntity.ImageUrl;
            user.AccountID = webUserEntity.AccountID;
            user.ParentID = webUserEntity.ParentID;

            db.WebUserTables.InsertOnSubmit(user);
            db.SubmitChanges();

            return user.Id;
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return -1;
        }
    }

    public string Update(WebUserEntity webUserEntity)
    {
        try
        {
            var db = new DataClassesDataContext();
            var user = (from t in db.WebUserTables
                        where t.Id == webUserEntity.Id
                        select t).Single();

            if (user != null)
            {
                user.Name = webUserEntity.Name;
                user.Family = webUserEntity.Family;
                user.Father = webUserEntity.Father;
                user.CodeMeli = webUserEntity.CodeMeli;
                user.ShomareSh = webUserEntity.ShomareSh;
                user.BirthhDay = webUserEntity.BirthhDay;
                user.Tel = webUserEntity.Tel;
                user.Mobile = webUserEntity.Mobile;
                user.Email = webUserEntity.Email;
                user.Address = webUserEntity.Address;
                user.ZipCode = webUserEntity.ZipCode;
                user.TelOwnerName = webUserEntity.TelOwnerName;
                user.Kind = webUserEntity.Kind;
                user.Gender = webUserEntity.Gender;
                user.ImageUrl = webUserEntity.ImageUrl;
                user.AccountID = webUserEntity.AccountID;
                user.ParentID = webUserEntity.ParentID;

                db.SubmitChanges();

            }

            return null;
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return null;
        }
    }

    public string DeleteOne(long id)
    {
        try
        {
            var db = new DataClassesDataContext();
            var user = (from t in db.WebUserTables
                        where t.Id == id
                        select t).Single();

            if (user != null)
            {
                db.WebUserTables.DeleteOnSubmit(user);
                db.SubmitChanges();
            }

            return null;
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return null;
        }
    }

    public IEnumerable<object> SelectOne(long id)
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = from t in db.WebUserTables
                        where t.Id == id
                        join a in db.UserAccountTypeTables on t.AccountID equals a.Id into join1
                        from j1 in join1.DefaultIfEmpty()

                        join b in db.WalletTables on t.Id equals b.UserID into join2
                        from j2 in join2.DefaultIfEmpty()
                            //   select new { t , } ;
                        select new
                        {
                            t.Id,
                            t.Name,
                            t.Family,
                            t.Father,
                            t.CodeMeli,
                            t.ShomareSh,
                            t.BirthhDay,
                            t.Tel,
                            t.Mobile,
                            t.Email,
                            t.Address,
                            t.ZipCode,
                            t.TelOwnerName,
                            t.Username,
                            t.Ip,
                            t.RegDate,
                            t.Kind,
                            t.ImageUrl,
                            t.Gender,
                            AcountName = j1.Name,
                            Balance = j2.Balance
                        };

            return query;
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return null;
        }
    }

    public bool SelectKind(long id)
    {
        var db = new DataClassesDataContext();

        var query = (from t in db.WebUserTables
                     where t.Id == id
                     select t).FirstOrDefault();

        return Convert.ToBoolean(query.Kind);
    }

    public IEnumerable<object> SelectAll()
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = from t in db.WebUserTables
                        select t;

            return query;
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return null;
        }
    }

    public IEnumerable<object> SelectAllByKind(byte kind)
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = from t in db.WebUserTables
                        where t.Kind==kind
                        select t;

            return query;
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return null;
        }
    }
    public bool ExistEmail(string email)
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = (from t in db.WebUserTables
                         where t.Email == email
                         select t).FirstOrDefault();

            if (query == null)
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

    public bool ExistMobile(string mobile)
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = (from t in db.WebUserTables
                         where t.Mobile == mobile
                         select t).FirstOrDefault();

            if (query == null)
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

    public bool ExistUsername(string username)
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = (from t in db.WebUserTables
                         where t.Username == username
                         select t).FirstOrDefault();

            if (query == null)
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

    public bool IsRegisterNoActivate(string username)
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = (from t in db.WebUserTables
                         where t.Username == username && t.VerifyEmail==false && t.VerifyMobile==false
                         select t).FirstOrDefault();

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

    public List<RegisterInMonth> ReportRegistrationInMonth()
    {
        try
        {
            var db = new DataClassesDataContext();

            var minDate = (from t in db.WebUserTables
                           orderby t.RegDate ascending
                           select new { t.RegDate }).FirstOrDefault();

            var maxDate = (from t in db.WebUserTables
                           orderby t.RegDate descending
                           select new { t.RegDate }).FirstOrDefault();


            if (minDate != null && maxDate != null)
            {
                int minYear = minDate.RegDate.Value.Year;
                int maxYear = maxDate.RegDate.Value.Year;

                var monthList = new List<RegisterInMonth>();

                for (int i = minYear; i <= maxYear; i++)
                {
                    var monthly = new RegisterInMonth();

                    monthly.Year = i;

                    var query = from t in db.WebUserTables
                                where t.RegDate.Value.Year == i
                                select new { t.RegDate };

                    foreach (var item in query)
                    {
                        if (item.RegDate.Value.Month == 1)
                        {
                            monthly.Month[0]++;
                        }
                        if (item.RegDate.Value.Month == 2)
                        {
                            monthly.Month[1]++;
                        }
                        if (item.RegDate.Value.Month == 3)
                        {
                            monthly.Month[2]++;
                        }
                        if (item.RegDate.Value.Month == 4)
                        {
                            monthly.Month[3]++;
                        }
                        if (item.RegDate.Value.Month == 5)
                        {
                            monthly.Month[4]++;
                        }
                        if (item.RegDate.Value.Month == 6)
                        {
                            monthly.Month[5]++;
                        }
                        if (item.RegDate.Value.Month == 7)
                        {
                            monthly.Month[6]++;
                        }
                        if (item.RegDate.Value.Month == 8)
                        {
                            monthly.Month[7]++;
                        }
                        if (item.RegDate.Value.Month == 9)
                        {
                            monthly.Month[8]++;
                        }
                        if (item.RegDate.Value.Month == 10)
                        {
                            monthly.Month[9]++;
                        }
                        if (item.RegDate.Value.Month == 11)
                        {
                            monthly.Month[10]++;
                        }
                        if (item.RegDate.Value.Month == 12)
                        {
                            monthly.Month[11]++;
                        }
                    }

                    monthList.Add(monthly);
                }


                return monthList;
            }

            return null;
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

            var query = (from t in db.WebUserTables
                         where t.Id == id
                         select t).Single();

            return query.ImageUrl;
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return null;
        }
    }
}

public class RegisterInMonth
{
    public int Year;
    public int[] Month = new int[12];
}