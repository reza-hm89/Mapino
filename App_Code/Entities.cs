using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

public static class IpMaker
{
    public static string Ip { set; get; }
}

public class AacOrderEntity
{
    public long Id { get; set; }
    public string Name { get; set; }
    public string Company { get; set; }
    public string Tel { get; set; }
    public string Email { get; set; }
    public string ProductName { get; set; }
    public string Description { get; set; }
    public bool View { get; set; }
    public DateTime OrderDate { get; set; }
}

public class AdminMessageGroupEntity
{
    public long Id { set; get; }
    public long MessageID { set; get; }
    public long GroupID { set; get; }
}

public class AdminMessageEntity
{
    public long Id { set; get; }
    public string Title { set; get; }
    public string SendKind { set; get; }
    public string Header { set; get; }
    public string Body { set; get; }
    public string Footer { set; get; }
    public string FileName { set; get; }
    public string Ip { set; get; }
    public DateTime SendDate { set; get; }
    public long UserID { set; get; }
}

public class AdvertiseTariffEntity
{
    public int Id { set; get; }
    public string Title { set; get; }
    public string Period { set; get; }
    public long Price { set; get; }
    public bool Visibility { set; get; }
}

public class AdvertiseEntity
{
    public int Id { set; get; }
    public int AdsKind { set; get; }
    public string FileName { set; get; }
    public string AltText { set; get; }
    public string StartDate1 { set; get; }
    public string EndDate1 { set; get; }
    public DateTime StartDate { set; get; }
    public DateTime EndDate { set; get; }
    public bool Visibility { set; get; }
    public string Link { set; get; }
    public int Priority { set; get; }
}

public class AgentEntity
{
    public long Id { get; set; }
    public string Name { get; set; }
    public string Company { get; set; }
    public string Code { get; set; }
    public string Activity { get; set; }
    public string Address { get; set; }
    public string Tel { get; set; }
    public string Mobile { get; set; }
    public string Image { get; set; }
    public long LanguageID { get; set; }
    public long Priority { get; set; }
    public bool Visibility { get; set; }
    public long UserID { get; set; }
}

public class AlbumEntity
{
    public long Id { get; set; }
    public string Name { get; set; }
    public string Description { get; set; }
    public long LanguageID { get; set; }
    public long Priority { get; set; }
    public bool Visibility { get; set; }
    public long UserID { get; set; }
}

public class AlbumPicEntity
{
    public long Id { get; set; }
    public string Image { get; set; }
    public string AlternativeText { get; set; }
    public long AlbumID { get; set; }
}

public class BackupEntity
{
    public long Id { get; set; }
    public DateTime Date { get; set; }
    public string Date1 { get; set; }
    public long UserID { get; set; }
    public string Path { get; set; }
    public string Description { get; set; }
}

public class BankAccountEntity
{
    public long Id { get; set; }
    public string Name { get; set; }
    public string BankName { get; set; }
    public string CardNumber { get; set; }
    public string AccountNumber { get; set; }
    public string Sheba { get; set; }
    public long UserID { get; set; }
}

public class CustomerEntity
{
    public long Id { get; set; }
    public string Name { get; set; }
    public string Logo { get; set; }
    public string Link { get; set; }
    public string OpenLink { get; set; }
    public string CustomerTalk { get; set; }
    public string Description { get; set; }
    public long LanguageID { get; set; }
    public long Priority { get; set; }
    public bool Visibility { get; set; }
}

public class DiscountGroupEntity
{
    public long Id { get; set; }
    public int DiscountID { get; set; }
    public long GroupID { get; set; }
}

public class DiscountEntity
{
    public int Id { get; set; }
    public string Name { get; set; }
    public string StartDate1 { get; set; }
    public string EndDate1 { get; set; }
    public DateTime StartDate { get; set; }
    public DateTime EndDate { get; set; }
    public byte Discount { get; set; }
    public bool Active { get; set; }
}


