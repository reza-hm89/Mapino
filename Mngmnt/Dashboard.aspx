<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Mngmnt_Dashboard" %>

<!DOCTYPE html>
<html lang="fa" class="no-js">
<head>

    <meta charset="utf-8" />
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1" /><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">



    <script src="assets/plugins/flot/jquery.flot.js"></script>
    <script src="assets/plugins/flot/jquery.flot.resize.js"></script>
    <script src="assets/plugins/flot/jquery.flot.categories.js"></script>
    <script src="assets/plugins/flot/jquery.flot.pie.js"></script>
    <script src="js/Dashboard.js"></script>

    <style type="text/css">
        .style1 {
            width: 100%;
        }

            .style1 tr {
                border-bottom: 1px solid gainsboro;
            }

        .style2 {
            width: 115px;
            text-align: left;
        }
    </style>
</head>

<body class="rtl">

    <div class="row">
        <div class="col-sm-12">

            <ol class="breadcrumb">
                <li>
                    <i class="clip-file"></i>
                    <a href="#">صفحه اصلی</a>
                </li>
                <li class="active">داشبورد</li>
                <li class="search-box">
                    <form class="sidebar-search">
                        <div class="form-group">
                            <input type="text" placeholder="جستجو">
                            <button class="submit">
                                <i class="clip-search-3"></i>
                            </button>
                        </div>
                    </form>
                </li>
            </ol>
            <div class="page-header">
                <h1>داشبورد</h1>
            </div>

        </div>
    </div>

    <div class="row">
        <div class="col-sm-6">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <i class="fa fa-external-link-square"></i>
                    آمار بازدید سایت

                <div class="panel-tools">
                    <a class="btn btn-xs btn-link panel-collapse collapses" href="#"></a>
                    <a class="btn btn-xs btn-link panel-config" href="#panel-config" data-toggle="modal">
                        <i class="fa fa-wrench"></i>
                    </a>
                    <a class="btn btn-xs btn-link panel-refresh" href="#">
                        <i class="fa fa-refresh"></i>
                    </a>
                    <a class="btn btn-xs btn-link panel-expand" href="#">
                        <i class="fa fa-resize-full"></i>
                    </a>
                    <a class="btn btn-xs btn-link panel-close" href="#">
                        <i class="fa fa-times"></i>
                    </a>
                </div>
                </div>
                <div class="panel-body">
                    <div class="Main">

                        <div class="Items">
                            <table class="style1" dir="rtl">
                                <tr style="border-bottom: 1px solid black">
                                    <td class="style2">افراد آنلاین :</td>
                                    <td>
                                        <asp:Label ID="lblOnline" runat="server" ForeColor="#009900"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="Items">
                            <table class="style1" dir="rtl">
                                <tr style="border-bottom: 1px solid black">
                                    <td class="style2">بازدید امروز :</td>
                                    <td>
                                        <asp:Label ID="lblSeeNow" runat="server" ForeColor="#009900"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="Items">
                            <table class="style1" dir="rtl">
                                <tr style="border-bottom: 1px solid black">
                                    <td class="style2">بازدید دیروز :</td>
                                    <td>
                                        <asp:Label ID="lblSeeLast" runat="server" ForeColor="#009900"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="Items">
                            <table class="style1" dir="rtl">
                                <tr style="border-bottom: 1px solid black">
                                    <td class="style2">بازدید این ماه :</td>
                                    <td>
                                        <asp:Label ID="lblSeeMonth" runat="server" ForeColor="#009900"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="Items">
                            <table class="style1" dir="rtl">
                                <tr style="border-bottom: 1px solid black">
                                    <td class="style2">بازدید کل :</td>
                                    <td>
                                        <asp:Label ID="lblSeeAll" runat="server" ForeColor="#009900"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="Items">
                            <table class="style1" dir="rtl">
                                <tr style="border-bottom: 1px solid black">
                                    <td class="style2">تاریخ شروع آمار :</td>
                                    <td>
                                        <asp:Label ID="lblStart" runat="server" ForeColor="#009900"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <div class="col-sm-6">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <i class="fa fa-external-link-square"></i>
                    آمار بازدیدکننده سایت

                <div class="panel-tools">
                    <a class="btn btn-xs btn-link panel-collapse collapses" href="#"></a>
                    <a class="btn btn-xs btn-link panel-config" href="#panel-config" data-toggle="modal">
                        <i class="fa fa-wrench"></i>
                    </a>
                    <a class="btn btn-xs btn-link panel-refresh" href="#">
                        <i class="fa fa-refresh"></i>
                    </a>
                    <a class="btn btn-xs btn-link panel-expand" href="#">
                        <i class="fa fa-resize-full"></i>
                    </a>
                    <a class="btn btn-xs btn-link panel-close" href="#">
                        <i class="fa fa-times"></i>
                    </a>
                </div>
                </div>
                <div class="panel-body">
                    <div class="Main">

                        <div class="Items">
                            <table class="style1" dir="rtl">
                                <tr style="border-bottom: 1px solid black">
                                    <td class="style2">بازدید کننده امروز :</td>
                                    <td>
                                        <asp:Label ID="lblVisitorNow" runat="server" ForeColor="#009900"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="Items">
                            <table class="style1" dir="rtl">
                                <tr style="border-bottom: 1px solid black">
                                    <td class="style2">بازدید کننده دیروز :</td>
                                    <td>
                                        <asp:Label ID="lblVisitorLast" runat="server" ForeColor="#009900"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="Items">
                            <table class="style1" dir="rtl">
                                <tr style="border-bottom: 1px solid black">
                                    <td class="style2">بازدید کننده این ماه :</td>
                                    <td>
                                        <asp:Label ID="lblVisitorMonth" runat="server" ForeColor="#009900"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="Items">
                            <table class="style1" dir="rtl">
                                <tr style="border-bottom: 1px solid black">
                                    <td class="style2">بازدید کننده کل :</td>
                                    <td>
                                        <asp:Label ID="lblVisitorAll" runat="server" ForeColor="#009900"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <!-- start: CATEGORIES PANEL -->
            <div class="panel panel-default">
                <div class="panel-heading">
                    <i class="fa fa-external-link-square"></i>
                    فروش ماهیانه
								
                    <div class="panel-tools">
                        <a class="btn btn-xs btn-link panel-collapse collapses" href="#"></a>
                        <a class="btn btn-xs btn-link panel-config" href="#panel-config" data-toggle="modal">
                            <i class="fa fa-wrench"></i>
                        </a>
                        <a class="btn btn-xs btn-link panel-refresh" href="#">
                            <i class="fa fa-refresh"></i>
                        </a>
                        <a class="btn btn-xs btn-link panel-expand" href="#">
                            <i class="fa fa-resize-full"></i>
                        </a>
                        <a class="btn btn-xs btn-link panel-close" href="#">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>
                </div>
                <div class="panel-body">
                    <div class="flot-small-container">
                        <div id="placeholder5" class="flot-placeholder"></div>
                    </div>
                </div>
            </div>
            <!-- end: CATEGORIES PANEL -->
        </div>
        <div class="col-md-6">
            <!-- start: CATEGORIES PANEL -->
            <div class="panel panel-default">
                <div class="panel-heading">
                    <i class="fa fa-external-link-square"></i>
                    فروش روزانه
								
                    <div class="panel-tools">
                        <a class="btn btn-xs btn-link panel-collapse collapses" href="#"></a>
                        <a class="btn btn-xs btn-link panel-config" href="#panel-config" data-toggle="modal">
                            <i class="fa fa-wrench"></i>
                        </a>
                        <a class="btn btn-xs btn-link panel-refresh" href="#">
                            <i class="fa fa-refresh"></i>
                        </a>
                        <a class="btn btn-xs btn-link panel-expand" href="#">
                            <i class="fa fa-resize-full"></i>
                        </a>
                        <a class="btn btn-xs btn-link panel-close" href="#">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>
                </div>
                <div class="panel-body">
                    <div class="flot-small-container">
                        <div id="placeholder6" class="flot-placeholder"></div>
                    </div>
                </div>
            </div>
            <!-- end: CATEGORIES PANEL -->
        </div>
    </div>

    <div class="row">

        <div class="col-md-6">
            <!-- start: LABEL FORMATTER PANEL -->
            <div class="panel panel-default">
                <div class="panel-heading">
                    <i class="fa fa-external-link-square"></i>
                    محصولات در گروه اصلی
								
                    <div class="panel-tools">
                        <a class="btn btn-xs btn-link panel-collapse collapses" href="#"></a>
                        <a class="btn btn-xs btn-link panel-config" href="#panel-config" data-toggle="modal">
                            <i class="fa fa-wrench"></i>
                        </a>
                        <a class="btn btn-xs btn-link panel-refresh" href="#">
                            <i class="fa fa-refresh"></i>
                        </a>
                        <a class="btn btn-xs btn-link panel-expand" href="#">
                            <i class="fa fa-resize-full"></i>
                        </a>
                        <a class="btn btn-xs btn-link panel-close" href="#">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>
                </div>
                <div class="panel-body">
                    <div class="flot-small-container">
                        <div id="placeholder8" class="flot-placeholder"></div>
                    </div>
                </div>
            </div>
            <!-- end: LABEL FORMATTER PANEL -->
        </div>

        <div class="col-md-6">
            <!-- start: LABEL FORMATTER PANEL -->
            <div class="panel panel-default">
                <div class="panel-heading">
                    <i class="fa fa-external-link-square"></i>
                    محصولات در گروه فرعی
								
                    <div class="panel-tools">
                        <a class="btn btn-xs btn-link panel-collapse collapses" href="#"></a>
                        <a class="btn btn-xs btn-link panel-config" href="#panel-config" data-toggle="modal">
                            <i class="fa fa-wrench"></i>
                        </a>
                        <a class="btn btn-xs btn-link panel-refresh" href="#">
                            <i class="fa fa-refresh"></i>
                        </a>
                        <a class="btn btn-xs btn-link panel-expand" href="#">
                            <i class="fa fa-resize-full"></i>
                        </a>
                        <a class="btn btn-xs btn-link panel-close" href="#">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>
                </div>
                <div class="panel-body">
                    <div class="flot-small-container">
                        <div id="placeholder9" class="flot-placeholder"></div>
                    </div>
                </div>
            </div>
            <!-- end: LABEL FORMATTER PANEL -->
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <!-- start: TOGGLING SERIES PANEL -->
            <div class="panel panel-default">
                <div class="panel-heading">
                    <i class="fa fa-external-link-square"></i>
                    آمار ثبت نام کاربران سایت در ماه های سال
								
                    <div class="panel-tools">
                        <a class="btn btn-xs btn-link panel-collapse collapses" href="#"></a>
                        <a class="btn btn-xs btn-link panel-config" href="#panel-config" data-toggle="modal">
                            <i class="fa fa-wrench"></i>
                        </a>
                        <a class="btn btn-xs btn-link panel-refresh" href="#">
                            <i class="fa fa-refresh"></i>
                        </a>
                        <a class="btn btn-xs btn-link panel-expand" href="#">
                            <i class="fa fa-resize-full"></i>
                        </a>
                        <a class="btn btn-xs btn-link panel-close" href="#">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>
                </div>
                <div class="panel-body">
                    <div class="flot-container">
                        <div id="placeholder2" class="flot-placeholder"></div>
                        <p id="choices"></p>
                    </div>
                </div>
            </div>
            <!-- end: TOGGLING SERIES PANEL -->
        </div>
    </div>

</body>
</html>
