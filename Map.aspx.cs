using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Map : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadGroup1();
        
    }

    //private void LoadGroup1()
    //{
    //    var db = new DataClassesDataContext();
    //    var query = from t in db.ProductGroupTable1s
    //        select t;

    //    foreach (var item in query)
    //    {
    //        PlaceGroup1.Controls.Add(new LiteralControl(""));
    //    }

    //}
 
    private void LoadGroup1()
    {
        var db = new DataClassesDataContext();
        var query = from t in db.ProductGroupTable1s
            orderby t.Name
            select t;

        foreach (var item in query)
        {
            PlaceGroup1.Controls.Add(
                new LiteralControl(" <li id='" + item.Id + "'><a  href='#'><h1 class='GroupH1'>" + item.Name + "</h1></a></li>"));
        }

    }

    //private void LoadGroup2()
    //{
    //    var db = new DataClassesDataContext();
    //    var query = from t in db.ProductGroupTable1s
    //                select t;

    //    foreach (var item in query)
    //    {
    //        PlaceGroup1.Controls.Add(new LiteralControl(""));
    //    }

    //}
}