public class FactorStatusEntity
{
    public int Id { get; set; }
    public string Name { get; set; }
}

public class FactorEntity
{
    public long Id { get; set; }
    public string FactorNumber { get; set; }
    public long WebUserID { get; set; }
    public DateTime SellDate { get; set; }
    public string RefCode { get; set; }
    public string FactorContent { get; set; }
    public string AdditionalInfo { get; set; }
    public long Price { get; set; }
    public int StatusID { get; set; }
    public string PaymentType { get; set; }
    public long UserID { get; set; }
    public string RequestKey { get; set; }
    public int AppStatusCode { get; set; }
    public bool Settlement { get; set; }
    public string Attachment { get; set; }
}

public class FactorDetailEntity
{
    public long Id { get; set; }
    public long FactorID { get; set; }
    public long ProductID { get; set; }
    public long UnitPrice { get; set; }
    public long Discount { get; set; }
    public long Count { get; set; }
    public long Prices { get; set; }
}

public class FaqEntity
{
    public long Id { get; set; }
    public long GroupID { get; set; }
    public string Question { get; set; }
    public string Answer { get; set; }
    public bool Visibility { get; set; }
    public long Priority { get; set; }
}

public class GrandeeProductEntity
{
    public long Id { get; set; }
    public string Name { get; set; }
    public string Code { get; set; }
    public long Price { get; set; }
    public string Description { get; set; }
    public bool Availability { get; set; }
    public DateTime RegDate { get; set; }
    public float Rate { get; set; }
    public long View { get; set; }
    public long Sell { get; set; }
    public long GroupID { get; set; }
    public long LanguageID { get; set; }
    public bool Visibility { get; set; }
    public long SalesCount { get; set; }
}

public class GrandeeProductImageEntity
{
    public long Id { get; set; }
    public string Image { get; set; }
    public string AlternativeText { get; set; }
    public long ProductID { get; set; }
}

public class GrandeeProductCommentEntity
{
    public long Id { get; set; }
    public string Name { get; set; }
    public string Email { get; set; }
    public string Body { get; set; }
    public DateTime WrittenDate { get; set; }
    public bool Confirm { get; set; }
    public long UserID { get; set; }
    public string Ip { get; set; }
    public long ProductID { get; set; }
}

public class KhoAdvertiseEntity
{
    public long Id { get; set; }
    public string Serial { get; set; }
    public string Title { get; set; }
    public string Body { get; set; }
    public string Image { get; set; }
    public int Row { get; set; }
    public int Column { get; set; }
    public long PageID { get; set; }
    public int Repeat { get; set; }
    public string StartDate { get; set; }
    public DateTime StartDate1 { get; set; }
    public int ColorNumber { get; set; }
    public string RepeatKind { get; set; }
    public long CustomerID { get; set; }
    public long Price { get; set; }
    public long TotalPrice { get; set; }
    public byte PercentDiscount { get; set; }
    public long Discount { get; set; }
    public long DesignPrice { get; set; }
    public long Sum { get; set; }
    public long Pay1 { get; set; }
    public long Pay2 { get; set; }
    public bool Finished { get; set; }
    public DateTime RegDate { get; set; }
    public string CustomerName { get; set; }
}

public class KhoBoxEntity
{
    public long Id { get; set; }
    public int Row { get; set; }
    public int Column { get; set; }
}

public class KhoHolidayEntity
{
    public long Id { get; set; }
    public DateTime Day1 { get; set; }
    public string Day { get; set; }
    public string Description { get; set; }
}

public class KhoPageEntity
{
    public long Id { get; set; }
    public int PageNumber { get; set; }
    public int Row { get; set; }
    public int Column { get; set; }
    public string SubField { get; set; }
    public bool Visibility { get; set; }
    public long BoxPrice { get; set; }

}

