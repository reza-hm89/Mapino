<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content runat="server" ContentPlaceHolderID="head">

    <script src="http://maps.googleapis.com/maps/api/js?sensor=false&language=fa" type="text/javascript"></script>
    <script type="text/javascript" src="Mngmnt/assets/plugins/gmaps/gmap3.js"></script>

    <script src="js/Search.js"></script>

</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="Main">

    <section class="header-bottom hdr-btm-search">
        <div class="container">
            <div class="row">
                <div class="fltr-srch-fld-wrapper">
                    <div class="col-xs-12 col-sm-5 col-md-5 f-right">
                        <div class="fltr-srch-fld">
                            <input id="txtTitle" class="s-catgry" type="search" name="s-catgry" placeholder="عبارت مورد نظر" />
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-5 col-md-5 f-right">
                        <div class="fltr-srch-fld">
                            <input id="txtCity" class="s-city" type="search" name="s-city" placeholder="مکان مورد نظر" />
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <div class="col-xs-3 col-sm-2 col-md-2 f-right">
                        <button class="search-btn-pg">جستجو</button>
                    </div>
                </div>
            </div>
        </div>
        <span class="color-line"></span>
    </section>
    <div class="clearfix"></div>
    <main class="main-other">
        <div class="container" style="position: relative;">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 f-right mrgn-top">
                    <div class="s-title">
                        <h3 class="SearchH3">نتایج یافت شده :</h3>
                        <asp:Label runat="server" ID="lblSearchCount" Font-Names="myfont"></asp:Label>
                    </div>
                    <div class="s-pg-result">
                        <ul>
                            <asp:PlaceHolder runat="server" ID="PlaceSearchResult"></asp:PlaceHolder>
                        </ul>
                    </div>

                </div>

                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 f-right p-abslte p-abs-top">
                    <div class="filter-search-bx">
                        <div class="s-title">
                            <h3>موقعیت جفرافیایی</h3>
                        </div>
                        <div id="divRegions" class="fltr-srch-wrapper2">
                            <div id="map_canvas" class="table-responsive" style="width: 100%; height: inherit">
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <%--<div class="filter-search-bx">
                        <div class="s-title">
                            <h3>فیلتر بر اساس مشاغل</h3>
                        </div>
                        <div class="fltr-srch-wrapper">
                            <asp:PlaceHolder runat="server" ID="PlaceGroups"></asp:PlaceHolder>
                            <div class="clearfix"></div>
                        </div>
                    </div>--%>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>

    </main>

</asp:Content>


