using System;
using System.Collections.Generic;
using System.Data.Linq.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for WebsiteSettingClass
/// </summary>
public class WebsiteSettingClass
{
	public WebsiteSettingClass()
	{		
	}

    public void Insert(WebsiteSettingEntity websiteSettingEntity)
    {
        try
        {
            var db = new DataClassesDataContext();
            var web = new WebsiteSettingTable();

            web.Address1 = websiteSettingEntity.Address1;
            web.Address2 = websiteSettingEntity.Address2;
            web.Address3 = websiteSettingEntity.Address3;          
            web.Tel1 = websiteSettingEntity.Tel1;
            web.Tel2 = websiteSettingEntity.Tel2;
            web.Tel3 = websiteSettingEntity.Tel3;
            web.Mobile1 = websiteSettingEntity.Mobile1;
            web.Mobile2 = websiteSettingEntity.Mobile2;
            web.Mobile3 = websiteSettingEntity.Mobile3;
            web.Email1 = websiteSettingEntity.Email1;
            web.Email2 = websiteSettingEntity.Email2;
            web.Email3 = websiteSettingEntity.Email3;
            web.Facebook = websiteSettingEntity.Facebook;
            web.Twitter = websiteSettingEntity.Twitter;
            web.GooglePlus = websiteSettingEntity.GooglePlus;
            web.Instagram = websiteSettingEntity.Instagram;
            web.Linkedin = websiteSettingEntity.Linkedin;
            web.Github = websiteSettingEntity.Github;
            web.Skype = websiteSettingEntity.Skype;
            web.Viber = websiteSettingEntity.Viber;
            web.HeaderImage1 = websiteSettingEntity.HeaderImage1;
            web.HeaderImage2 = websiteSettingEntity.HeaderImage2;
            web.Logo1 = websiteSettingEntity.Logo1;
            web.Logo2 = websiteSettingEntity.Logo2;
            web.FooterImage1 = websiteSettingEntity.FooterImage1;
            web.FooterImage2 = websiteSettingEntity.FooterImage2;
            web.HeaderTitle = websiteSettingEntity.HeaderTitle;
            web.FooterDescription = websiteSettingEntity.FooterDescription;
            web.CopyRightText = websiteSettingEntity.CopyRightText;
            web.CopyRightYear = websiteSettingEntity.CopyRightYear;
            web.LanguageID = websiteSettingEntity.LanguageID;
            web.PublicGift = websiteSettingEntity.PublicGift;
            web.MoarefGift = websiteSettingEntity.MoarefGift;
            web.Roles1 = websiteSettingEntity.Roles1;
            web.Roles2 = websiteSettingEntity.Roles2;

            db.WebsiteSettingTables.InsertOnSubmit(web);
            db.SubmitChanges();
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());            
        }
    }

    public void Update(WebsiteSettingEntity websiteSettingEntity)
    {
        try
        {
            var db = new DataClassesDataContext();
            var web = (from t in db.WebsiteSettingTables
                where t.LanguageID == websiteSettingEntity.LanguageID
                select t).Single();


            if (web != null)
            {
                web.Address1 = websiteSettingEntity.Address1;
                web.Address2 = websiteSettingEntity.Address2;
                web.Address3 = websiteSettingEntity.Address3;
                web.Tel1 = websiteSettingEntity.Tel1;
                web.Tel2 = websiteSettingEntity.Tel2;
                web.Tel3 = websiteSettingEntity.Tel3;
                web.Mobile1 = websiteSettingEntity.Mobile1;
                web.Mobile2 = websiteSettingEntity.Mobile2;
                web.Mobile3 = websiteSettingEntity.Mobile3;
                web.Email1 = websiteSettingEntity.Email1;
                web.Email2 = websiteSettingEntity.Email2;
                web.Email3 = websiteSettingEntity.Email3;
                web.Facebook = websiteSettingEntity.Facebook;
                web.Twitter = websiteSettingEntity.Twitter;
                web.GooglePlus = websiteSettingEntity.GooglePlus;
                web.Instagram = websiteSettingEntity.Instagram;
                web.Linkedin = websiteSettingEntity.Linkedin;
                web.Github = websiteSettingEntity.Github;
                web.Skype = websiteSettingEntity.Skype;
                web.Viber = websiteSettingEntity.Viber;
                web.HeaderImage1 = websiteSettingEntity.HeaderImage1;
                web.HeaderImage2 = websiteSettingEntity.HeaderImage2;
                web.Logo1 = websiteSettingEntity.Logo1;
                web.Logo2 = websiteSettingEntity.Logo2;
                web.FooterImage1 = websiteSettingEntity.FooterImage1;
                web.FooterImage2 = websiteSettingEntity.FooterImage2;
                web.HeaderTitle = websiteSettingEntity.HeaderTitle;
                web.FooterDescription = websiteSettingEntity.FooterDescription;
                web.CopyRightText = websiteSettingEntity.CopyRightText;
                web.CopyRightYear = websiteSettingEntity.CopyRightYear;
                web.LanguageID = websiteSettingEntity.LanguageID;
                web.PublicGift = websiteSettingEntity.PublicGift;
                web.MoarefGift = websiteSettingEntity.MoarefGift;
                web.Roles1 = websiteSettingEntity.Roles1;
                web.Roles2 = websiteSettingEntity.Roles2;

                db.SubmitChanges();
            }
           
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
        }
    }

    public IEnumerable<object> SelectOne(long languageId)
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = from t in db.WebsiteSettingTables
                where t.LanguageID == languageId              
                select t;

            return query;
        }
        catch (Exception ex)
        {
           ErrorClass.Insert(ex.Message, ex.StackTrace, HttpContext.Current.Session["Username"].ToString());
            return null;
        }
    }
}