public class KhoPrintDateEntity
{
    public long Id { get; set; }
    public long AdvertiseID { get; set; }
    public DateTime Date { get; set; }
}


public class LanguageEntity
{
    public long Id { get; set; }
    public string Name { get; set; }
    public string Icon { get; set; }
    public string Link { get; set; }
    public string OpenLink { get; set; }
    public bool Visibility { get; set; }
    public string Code { get; set; }
}

public class LinkEntity
{
    public long Id { get; set; }
    public string Title { get; set; }
    public string Link { get; set; }
    public string OpenLink { get; set; }
    public string Icon { get; set; }
    public bool Visibility { get; set; }
    public long LanguageID { get; set; }
    public long Priority { get; set; }
}

public class LogEntity
{
    public long Id { get; set; }
    public string Name { get; set; }
    public long UserID { get; set; }
    public DateTime Date { get; set; }
    public string Operation { get; set; }
    public string Details { get; set; }
    public string Ip { get; set; }
    public long WebUserID { get; set; }
}

public class MenuGroupEntity
{
    public long Id { get; set; }
    public string Name { get; set; }
    public bool Visibility { get; set; }
    public long LanguageID { get; set; }
}
public class MenuEntity
{
    public long Id { get; set; }
    public string Name { get; set; }
    public long? Parent { get; set; }
    public string Link { get; set; }
    public string OpenLink { get; set; }
    public long Priority { get; set; }
    public bool Visibility { get; set; }
    public long LanguageID { get; set; }
    public long MenuGroupID { get; set; }

}

public class MessageEntity
{
    public long Id { get; set; }
    public string Name { get; set; }
    public string Mobile { get; set; }
    public string Email { get; set; }
    public string Title { get; set; }
    public string Body { get; set; }
    public DateTime SendDate { get; set; }
    public string UserIp { get; set; }
    public long UserID { get; set; }
    public long GroupID { get; set; }
    public int UnitID { get; set; }
    public string Captcha { get; set; }
}

public class ModuleEntity
{
    public int Id { get; set; }
    public string Name { get; set; }
    public string MenuContent { get; set; }
    public string MenuScript { get; set; }

}

public class MultiLevelPercentEntity
{
    public int Id { get; set; }
    public string Name { get; set; }
    public byte Percent { get; set; }
    public int LevelNumber { get; set; }
    public bool Visibility { get; set; }
    public long GroupID1 { get; set; }
    public long GroupID2 { get; set; }
}

public class NewsGroupEntity
{
    public long Id { get; set; }
    public string Name { get; set; }
    public long Priority { get; set; }
    public bool Visibility { get; set; }
    public long LanguageID { get; set; }
}

public class NewsEntity
{
    public long Id { get; set; }
    public string RoTitr { get; set; }
    public string Titr { get; set; }
    public string ZirTitr { get; set; }
    public string Body { get; set; }
    public string Image { get; set; }
    public string Keywords { get; set; }
    public byte PublishStatus { get; set; }
    public bool ShowInSlide { get; set; }
    public bool Special { get; set; }
    public bool Comment { get; set; }
    public bool Rate { get; set; }
    public DateTime PublishDate { get; set; }
    public TimeSpan PublishTime { get; set; }
    public long NewsGroupID { get; set; }
    public long UserID { get; set; }
    public long LanguageID { get; set; }
    public long NumberOfView { get; set; }
    public string UserName { get; set; }
    public string NewsGroupName { get; set; }
}

public class OurServiceEntity
{
    public long Id { get; set; }
    public string Title { get; set; }
    public string Image { get; set; }
    public string Description { get; set; }
    public bool Visibility { get; set; }
    public long Priority { get; set; }
}

