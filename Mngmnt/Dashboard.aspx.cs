using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Mngmnt_Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

         if (Session["username"] == null)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "redirect", "window.location.href='login.aspx';", true);
            Response.Redirect("login.aspx",true);
        }

        LoadVisit();

        LoadVisitor();

    }

    private void LoadVisit()
    {
        List<long> ds = SiteVisitClass.GetState();
        lblOnline.Text = Application["OnlineUsers"] + " نفر";
        lblSeeAll.Text = ds[0].ToString() + " نفر";
        lblSeeNow.Text = ds[1].ToString() + " نفر";
        lblSeeLast.Text = ds[2].ToString() + " نفر";
        lblSeeMonth.Text = ds[3].ToString() + " نفر";

    }

    private void LoadVisitor()
    {
        var db = new DataClassesDataContext();


        var query1 = (from t in db.SiteVisitTables
                      select new { t.Date }).First();

        lblStart.Text = FarsiLibrary.Utils.PersianDateConverter.ToPersianDate(query1.Date.Value).ToString("yyyy/mm/dd");

        List<long> ds2 = SiteVisitClass.GetVisitor();
        lblVisitorAll.Text = ds2[0].ToString() + " نفر";
        lblVisitorNow.Text = ds2[1].ToString() + " نفر";
        lblVisitorLast.Text = ds2[2].ToString() + " نفر";
        lblVisitorMonth.Text = ds2[3].ToString() + " نفر";
    }

  
}