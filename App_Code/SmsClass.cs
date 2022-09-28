using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for SmsClass
/// </summary>
public class SmsClass
{
	public SmsClass()
	{
		
	}

    public bool Insert(SmsEntity smsEntity)
    {
        try
        {
            var db = new DataClassesDataContext();
            var sms = new SmsTable();

            sms.Receptor = smsEntity.Receptor;
            sms.Message = smsEntity.Message;
            sms.GroupID = smsEntity.GroupID;
            sms.SendDate = smsEntity.SendDate;
            sms.SenderLine = smsEntity.SenderLine;
            sms.UserID = smsEntity.UserID;
            sms.MessageType = smsEntity.MessageType;
            sms.Description = smsEntity.Description;

            db.SmsTables.InsertOnSubmit(sms);
            db.SubmitChanges();

            return true;
        }
        catch (Exception)
        {
            return false;
        }
    }

    public IEnumerable<object> SelectOne(Int64 id)
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = from t in db.SmsTables
                        where t.Id == id
                        select t;

            return query;
        }
        catch (Exception ex) { return null; }
    }

    public IEnumerable<object> SelectAll()
    {
        try
        {

            var db = new DataClassesDataContext();
            var query = from t in db.SmsTables
                        select
                    new
                    {
                       t.Id,
                       t.Receptor,
                       t.Message,
                       t.GroupID,
                       SendDate =
                            FarsiLibrary.Utils.PersianDateConverter.ToPersianDate(t.SendDate.Value).ToString("yy/mm/dd"),
                       t.SenderLine,
                       t.UserID,
                       t.MessageType,
                       t.Description,
                    };
            return query;
        }
        catch (Exception ex)
        {
            return null;
        }

    }

    public void DeleteOne(Int64 id)
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = (from t in db.SmsTables
                         where t.Id == id
                         select t).Single();

            if (query != null)
            {
                db.SmsTables.DeleteOnSubmit(query);
                db.SubmitChanges();
            }

        }
        catch (Exception ex)
        {
        }
    }

}