public class PackageAccessEntity
{
    public long Id { get; set; }
    public long WebUserID { get; set; }
    public long PackageID { get; set; }

}
public class PackageEntity
{
    public long Id { get; set; }
    public string Name { get; set; }
    public long Price { get; set; }
    public long Discount { get; set; }
    public byte Percent { get; set; }
    public byte Expire { get; set; }
    public string Description { get; set; }
    public bool Visibility { get; set; }
    public DateTime StartDate { get; set; }
    public DateTime EndDate { get; set; }
    public string Status { get; set; }
    public string MinResponse { get; set; }
    public string MaxResponse { get; set; }
    public bool IsExpert { get; set; }

}

public class PageEntity
{
    public long Id { get; set; }
    public string FileName { get; set; }
    public string Title { get; set; }
    public string Body { get; set; }
    public string Keywords { get; set; }
    public string Image { get; set; }
    public string Template { get; set; }
    public string Css { get; set; }
    public string Js { get; set; }
    public bool Visibility { get; set; }
    public long LanguageID { get; set; }
}

public class PermissionEntity
{
    public long Id { get; set; }
    public long UserID { get; set; }
    public long GroupID { get; set; }
    public int ModuleID { get; set; }
    public bool Show { get; set; }
    public bool Insert { get; set; }
    public bool Update { get; set; }
    public bool Delete { get; set; }
}

public class Permissions
{
    public long ModuleId { get; set; }
    public long UserId { get; set; }
    public bool Show { get; set; }
    public bool Insert { get; set; }
    public bool Update { get; set; }
    public bool Delete { get; set; }
}

public class PlaceEntity
{
    public long Id { get; set; }
    public string Name { get; set; }
    public long GroupID1 { get; set; }
    public string Logo { get; set; }
    public string Banner;
    public string Owner { get; set; }
    public string Description { get; set; }
    public string Tel { get; set; }
    public string Fax { get; set; }
    public string Mobile { get; set; }
    public string Email { get; set; }
    public string Website { get; set; }
    public string Address { get; set; }
    public string Position { get; set; }
    public string Facilities { get; set; }
    public string Services { get; set; }
    public string WorkTime { get; set; }
    public DateTime RegDate { get; set; }
    public string UserIp { get; set; }
    public long UserID { get; set; }
    public long WebUserID { get; set; }
    public long NumberOfView { get; set; }
    public byte Rate { get; set; }
    public bool Verify { get; set; }
    public bool Visibility { get; set; }
    public byte PackageID { get; set; }
    public long GroupID2 { get; set; }
    public long CityID { get; set; }
    public long RegionID { get; set; }
}

public class PlacePicEntity
{
    public long Id { get; set; }
    public string Image { get; set; }
    public string Alt { get; set; }
    public long PlaceID { get; set; }
}

public class ProductGroupAccessEntity
{
    public long Id { get; set; }
    public long WebUserID { get; set; }
    public long GroupID1 { get; set; }
    public long GroupID2 { get; set; }

}

public class ProductGroupEntity1
{
    public long Id { get; set; }
    public string Name { get; set; }
    public string Link { get; set; }
    public string OpenLink { get; set; }
    public long Priority { get; set; }
    public bool Visibility { get; set; }
    public long? LanguageID { get; set; }
    public string Image { get; set; }
    public string Description { get; set; }
}

public class ProductGroupEntity2
{
    public long Id { get; set; }
    public string Name { get; set; }
    public long Parent { get; set; }
    public string Link { get; set; }
    public string OpenLink { get; set; }
    public long Priority { get; set; }
    public bool Visibility { get; set; }
    public long LanguageID { get; set; }

    public long GroupID1 { get; set; }
}

public class ProductEntity
{
    public long Id { get; set; }
    public string Name { get; set; }
    public string Code { get; set; }
    public long? Price { get; set; }
    public string Description { get; set; }
    public bool Availability { get; set; }
    public DateTime RegDate { get; set; }
    public DateTime EditDate { get; set; }
    public float Rate { get; set; }
    public long View { get; set; }
    public long Sell { get; set; }
    public long GroupID1 { get; set; }
    public long LanguageID { get; set; }
    public bool Visibility { get; set; }
    public bool Special { get; set; }
    public bool InBasket { get; set; }
    public int PriceKind { get; set; }
    public long Discount { get; set; }
    public long Priority { get; set; }
    public string Details { get; set; }
    public long UserID { get; set; }
    public string TagName { get; set; }
    public long SalesCount { get; set; }
    public long GroupID2 { get; set; }
}

