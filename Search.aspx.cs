using System;
using System.Collections.Generic;
using System.Data.Linq.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.Count > 0)
        {
            if (Request.QueryString["title"] != null)
            {
                string title = Request.QueryString["title"];
                long regionId = Convert.ToInt64(Request.QueryString["regionId"]);
                long groupId1 = Convert.ToInt64(Request.QueryString["groupId1"]);
                long groupId2 = Convert.ToInt64(Request.QueryString["groupId2"]);

                SearchList(title, regionId, groupId1, groupId2);
            }

            else if (Request.QueryString["kind"] != null && Request.QueryString["kind"] == "1")
            {
                LoadNewestPlaces();
            }
        }

        //RegionList();

        //GroupList();
    }

    public void LoadNewestPlaces()
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = (from t in db.PlaceTables
                join grp1 in db.ProductGroupTable1s on t.GroupID1 equals grp1.Id                        
                        where t.Visibility == true && t.Verify == true
                        orderby t.RegDate descending 
                        select new { t.Id, t.Logo, t.Name, t.Tel, t.Address,  GroupName = grp1.Name, t.Position ,t.Description }).Take(30);

            foreach (var item in query)
            {
                
                var img = "";

                if (!string.IsNullOrEmpty(item.Logo))
                {
                    img = "<img src='mngmnt/images/" + item.Logo + "'  alt=" + item.Name + "/> ";
                }
                else
                {
                    img = "<img src='images/mapino.png'  alt=" + item.Name + "/> ";
                }

                PlaceSearchResult.Controls.Add(new LiteralControl("<li id=" + item.Id + "," + item.Position + ">" +
                                                                  "<section class='result-box'>" +
                                                                  "<div class='result-details'>" +
                                                                  "<div class='col-xs-4 col-sm-3 col-md-3 f-right no-pddng'>" +
                                                                  "<figure class='result-img'>" +
                                                                  img +
                                                                  "</figure> " +
                                                                  "</div> " +
                                                                  "<div class='col-xs-8 col-sm-9 col-md-9 f-right no-pddng'>" +
                                                                  "<h4 class='rslt-title'>" + item.Name + "</h4>" +
                                                                  "<p class='rslt-category'>" + item.Name +
                                                                  "<i class='icon-r-cat'></i></p>" +
                                                                  "<p class='rslt-tell'>" + item.Tel +
                                                                  "<i class='icon-r-tell'></i></p>" +
                                                                  "</div>" +
                                                                  "<br>" +
                                                                  "<div class='col-xs-12 col-sm-12 col-md-12'>" +
                                                                  "<p class='rslt-info'>" + item.Description +
                                                                  "</p>" +
                                                                  "<p class='rslt-address'>آدرس : " + item.Address +
                                                                  "</p>" +
                                                                  "<div class='map-icon'>" +
                                                                  "<a class='m-info' href='#'></a>" +
                                                                  "<a class='m-pin' href='#'></a>" +
                                                                  "</div>" +
                                                                  "</div>" +
                                                                  "</div>" +
                                                                  "<div class='clearfix'></div>" +
                                                                  "</section>" +
                                                                  "<div class='clearfix'></div>" +
                                                                  "</li>"));
            }
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, "کاربر سایت");
        }

    }

    private void SearchList(string title, long cityId, long groupId1, long groupId2)
    {
        try
        {
            var db = new DataClassesDataContext();

            long count = 0;

            if (cityId == -1 && groupId1 == -1)
            {
                var query = from t in db.PlaceTables
                            where SqlMethods.Like(t.Name, "%" + title + "%") &&
                            t.Visibility==true && t.Verify==true
                            select t;

                foreach (var item in query)
                {
                    count++;

                    var img = "";

                    if (!string.IsNullOrEmpty(item.Logo))
                    {
                        img = "<img src='mngmnt/images/" + item.Logo + "' alt=" + item.Name + "/> ";
                    }
                    else
                    {
                        img = "<img src='images/mapino.png'/>  alt=" + item.Name + " ";
                    }

                    PlaceSearchResult.Controls.Add(new LiteralControl("<li id=" + item.Id + "," + item.Position + ">" +
                                                                      "<section class='result-box'>" +
                                                                      "<div class='result-details'>" +
                                                                      "<div class='col-xs-4 col-sm-3 col-md-3 f-right no-pddng'>" +
                                                                      "<figure class='result-img'>" +
                                                                      img +
                                                                      "</figure> " +
                                                                      "</div> " +
                                                                      "<div class='col-xs-8 col-sm-9 col-md-9 f-right no-pddng'>" +
                                                                      "<h4 class='rslt-title'>" + item.Name + "</h4>" +
                                                                      "<p class='rslt-category'>" + item.Name +
                                                                      "<i class='icon-r-cat'></i></p>" +
                                                                      "<p class='rslt-tell'>" + item.Tel +
                                                                      "<i class='icon-r-tell'></i></p>" +
                                                                      "</div>" +
                                                                      "<br>" +
                                                                      "<div class='col-xs-12 col-sm-12 col-md-12'>" +
                                                                      "<p class='rslt-info'>" + item.Description +
                                                                      "</p>" +
                                                                      "<p class='rslt-address'>آدرس : " + item.Address +
                                                                      "</p>" +
                                                                      "<div class='map-icon'>" +
                                                                      "<a class='m-info' href='#'></a>" +
                                                                      "<a class='m-pin' href='#'></a>" +
                                                                      "</div>" +
                                                                      "</div>" +
                                                                      "</div>" +
                                                                      "<div class='clearfix'></div>" +
                                                                      "</section>" +
                                                                      "<div class='clearfix'></div>" +
                                                                      "</li>"));
                }
            }

            if (cityId == -1 && groupId1 != -1)
            {
                var query = from t in db.PlaceTables
                            where SqlMethods.Like(t.Name, "%" + title + "%") &&
                            t.Visibility == true && t.Verify == true
                            select t;

                foreach (var item in query)
                {
                    count++;

                    var img = "";

                    if (!string.IsNullOrEmpty(item.Logo))
                    {
                        img = "<img src='mngmnt/images/" + item.Logo + "'  alt=" + item.Name + "/> ";
                    }
                    else
                    {
                        img = "<img src='images/mapino.png'  alt=" + item.Name + "/> ";
                    }

                    PlaceSearchResult.Controls.Add(new LiteralControl("<li id=" + item.Id + "," + item.Position + ">" +
                                                                      "<section class='result-box'>" +
                                                                      "<div class='result-details'>" +
                                                                      "<div class='col-xs-4 col-sm-3 col-md-3 f-right no-pddng'>" +
                                                                      "<figure class='result-img'>" +
                                                                      img +
                                                                      "</figure> " +
                                                                      "</div> " +
                                                                      "<div class='col-xs-8 col-sm-9 col-md-9 f-right no-pddng'>" +
                                                                      "<h4 class='rslt-title'>" + item.Name + "</h4>" +
                                                                      "<p class='rslt-category'>" + item.Name +
                                                                      "<i class='icon-r-cat'></i></p>" +
                                                                      "<p class='rslt-tell'>" + item.Tel +
                                                                      "<i class='icon-r-tell'></i></p>" +
                                                                      "</div>" +
                                                                      "<br>" +
                                                                      "<div class='col-xs-12 col-sm-12 col-md-12'>" +
                                                                      "<p class='rslt-info'>" + item.Description +
                                                                      "</p>" +
                                                                      "<p class='rslt-address'>آدرس : " + item.Address +
                                                                      "</p>" +
                                                                      "<div class='map-icon'>" +
                                                                      "<a class='m-info' href='#'></a>" +
                                                                      "<a class='m-pin' href='#'></a>" +
                                                                      "</div>" +
                                                                      "</div>" +
                                                                      "</div>" +
                                                                      "<div class='clearfix'></div>" +
                                                                      "</section>" +
                                                                      "<div class='clearfix'></div>" +
                                                                      "</li>"));
                }
            }

            else if (cityId != -1 && groupId1 == -1)
            {
                var query = from t in db.PlaceTables
                            where SqlMethods.Like(t.Name, "%" + title + "%") && t.CityID == cityId &&
                            t.Visibility == true && t.Verify == true
                            select t;

                foreach (var item in query)
                {
                    count++;

                    var img = "";

                    if (!string.IsNullOrEmpty(item.Logo))
                    {
                        img = "<img src='mngmnt/images/" + item.Logo + "'  alt=" + item.Name + "/> ";
                    }
                    else
                    {
                        img = "<img src='images/mapino.png'  alt=" + item.Name + "/> ";
                    }

                    PlaceSearchResult.Controls.Add(new LiteralControl("<li id=" + item.Id + "," + item.Position + ">" +
                                                                      "<a> " +
                                                                      "<section class='result-box'>" +
                                                                      "<div class='result-details'>" +
                                                                      "<div class='col-xs-4 col-sm-3 col-md-3 f-right no-pddng'>" +
                                                                      "<figure class='result-img'>" +
                                                                      img +
                                                                      "</figure> " +
                                                                      "</div> " +
                                                                      "<div class='col-xs-8 col-sm-9 col-md-9 f-right no-pddng'>" +
                                                                      "<h4 class='rslt-title'>" + item.Name + "</h4>" +
                                                                      "<p class='rslt-category'>" + item.Name +
                                                                      "<i class='icon-r-cat'></i></p>" +
                                                                      "<p class='rslt-tell'>" + item.Tel +
                                                                      "<i class='icon-r-tell'></i></p>" +
                                                                      "</div>" +
                                                                      "<br>" +
                                                                      "<div class='col-xs-12 col-sm-12 col-md-12'>" +
                                                                      "<p class='rslt-info'>" + item.Description + "</p>" +
                                                                      "<p class='rslt-address'>آدرس : " + item.Address +
                                                                      "</p>" +
                                                                      "</div>" +
                                                                      "</div>" +
                                                                      "<div class='clearfix'></div>" +
                                                                      "</section>" +
                                                                      "<div class='clearfix'></div>" +
                                                                      "</a>" +
                                                                      "</li>"));
                }
            }
            else if (cityId != -1 && groupId1 != -1)
            {
                var query = from t in db.PlaceTables
                            where SqlMethods.Like(t.Name, "%" + title + "%") && t.CityID == cityId
                            && t.GroupID2 == groupId2 &&
                            t.Visibility == true && t.Verify == true
                            select t;

                foreach (var item in query)
                {
                    count++;

                    var img = "";

                    if (!string.IsNullOrEmpty(item.Logo))
                    {
                        img = "<img src='mngmnt/images/" + item.Logo + "'  alt=" + item.Name + "/> ";
                    }
                    else
                    {
                        img = "<img src='images/mapino.png'  alt=" + item.Name + "/> ";
                    }

                    PlaceSearchResult.Controls.Add(new LiteralControl("<li id=" + item.Id + "," + item.Position + ">" +
                                                                      "<a> " +
                                                                      "<section class='result-box'>" +
                                                                      "<div class='result-details'>" +
                                                                      "<div class='col-xs-4 col-sm-3 col-md-3 f-right no-pddng'>" +
                                                                      "<figure class='result-img'>" +
                                                                      img +
                                                                      "</figure> " +
                                                                      "</div> " +
                                                                      "<div class='col-xs-8 col-sm-9 col-md-9 f-right no-pddng'>" +
                                                                      "<h4 class='rslt-title'>" + item.Name + "</h4>" +
                                                                      "<p class='rslt-category'>" + item.Name +
                                                                      "<i class='icon-r-cat'></i></p>" +
                                                                      "<p class='rslt-tell'>" + item.Tel +
                                                                      "<i class='icon-r-tell'></i></p>" +
                                                                      "</div>" +
                                                                      "<br>" +
                                                                      "<div class='col-xs-12 col-sm-12 col-md-12'>" +
                                                                      "<p class='rslt-info'>" + item.Description + "</p>" +
                                                                      "<p class='rslt-address'>آدرس : " + item.Address +
                                                                      "</p>" +
                                                                      "</div>" +
                                                                      "</div>" +
                                                                      "<div class='clearfix'></div>" +
                                                                      "</section>" +
                                                                      "<div class='clearfix'></div>" +
                                                                      "</a>" +
                                                                      "</li>"));
                }
            }

            lblSearchCount.Text = count + " مورد یافت شد";
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, "کاربر سایت");
        }
    }



    //private void GroupList()
    //{
    //    try
    //    {
    //        var db = new DataClassesDataContext();

    //        var query = from t in db.ProductGroupTable1s
    //                    select t;

    //        var query1 = from t in db.ProductGroupTable2s
    //                     select t;

    //        foreach (var item in query)
    //        {

    //            PlaceGroups.Controls.Add(
    //                new LiteralControl("<div class='col-xs-12 col-sm-12 col-ms-12 f-right no-pddng'>" +
    //                                   "<div class='fltr-city-row'>" +
    //                                   "<label for=''>گروه اصلی " + item.Name + "</label>" +
    //                                   "</div>" +
    //                                   "</div>"));



    //            foreach (var item2 in query1)
    //            {
    //                if (item2.GroupID1 == item.Id)
    //                {
    //                    PlaceGroups.Controls.Add(
    //                   new LiteralControl("<div class='col-xs-6 col-sm-3 col-md-6 f-right no-pddng'>" +
    //                                      "<div class='fltr-city-row'>" +
    //                                      "<label for=''>" + item2.Name + "</label>" +
    //                                      "<input type='checkbox' id='' class='filtr-city' name=''>" +
    //                                      "</div>" +
    //                                      "</div>"));
    //                }

    //            }
    //        }
    //    }
    //    catch (Exception ex)
    //    {
    //        ErrorClass.Insert(ex.Message, ex.StackTrace, "کاربر سایت");
    //    }
    //}
}