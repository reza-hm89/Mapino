<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Place.aspx.cs" Inherits="Mngmnt_Place" %>

<!DOCTYPE html>
<html lang="fa" class="no-js">
<head>

    <meta charset="utf-8" />
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1" /><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">

    <link rel="stylesheet" type="text/css" href="assets/css/dropzone.css" />
    <script src="assets/js/dropzone.js"></script>

    <script src="js/Place.js"></script>

    <script type="text/javascript">

        Dropzone.options.myAwesomeDropzone = {
            paramName: "file", // The name that will be used to transfer the file
            maxFilesize: 0.5, // MB
            maxFiles: 20,
            clickable: true,
            addRemoveLinks: true,
            url: "Place.aspx?tid=<%=Request.QueryString["tid"]%>",
            init: function () {
                this.on("queuecomplete", function (file) {
                    HideLoading();
                }),
                    this.on("totaluploadprogress", function (file) {
                        ShowLoading();
                    }),
                    this.on("removedfile", function (file) {
                        HideLoading();
                    });
            }
        };
    </script>


    <style>
        .picUpload {
            width: 90px;
            height: 90px;
            border: solid thin #e4e8eb;
            border-radius: 7px;
            margin-left: 8px;
            margin-top: 10px;
            float: right;
        }

            .picUpload:hover {
                opacity: 0.7;
                -khtml-opacity: 0.7;
                -moz-opacity: 0.7;
                -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=70)";
                cursor: pointer;
            }

        .picUploadList {
            width: 100%;
            height: 115px;
            overflow-y: auto;
        }
    </style>
</head>