public class ProductImageEntity
{
    public long Id { get; set; }
    public string Image { get; set; }
    public string AlternativeText { get; set; }
    public long ProductID { get; set; }
    public bool Visibility { get; set; }
}

public class ProductReportEntity
{
    public long Id { get; set; }
    public DateTime Date { get; set; }
    public long ProductID { get; set; }
    public long ViewNumber { get; set; }
    public long RateNumber { get; set; }
    public float RateAverage { get; set; }
    public long SaleNumber { get; set; }
}

public class ProductCommentEntity
{
    public long Id { get; set; }
    public string Name { get; set; }
    public string Email { get; set; }
    public string Body { get; set; }
    public DateTime WrittenDate { get; set; }
    public bool Confirm { get; set; }
    public long UserID { get; set; }
    public string Ip { get; set; }
    public long ProductID { get; set; }
}

public class QesReplyEntity
{
    public long Id { get; set; }
    public long QuestionID { get; set; }
    public string Reply { get; set; }
    public string FileName { get; set; }
    public long UserID { get; set; }
    public DateTime RegDate { get; set; }
    public string Ip { get; set; }
    public bool Kind { get; set; }
    public int AdminReplyCount { get; set; }
}

public class QuestionEntity
{
    public long Id { get; set; }
    public long PackageID { get; set; }
    public string Title { get; set; }
    public string Body { get; set; }
    public string FileName { get; set; }
    public int StatusID { get; set; }
    public int Rate { get; set; }
    public string RateDescription { get; set; }
    public long WebUserID { get; set; }
    public DateTime RegDate { get; set; }
    public string Ip { get; set; }
}

public class RegionEntity
{
    public long Id { get; set; }
    public string Name { get; set; }
    public long Parent { get; set; }
    public string Position { get; set; }
    public long Priority { get; set; }
    public bool Visibility { get; set; }
    public long LanguageID { get; set; }

}

public class RequestExpertEntity
{
    public long Id { get; set; }
    public string Title { get; set; }
    public string Description { get; set; }
    public string RoleForm { get; set; }
    public long Price { get; set; }
    public string ExpertReport { get; set; }
    public long ExpertPrice { get; set; }
    public long WebUserID { get; set; }
    public long ExpertID { get; set; }
    public long PackageID { get; set; }
    public DateTime RegDate { get; set; }
    public string Ip { get; set; }
    public string WebUserComment { get; set; }
    public bool Satisfaction { get; set; }
}

public class SettlementEntity
{
    public long Id { get; set; }
    public long Request { get; set; }
    public DateTime RequestDate { get; set; }
    public long Pay { get; set; }
    public DateTime PayDate { get; set; }
    public string RefCode { get; set; }
    public string Status { get; set; }
    public long UserID { get; set; }
    public string Description { get; set; }

}

public class ShowWebUserFieldEntity
{
    public long Id { get; set; }
    public long GroupID { get; set; }
    public bool Name { get; set; }
    public bool Family { get; set; }
    public bool Father { get; set; }
    public bool CodeMeli { get; set; }
    public bool ShomareSh { get; set; }
    public bool BirthhDay { get; set; }
    public bool Tel { get; set; }
    public bool Mobile { get; set; }
    public bool Email { get; set; }
    public bool Address { get; set; }
    public bool ZipCode { get; set; }
    public bool TelOwnerName { get; set; }
}

