using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using Newtonsoft.Json;
using Kavenegar;
using Kavenegar.SDK.Models;
using Kavenegar.SDK.Models.Enums;

/// <summary>
/// Summary description for SmsWs
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class SmsWs : System.Web.Services.WebService
{

    [WebMethod (EnableSession = true)]
    public string GetData()
    {
        if (GlobalFunction.CheckModulePermission("show") == false)
        {
            return null;
        }

        try
        {
            var sms = new SmsClass();

            var query = sms.SelectAll();

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
    public bool Insert(SmsEntity smsEntity)
    {
        //if (GlobalFunction.CheckModulePermission("insert") == false)
        //{
        //    return false;
        //}

        try
        {
            Kavenegar.SDK.KavenegarApi api =
                new Kavenegar.SDK.KavenegarApi("364C68315632663551627A5366472F7A437757724D413D3D");
            SendResult res = api.Send("10001001002001", smsEntity.Receptor, smsEntity.Message);

            return true;
        }
        catch (Kavenegar.SDK.Exceptions.ApiException ex)
        {
            // در صورتی که خروجی وب سرویس 200 نباشد این خطارخ می دهد.
            Console.Write("Message : " + ex.Message);
            return false;
        }
        catch (Kavenegar.SDK.Exceptions.HttpException ex)
        {
            // در زمانی که مشکلی در برقرای ارتباط با وب سرویس وجود داشته باشد این خطا رخ می دهد
            Console.Write("Message : " + ex.Message);
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

            var sms = new SmsClass();
            sms.DeleteOne(id);
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
        }
    }

    [WebMethod (EnableSession = true)]
    public string BindRecordToEdit(Int64 id)
    {
        if (GlobalFunction.CheckModulePermission("select") == false)
        {
            return null;
        }

        try
        {
            var sms = new SmsClass();
            var query = sms.SelectOne(id);
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
    public void DeleteMultiRecord(List<string> idList)
    {
        if (GlobalFunction.CheckModulePermission("delete") == false)
        {
            return ;
        }

        try
        {
            var sms = new SmsClass();

            for (int i = 0; i < idList.Count; i++)
            {
                sms.DeleteOne(Convert.ToInt64(idList[i]));
            }
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
        }

    }
}