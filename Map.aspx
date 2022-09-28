<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Map.aspx.cs" Inherits="Map" %>

<asp:Content runat="server" ContentPlaceHolderID="head">
    
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/lightslider.css" />
    <%--<link rel="stylesheet" href="css/bootstrap.3.3.1.min.css" />--%>
    <link rel="stylesheet" href="css/BootSideMenu.css" />

    <script type="text/javascript" charset="utf-8" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="js/bootstrap.js"></script>
    <script type="text/javascript" charset="utf-8" src="js/jquery-ui.min.js"></script>
    <script src="js/bootstrap.3.3.1.min.js"></script>
    <script src="js/BootSideMenu.js"></script>

    <script src="js/lightslider.js"></script>

    <script src="http://maps.googleapis.com/maps/api/js?sensor=false&language=fa" type="text/javascript"></script>
    <script type="text/javascript" src="Mngmnt/assets/plugins/gmaps/gmap3.js"></script>
    <script src="js/Map.js"></script>

</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="Main">

    <div class="city-overlay">
    </div>
    <div id="RegionDialog" class="col-xs-12 col-sm-12 col-md-9">
        <div class="city-wrapper">
            <div class="cty-title">
                <span>انتخاب شهر</span>
            </div>
            <input type="text" name="search" class=" CitySearch" id="txtCitySearch" placeholder="جستجو..." />
            <div class="cty-content">
            </div>

        </div>
    </div>

    <section class="header-bottom">
        <div class="container">
            <div class="row">
                <div class="col-xs-6 col-sm-2 col-md-2 f-right m-f-left m-p-abslte p-abslte-cat">
                    <div class="location-reg-btn">
                        <a class="location-reg" href="Place.aspx">ثبت مکان</a>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8 f-right m-f-left">
                    <div class="search-inner-box">
                        <div class="search-innerpage">
                            <fieldset>
                                <div class="formbox-trnsprnt">
                                    <input type="text" name="search" class="form-control" id="search-inner" placeholder="جستجو..." />
                                    <button class="serach-btn" type="button">
                                        <i class="icon-search"></i>
                                    </button>

                                </div>
                            </fieldset>
                        </div>
                    </div>
                </div>

                <div class="col-xs-6 col-sm-2 col-md-2 f-right m-f-left m-p-abslte p-abslte-city">
                    <div class="city-select-box">
                        <a class="city-select-btn" id="btnShowRegions">انتخاب شهر</a>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="col-xs-12 col-sm-12 col-md-12 no-pddng ">
                    <ul id="content-slider" class="content-slider navbar job-menu">
                        <asp:PlaceHolder runat="server" ID="PlaceGroup1"></asp:PlaceHolder>

                    </ul>
                    <span class="color-line"></span>
                </div>
            </div>
        </div>
    </section>
    <main class="main-inner">
        <div class="slidenav test2">
            <aside class="col-xs-5 col-sm-3 col-md-3 no-pddng f-right pstion">
                <div class="rightside">
                    <ul id="myTab" class="nav nav-tabs">
                        <li class="active">
                            <a class="category-title" href="#category" aria-controls="category-title" role="tab" data-toggle="tab">دسته بندی فرعی</a>
                        </li>
                        <li class="no-dsply">
                            <a class="job-category no-dsply" href="#cat-list" aria-controls="job-category" role="tab" data-toggle="tab">مکان ها و مشاغل</a>
                        </li>
                    </ul>
                    <div class="rightside-items-bx tab-content mytab">

                        <div class="tab-pane active" id="category">
                        </div>

                        <!--tab2start-->
                        <div class="tab-pane no-dsply" id="cat-list">
                        </div>
                        <!--tab-->
                    </div>
                </div>
            </aside>
        </div>
        <div class="col-xs-12 col-sm-9 col-md-9 no-pddng f-right">
            <div class="map">
                <div id="map_canvas" class="table-responsive" >
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 no-pddng">
            <div class="result-bx">

                <div class="clearfix"></div>
            </div>
        </div>
        <div class="clearfix"></div>
    </main>
   
</asp:Content>