public class SlideEntity
{
    public long Id { get; set; }
    public string Image { get; set; }
    public string AlternativeText { get; set; }
    public string Link { get; set; }
    public string OpenLink { get; set; }
    public byte ShowTime { get; set; }
    public long Priority { get; set; }
    public bool Visibility { get; set; }
    public long LanguageID { get; set; }
    public string Title1 { get; set; }
    public string Title2 { get; set; }
    public string Title3 { get; set; }
    public long UserID { get; set; }
}

public class SmsEntity
{
    public long Id { get; set; }
    public string Receptor { get; set; }
    public string Message { get; set; }
    public long GroupID { get; set; }
    public DateTime SendDate { get; set; }
    public string SenderLine { get; set; }
    public long UserID { get; set; }
    public int MessageType { get; set; }
    public string Description { get; set; }
}

public class StoreSettingEntity
{
    public int Id { get; set; }
    public bool EmailForBuy { get; set; }
    public bool SmsForBuy { get; set; }
    public bool OnlineBuy { get; set; }
    public bool CashOnDelivery { get; set; }
    public bool CardToCard { get; set; }
    public bool PayAccount { get; set; }
    public bool ChargeAccount { get; set; }
    public bool PayWithoutRegister { get; set; }
    public bool Tax { get; set; }
    public Byte TaxPercent { get; set; }
    public bool Delivery { get; set; }
}

public class TagEntity
{
    public long Id { get; set; }
    public string Name { get; set; }

}

public class TameshkProductEntity
{
    public long Id { get; set; }
    public string Title { get; set; }
    public string Icon { get; set; }
    public string Description { get; set; }
    public string AppStoreLink { get; set; }
    public string SibcheLink { get; set; }
    public bool Visible { get; set; }
    public byte Sort { get; set; }
    public byte Radius { get; set; }
}

public class UnitEntity
{
    public int Id { get; set; }
    public string Name { get; set; }
    public string Description { get; set; }
    public bool Visibility { get; set; }
}

public class UserAccountTypeEntity
{
    public int Id { get; set; }
    public string Name { get; set; }
    public string Description { get; set; }
    public int QuestionCount { get; set; }
    public byte Discount { get; set; }
    public bool Visibility { get; set; }
    public string Ip { get; set; }
    public DateTime RegDate { get; set; }
    public long UserID { get; set; }
    public int ExpireDate { get; set; }
    public long Price { get; set; }
}

public class UserGroupAccessEntity
{
    public long Id { get; set; }
    public long UserID { get; set; }
    public long GroupID { get; set; }
}

public class UserGroupEntity
{
    public long Id { get; set; }
    public string Name { get; set; }
    public bool Visibility { get; set; }
}

public class UserPercentEntity
{
    public long Id { get; set; }
    public long GroupID1 { get; set; }
    public long GroupID2 { get; set; }
    public long UserID { get; set; }
    public long UserGroupID { get; set; }
    public byte Percent { get; set; }

}

public class UserEntity
{
    public long Id { get; set; }
    public string Name { get; set; }
    public string Family { get; set; }
    public string Address { get; set; }
    public string Tel { get; set; }
    public string ImageUrl { get; set; }
    public string Birthday { get; set; }
    public bool Gender { get; set; }
    public string ZipCode { get; set; }
    public string City { get; set; }
    public string Website { get; set; }
    public string Email { get; set; }
    public string Twitter { get; set; }
    public string Facebook { get; set; }
    public string GooglePlus { get; set; }
    public string Github { get; set; }
    public string Linkedin { get; set; }
    public string Skype { get; set; }
    public string Username { get; set; }
    public string Password { get; set; }
    public string LoginDate { get; set; }
    public string LogoutDate { get; set; }
    public string RegDate { get; set; }
    public string Description { get; set; }
    public bool IsDelete { get; set; }
    public string Ip { get; set; }
    public bool EmailConfirmed { get; set; }
    public int AccessFailedCount { get; set; }
    public bool MobileConfirmed { get; set; }
    public string ChangePassRequestCode { get; set; }
    public DateTime ChangePassRequestDate { get; set; }
    public long ParentID { get; set; }
    public string CardNumber { get; set; }
    public string AccountNumber { get; set; }
    public long RegUserID { get; set; }
}

