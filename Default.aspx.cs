using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        HttpBrowserCapabilities browser = Request.Browser;

        SiteVisitClass.SeeSite();

        SiteVisitClass.Visitor(browser);

        LoadNewestPlaces();

        LoadCities();

    }

    public void LoadNewestPlaces()
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = (from t in db.PlaceTables
                         where t.Verify == true && t.Visibility == true
                         orderby t.RegDate descending
                         select new { t.Id, t.Name, t.Tel, t.Mobile, t.Logo }).Take(15);

            int i = 1;

            string logo;

            foreach (var item in query)
            {
                if (!string.IsNullOrEmpty(item.Logo))
                {
                    logo = "<img src='../mngmnt/images/" + item.Logo + "' alt='" + item.Name + "'>";
                }
                else
                {
                    logo = "<img src='images/mapi_logo.png' alt='مپی نو, mapino'>";
                }

                PlaceNewestPlaces.Controls.Add(new LiteralControl("" +
                                                                  "<div class='ca-item ca-item-" + i + "'>" +
                                                                  "<div class='ca-item-main'>" +
                                                                  "<div class='itembox'>" +
                                                                  logo +
                                                                  "<div class='details' href=''>" +
                                                                  "<div class='icon-items-hover'>" +
                                                                  "<a class='pinitem' href='Map.aspx?id=" + item.Id + "'><i class='icon-pinitem'></i></a>" +
                                                                  "<a class='infoitem' href='Map.aspx?id=" + item.Id + "'><i class='icon-infoitem'></i></a>" +
                                                                  "</div>" +
                                                                  "<h3 class='item-title'>" + item.Name + "</h3>" +
                                                                  "<p>" + item.Tel + "</p>" +
                                                                  "</div>" +
                                                                  "</div>" +
                                                                  "</div>" +
                                                                  "</div>" +
                                                                  ""));
                i++;
            }
        }
        catch (Exception ex)
        {
            ErrorClass.Insert(ex.Message, ex.StackTrace, "کاربر سایت");
        }

    }

    public void LoadCities()
    {
        try
        {
            var db = new DataClassesDataContext();

            var query = (from t in db.RegionTables
                         join place in db.PlaceTables on t.Id equals place.CityID
                         where t.Id != -1
                         select t).Distinct();

            foreach (var item in query)
            {
                ListItem list = new ListItem(item.Name, item.Id.ToString());
                drpRegions.Items.Add(list);
            }

        }
        catch (Exception ex)
        {

        }
    }

}