<body class="rtl">

    <div class="row">
        <div class="col-sm-12">

            <ol class="breadcrumb">
                <li>
                    <i class="clip-file"></i>
                    <a href="Default.aspx">صفحه اصلی</a>
                </li>
                <li class="active">ثبت مکان</li>
            </ol>
            <div class="page-header">
                <h1>ثبت مکان</h1>
            </div>

        </div>
    </div>

    <div class="row">
        <div class="col-sm-12">
            <div class="tabbable">
                <ul class="nav nav-tabs tab-padding tab-space-3 tab-blue" id="myTab4">
                    <li class="active">
                        <a data-toggle="tab" href="#group1">اطلاعات اصلی</a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#group2">اطلاعات تماس</a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#group3">خدمات</a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#group4">امکانات</a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#group5">ساعات کاری</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div id="group1" class="tab-pane in active">
                        <div class="row">

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <i class="fa fa-external-link-square"></i>

                                    <div class="panel-tools">
                                        <a class="btn btn-xs btn-link panel-collapse collapses" href="#"></a>
                                        <a class="btn btn-xs btn-link panel-config" href="#" data-toggle="modal">
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
                                <div class="panel-body form-horizontal">

                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            نام/عنوان <span class="symbol required"></span>
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control InputRequire" id="txtName" placeholder="نام/عنوان">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            گروه اصلی کسب و کار <span class="symbol required"></span>
                                        </label>
                                        <div class="col-sm-7">
                                            <select id="DrpGroup1" class="form-control">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            گروه فرعی کسب و کار <span class="symbol required"></span>
                                        </label>
                                        <div class="col-sm-7">
                                            <select id="DrpGroup2" class="form-control">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            انتخاب استان <span class="symbol required"></span>
                                        </label>
                                        <div class="col-sm-7">
                                            <select id="DrpRegion" class="form-control">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            انتخاب شهر <span class="symbol required"></span>
                                        </label>
                                        <div class="col-sm-7">
                                            <select id="DrpCity" class="form-control">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            لوگو 
                                        </label>
                                        <div class="col-sm-7">
                                            <div class="input-group">
                                                <input id="txtUrl" type="text" readonly="readonly" placeholder="آدرس فایل" class="form-control uneditable-input ">
                                                <div class="input-group-btn">
                                                    <div class="btn btn-light-grey btn-file">
                                                        <span id="btnAddImage" class="fileupload-new"><i class="fa fa-folder-open-o"></i>انتخاب فایل</span>
                                                        <input type="file" id="FileUpload" class="file-input" style="display: none">
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            شعار 
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="txtBanner" placeholder="شعار">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            نام مالک
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="txtOwner" placeholder=" نام مالک">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            توضیحات 
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="txtDescription" placeholder="توضیحات">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            انتخاب تصاویر
                                        </label>
                                        <div class="col-sm-7">
                                            <div class="input-group">
                                                <div class="input-group-btn">
                                                    <div class="btn btn-light-grey btn-file">
                                                        <span id="btnAddImage1" class="fileupload-new"><i class="fa fa-folder-open-o"></i>انتخاب فایل</span>
                                                        <input type="file" id="FileUpload1" class="file-input" style="display: none">
                                                    </div>

                                                </div>
                                            </div>
                                            <div id="my-awesome-dropzone" class="dropzone"
                                                style="max-height: 333px; overflow-y: auto; width: 103%; margin-top: 10px; border: 1px solid lightgray;">
                                                <div class="fallback">
                                                    <input id="File1" name="file" type="file" multiple="multiple" runat="server" />
                                                    <input name="btnUpload" type="submit" /><br />
                                                    <br />
                                                    <asp:Label ID="lblFallbackMessage" runat="server" />
                                                </div>
                                            </div>
                                            <div class="picUploadList">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div id="group2" class="tab-pane">

                        <div class="row">

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <i class="fa fa-external-link-square"></i>

                                    <div class="panel-tools">
                                        <a class="btn btn-xs btn-link panel-collapse collapses" href="#"></a>
                                        <a class="btn btn-xs btn-link panel-config" href="#" data-toggle="modal">
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
                                <div class="panel-body form-horizontal">

                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            تلفن
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="txtTel" placeholder="تلفن">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            فکس
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="txtFax" placeholder="فکس">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            موبایل
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="txtMobile" placeholder="موبایل">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            ایمیل
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="txtEmail" placeholder="ایمیل">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            وب سایت
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="txtWebsite" placeholder="وب سایت">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            آدرس مکان
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="txtAddress" placeholder=" آدرس مکان">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            موقعیت جغرافیایی
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="txtPosition" placeholder="موقعیت جغرافیایی">
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>

                    </div>

                    <div id="group3" class="tab-pane">

                        <div class="row">

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <i class="fa fa-external-link-square"></i>

                                    <div class="panel-tools">
                                        <a class="btn btn-xs btn-link panel-collapse collapses" href="#"></a>
                                        <a class="btn btn-xs btn-link panel-config" href="#" data-toggle="modal">
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
                                <div class="panel-body form-horizontal">

                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            نام خدمات 
                                        </label>
                                        <div class="col-sm-5">
                                            <input type="text" class="form-control" id="txtService" placeholder="نام خدمت ">
                                        </div>
                                        <div class="col-sm-2">
                                            <a class="btn btn-primary" id="btnAddToServiceList"><i class="fa fa-plus"></i>
                                                اضافه به لیست</a>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            لیست خدمات
                                        </label>
                                        <div class="col-sm-5">
                                            <select multiple="multiple" id="DrpServices" class="form-control">
                                            </select>

                                        </div>
                                        <div class="col-sm-2">
                                            <a class="btn btn-bricky" id="btnRemoveFromList"><i class="fa fa-trash-o"></i>
                                                حذف آیتم انتخابی</a>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>

                    </div>

                    <div id="group4" class="tab-pane">

                        <div class="row">

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <i class="fa fa-external-link-square"></i>

                                    <div class="panel-tools">
                                        <a class="btn btn-xs btn-link panel-collapse collapses" href="#"></a>
                                        <a class="btn btn-xs btn-link panel-config" href="#" data-toggle="modal">
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
                                <div class="panel-body form-horizontal">

                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            نام امکانات 
                                        </label>
                                        <div class="col-sm-5">
                                            <input type="text" class="form-control" id="txtFacilities" placeholder="نام امکانات ">
                                        </div>
                                        <div class="col-sm-2">
                                            <a class="btn btn-primary" id="btnAddToFacilitisList"><i class="fa fa-plus"></i>
                                                اضافه به لیست</a>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            لیست امکانات
                                        </label>
                                        <div class="col-sm-5">
                                            <select multiple="multiple" id="DrpFacilities" class="form-control">
                                            </select>
                                        </div>
                                        <div class="col-sm-2">
                                            <a class="btn btn-bricky" id="btnRemoveFromFacilitisList"><i class="fa fa-trash-o"></i>
                                                حذف آیتم انتخابی</a>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>

                    </div>

                    <div id="group5" class="tab-pane">

                        <div class="row">

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <i class="fa fa-external-link-square"></i>

                                    <div class="panel-tools">
                                        <a class="btn btn-xs btn-link panel-collapse collapses" href="#"></a>
                                        <a class="btn btn-xs btn-link panel-config" href="#" data-toggle="modal">
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
                                <div class="panel-body form-horizontal">

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">
                                            شنبه
                                        </label>
                                        <div class="col-sm-3">
                                            <input type="text" class="form-control" id="txtStart1" placeholder="08:00">
                                        </div>
                                        <div class="col-sm-3">
                                            <input type="text" class="form-control" id="txtEnd1" placeholder="21:30">
                                        </div>
                                        <label class="col-sm-1 control-label">
                                            تعطیل
                                        </label>
                                        <div class="col-xs-1">
                                            <input type="checkbox" class="form-control" id="txtClosed1" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">
                                            یکشنبه
                                        </label>
                                        <div class="col-sm-3">
                                            <input type="text" class="form-control" id="txtStart2">
                                        </div>
                                        <div class="col-sm-3">
                                            <input type="text" class="form-control" id="txtEnd2">
                                        </div>
                                        <label class="col-sm-1 control-label">
                                            تعطیل
                                        </label>
                                        <div class="col-xs-1">
                                            <input type="checkbox" class="form-control" id="txtClosed2" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">
                                            دوشنبه
                                        </label>
                                        <div class="col-sm-3">
                                            <input type="text" class="form-control" id="txtStart3">
                                        </div>
                                        <div class="col-sm-3">
                                            <input type="text" class="form-control" id="txtEnd3">
                                        </div>
                                        <label class="col-sm-1 control-label">
                                            تعطیل
                                        </label>
                                        <div class="col-xs-1">
                                            <input type="checkbox" class="form-control" id="txtClosed3" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">
                                            سه شنبه
                                        </label>
                                        <div class="col-sm-3">
                                            <input type="text" class="form-control" id="txtStart4">
                                        </div>
                                        <div class="col-sm-3">
                                            <input type="text" class="form-control" id="txtEnd4">
                                        </div>
                                        <label class="col-sm-1 control-label">
                                            تعطیل
                                        </label>
                                        <div class="col-xs-1">
                                            <input type="checkbox" class="form-control" id="txtClosed4" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">
                                            چهارشنبه
                                        </label>
                                        <div class="col-sm-3">
                                            <input type="text" class="form-control" id="txtStart5">
                                        </div>
                                        <div class="col-sm-3">
                                            <input type="text" class="form-control" id="txtEnd5">
                                        </div>
                                        <label class="col-sm-1 control-label">
                                            تعطیل
                                        </label>
                                        <div class="col-xs-1">
                                            <input type="checkbox" class="form-control" id="txtClosed5" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">
                                            پنجشنبه
                                        </label>
                                        <div class="col-sm-3">
                                            <input type="text" class="form-control" id="txtStart6">
                                        </div>
                                        <div class="col-sm-3">
                                            <input type="text" class="form-control" id="txtEnd6">
                                        </div>
                                        <label class="col-sm-1 control-label">
                                            تعطیل
                                        </label>
                                        <div class="col-xs-1">
                                            <input type="checkbox" class="form-control" id="txtClosed6" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">
                                            جمعه
                                        </label>
                                        <div class="col-sm-3">
                                            <input type="text" class="form-control" id="txtStart7">
                                        </div>
                                        <div class="col-sm-3">
                                            <input type="text" class="form-control" id="txtEnd7">
                                        </div>
                                        <label class="col-sm-1 control-label">
                                            تعطیل
                                        </label>
                                        <div class="col-xs-1">
                                            <input type="checkbox" class="form-control" id="txtClosed7" />
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>

                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="form-horizontal">
                        <div id="DivCancel" class="col-sm-2 col-sm-offset-6" style="display: none">
                            <button id="btnCancel" class="btn btn-gra btn-block">
                                انصراف
                            </button>
                        </div>
                        <div id="DivSave" class="col-sm-4 col-sm-offset-8">
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