public class WalletEntity
{
    public long Id { get; set; }
    public long Input { get; set; }
    public long Output { get; set; }
    public string InputWay { get; set; }
    public string OutputWay { get; set; }
    public DateTime OccurDate { get; set; }
    public long Balance { get; set; }
    public long UserID { get; set; }
    public long FactorID { get; set; }
    public long ProductID { get; set; }

}

public class WarehouseEntity
{
    public long Id { get; set; }
    public string Name { get; set; }
    public string Address { get; set; }
}

public class WarehouseProductEntity
{
    public long Id { get; set; }
    public long WarehouseID { get; set; }
    public long ProductID { get; set; }
    public int Count { get; set; }
    public long UnitPrice { get; set; }
    public long Prices { get; set; }
    public DateTime ProductionDate { get; set; }
    public string ProductionDate1 { get; set; }
}

public class WebsiteSettingEntity
{
    public int Id { get; set; }
    public string Address1 { get; set; }
    public string Address2 { get; set; }
    public string Address3 { get; set; }
    public string Tel1 { get; set; }
    public string Tel2 { get; set; }
    public string Tel3 { get; set; }
    public string Mobile1 { get; set; }
    public string Mobile2 { get; set; }
    public string Mobile3 { get; set; }
    public string Email1 { get; set; }
    public string Email2 { get; set; }
    public string Email3 { get; set; }
    public string Facebook { get; set; }
    public string Twitter { get; set; }
    public string GooglePlus { get; set; }
    public string Instagram { get; set; }
    public string Linkedin { get; set; }
    public string Github { get; set; }
    public string Skype { get; set; }
    public string Viber { get; set; }
    public string HeaderImage1 { get; set; }
    public string HeaderImage2 { get; set; }
    public string Logo1 { get; set; }
    public string Logo2 { get; set; }
    public string FooterImage1 { get; set; }
    public string FooterImage2 { get; set; }
    public string HeaderTitle { get; set; }
    public string FooterDescription { get; set; }
    public string CopyRightText { get; set; }
    public string CopyRightYear { get; set; }
    public long LanguageID { get; set; }
    public long PublicGift { get; set; }
    public long MoarefGift { get; set; }
    public string Roles1 { get; set; }
    public string Roles2 { get; set; }
}

public class WebUserEntity
{
    public long Id { get; set; }
    public string Name { get; set; }
    public string Family { get; set; }
    public string Father { get; set; }
    public string CodeMeli { get; set; }
    public string ShomareSh { get; set; }
    public string BirthhDay { get; set; }
    public string Tel { get; set; }
    public string Mobile { get; set; }
    public string Email { get; set; }
    public string Address { get; set; }
    public string ZipCode { get; set; }
    public string TelOwnerName { get; set; }
    public string Username { get; set; }
    public string Password { get; set; }
    public string Ip { get; set; }
    public DateTime RegDate { get; set; }
    public bool VerifyEmail { get; set; }
    public bool VerifyMobile { get; set; }
    public string VerifyCode { get; set; }
    public byte VerifyExpire { get; set; }
    public byte Kind { get; set; }
    public bool Gender { get; set; }
    public string ImageUrl { get; set; }
    public int AccountID { get; set; }
    public long ParentID { get; set; }
}

public class ShoppingPackageEntity
{
    public long Id { get; set; }
    public long FactorID { get; set; }
    public long PackageID { get; set; }
    public string PackageName { get; set; }
    public long UnitPrice { get; set; }
    public long Discount { get; set; }
    public long QuestionShopingCount { get; set; }
    public int QuestionUsedCount { get; set; }
    public int QuestionRemainingCount { get; set; }
    public long Prices { get; set; }
}