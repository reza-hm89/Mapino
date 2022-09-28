<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ContentPlaceHolderID="head">

    <link rel="stylesheet" type="text/css" href="engine0/style.css" />

    <%--<script type="text/javascript" src="engine0/jquery.js"></script>--%>
    <script type="text/javascript" src="js/jquery.min-1.6.2.js"></script>
    <script src="js/jquery.contentcarousel.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/jquery.mousewheel.js"></script>

    <script src="js/Default.js"></script>

   <%-- <script type="text/javascript" src="engine0/wowslider.js"></script>
    <script type="text/javascript" src="engine0/script.js"></script>--%>

</asp:Content>


<asp:Content runat="server" ContentPlaceHolderID="Main">
    <main class="main">
        <section id="main-top">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 no-pddng f-right">
                        <div class="txt-right">
                            <div class="txt-img">
                                <!-- Start WOWSlider.com BODY section -->
                                <!-- add to the <body> of your page -->
                                <div id="wowslider-container0">
                                    <div class="ws_images">
                                        <ul>
                                            <li>
                                                <img src="data0/images/text-slide.png" title="text-slide" id="wows0_0" alt="مپی نو، سامانه جستجوی مشاغل و مکان های ایران" /></li>
                                            <li>
                                                <img src="data0/images/text-slide.png" title="text-slide" id="wows0_1" alt="مپی نو، سامانه جستجوی مشاغل و مکان های ایران" /></li>
                                        </ul>
                                    </div>

                                    <div class="ws_shadow"></div>
                                </div>

                                <!-- End WOWSlider.com BODY section -->
                            </div>

                            <div>
                                <a class="map-btn" href="Map.aspx">نقشه</a>
                                <a class="reg-place-btn" href="Place.aspx">ثبت مکان</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6 f-right">
                        <div class="search-box">
                            <div class="search-box-stl">
                                <p>جستجو</p>
                                <span class="line"></span>

                                <div class="form-group">
                                    <div class="col-sm-12 no-pddng">
                                        <input type="text" title="search" name="search" class="form-control txtSearch InputRequire1" id="txtTitle" placeholder="عبارت مورد نظر" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <select runat="server" class="form-control sel" id="drpRegions">
                                        <option value="-1">استان، شهر</option>

                                    </select>
                                </div>
                                <div class="form-group">
                                    <select class="form-control sel2" id="drpGroup1">
                                        <option value="-1">دسته بندی مشاغل</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <select class="form-control sel3" id="drpGroup2">
                                        <option value="-1">دسته بندی فرعی</option>
                                    </select>
                                </div>
                                <button type="button" class="btn btnSubmit" id="btnSearch">جستجو</button>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!----------------------------------------START MAIN MIDDLE----------------------------------------->
        </section>
        <section id="main-middle">
            <div class="container">
                <div class="row">
                    <div class="img-back-main">
                    </div>
                </div>
            </div>
        </section>
        <!----------------------------------------END MAIN MIDDLE----------------------------------------->

        <!----------------------------------------START MAIN BOTTOM----------------------------------------->
        <section id="main-btm">
            <div class="title-box-items ca-nav">
                <div class="container">
                    <div class="row">
                        <h3 class="box-title">جدیدترین مکانهای ثبت شده</h3>

                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div id="ca-container" class="ca-container">

                        <div class="ca-wrapper">

                            <asp:PlaceHolder runat="server" ID="PlaceNewestPlaces"></asp:PlaceHolder>

                        </div>

                    </div>
                </div>
            </div>
            <a class="more" href="Search.aspx?kind=1">موارد بیشتر</a>
        </section>
        <!----------------------------------------END MAIN BOTTOM----------------------------------------->
    </main>

</asp:Content>
