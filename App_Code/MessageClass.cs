using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for MessageClass
/// </summary>
public class MessageClass
{
	public MessageClass()
	{		
	}

    public bool Insert(MessageEntity messageEntity)
    {
        try
        {
            var db = new DataClassesDataContext();
            var message = new MessageTable();

            message.Name = messageEntity.Name;
            message.Mobile = messageEntity.Mobile;
            message.Email = messageEntity.Email;
            message.Title = messageEntity.Title;
            message.Body = messageEntity.Body;
            message.SendDate = messageEntity.SendDate;
            message.UserIp = messageEntity.UserIp;
            message.UserID = messageEntity.UserID;

            db.MessageTables.InsertOnSubmit(message);
            db.SubmitChanges();
           
            return true;
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

            var query = (from t in db.MessageTables
                         where t.Id == id
                         select t).Single();

            if (query != null)
            {
                db.MessageTables.DeleteOnSubmit(query);
                db.SubmitChanges();
            }

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

            var query = from t in db.MessageTables
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

    public IEnumerable<object> SelectAll()
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = from t in db.MessageTables

                select
                    new
                    {
                        t.Id,
                        t.Name,
                        t.Mobile,
                        t.Email,
                        t.Title,
                        t.Body,
                        SendDate =
                            FarsiLibrary.Utils.PersianDateConverter.ToPersianDate(t.SendDate.Value).ToString("yy/mm/dd"),
                        t.UserIp,
                        t.UserID
                    };


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

            var query = (from t in db.MessageTables
                where t.Email == email
                select t).FirstOrDefault();

            if (query==null)
            {
                return true;
            }
            else
            {
                return false;
            }

        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return false;
        }
    }
}