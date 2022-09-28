<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GoogleMap.aspx.cs" Inherits="Mngmnt_GoogleMap" %>

<!DOCTYPE html>
<html lang="fa" class="no-js">
<head>

    <meta charset="utf-8" />
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1" /><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">

    <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/style.css">
    <link rel="stylesheet" href="assets/css/main.css">
    <link rel="stylesheet" href="assets/css/main-responsive.css">
    <link rel="stylesheet" href="assets/plugins/icheck/skins/all.css">
    <link rel="stylesheet" href="assets/plugins/bootstrap-colorpalette/css/bootstrap-colorpalette.css">
    <link rel="stylesheet" href="assets/plugins/perfect-scrollbar/src/perfect-scrollbar-rtl.css">
    <link rel="stylesheet" href="assets/css/theme_light.css" type="text/css" id="skin_color">
    <link rel="stylesheet" href="assets/css/print.css" type="text/css" media="print" />
    <link rel="stylesheet" href="assets/css/rtl-version.css">

    <script src="assets/js/jquery-2.1.3.min.js"></script>


    <script src="assets/plugins/jquery-ui/jquery-ui-1.10.2.custom.min.js"></script>
    <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"></script>
    <script src="assets/plugins/blockui/jquery.blockui.js"></script>
    <script src="assets/plugins/icheck/jquery.icheck.min.js"></script>
    <script src="assets/plugins/perfect-scrollbar/src/jquery.mousewheel.js"></script>
    <script src="assets/plugins/perfect-scrollbar/src/perfect-scrollbar-rtl.js"></script>
    <script src="assets/plugins/jquery-cookie/jquery.cookie.js"></script>
    <script src="assets/plugins/bootstrap-colorpalette/js/bootstrap-colorpalette.js"></script>

    <script src="assets/js/main.js"></script>

    <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="http://maps.googleapis.com/maps/api/js?sensor=false&language=fa" type="text/javascript"></script>
    <script type="text/javascript" src="assets/plugins/gmaps/gmap3.js"></script>
    <script src="js/Maps.js"></script>

    <script>
   
    </script>

</head>

<body class="rtl">

    <div class="row">
        <div class="col-sm-12">

            <ol class="breadcrumb">
                <li>
                    <i class="clip-file"></i>
                    <a href="Default.aspx">صفحه اصلی</a>
                </li>
                <li class="active">گوگل مپ</li>

                <li class="search-box">
                    <form class="sidebar-search">
                        <div class="form-group">
                            <input type="text" placeholder="جستجو ... ">
                            <button class="submit">
                                <i class="clip-search-3"></i>
                            </button>
                        </div>
                    </form>
                </li>
            </ol>
            <div class="page-header">
                <h1>گوگل مپ</h1>
            </div>

        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading">
            <i class="fa fa-external-link-square"></i>
            گوگل مپ								
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

            <div id="map_canvas" class="table-responsive" style="width: 100%; height: 600px">
            </div>
            <div class="col-lg-12">
                <div id="dialog" class="panel-body form-horizontal" style="background-color: white; width: 150%; right: 0 !important">
                      <div class="form-group">
                        <label class="col-md-3 control-label">
                            استان
                        </label>
                        <div class="col-md-9">
                            <select id="drpRegion" class="form-control InputRequire">
                            </select>
                        </div>
                    </div>
                      <div class="form-group">
                        <label class="col-md-3 control-label">
                            شهر
                        </label>
                        <div class="col-md-9">
                            <select id="drpCity" class="form-control InputRequire">
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">
                            دسته بندی اصلی
                        </label>
                        <div class="col-md-9">
                            <select id="drpGroup1" class="form-control InputRequire">
                            </select>
                        </div>
                    </div>
                      <div class="form-group">
                        <label class="col-md-3 control-label">
                            دسته بندی فرعی
                        </label>
                        <div class="col-md-9">
                            <select id="drpGroup2" class="form-control InputRequire">
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">
                            عنوان شغل
                        </label>
                        <div class="col-sm-9">
                            <input type="text" placeholder="عنوان شغل" id="txtName" class="form-control InputRequire">
                        </div>
                    </div>
                       <div class="form-group">
                        <label class="col-sm-3 control-label">
                            تلفن تماس
                        </label>
                        <div class="col-sm-9">
                            <input type="text" placeholder="  تلفن تماس" id="txtTel" class="form-control InputRequire">
                        </div>
                    </div>
                      <div class="form-group">
                        <label class="col-sm-3 control-label">
                            آدرس
                        </label>
                        <div class="col-sm-9">
                            <input type="text" placeholder="آدرس" id="txtAddress" class="form-control InputRequire">
                        </div>
                    </div>
                    <div class="form-group">
                        <div id="DivCancel" class="col-sm-4 col-sm-offset-2" style="display: none">
                            <button id="btnCancel" class="btn btn-gra btn-block">
                                انصراف
                            </button>
                        </div>
                        <div id="DivSave" class="col-sm-4 col-sm-offset-3">
                            <button id="btnSavePlace" class="btn btn-blue  btn-block">
                                ثبت اطلاعات 
                            </button>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>



</body>

</html>
