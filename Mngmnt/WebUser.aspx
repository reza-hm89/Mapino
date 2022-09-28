<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebUser.aspx.cs" Inherits="Mngmnt_WebUser" %>

<!DOCTYPE html>
<html lang="fa" class="no-js">
<head>

    <meta charset="utf-8" />
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1" /><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">

    <script src="js/WebUser.js"></script>

</head>

<body class="rtl">

    <div class="row">
        <div class="col-sm-12">

            <ol class="breadcrumb">
                <li>
                    <i class="clip-file"></i>
                    <a href="#">صفحه اصلی</a>
                </li>
                <li class="active">ثبت کاربر سایت</li>
            </ol>
            <div class="page-header">
                <h1>ثبت کاربر سایت</h1>
            </div>

        </div>
    </div>

    <div class="col-sm-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-external-link-square"></i>

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
            <div class="panel-body form-horizontal">

                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        نام
                    </label>
                    <div class="col-sm-9">
                        <input type="text" placeholder="نام" id="txtName" class="form-control InputRequire">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        نام خانوادگی
                    </label>
                    <div class="col-sm-9">
                        <input type="text" placeholder="نام خانوادگی" id="txtFamily" class="form-control ">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        نام پدر
                    </label>
                    <div class="col-sm-9">
                        <input type="text" placeholder=" نام پدر" id="txtFather" class="form-control ">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        کد ملی
                    </label>
                    <div class="col-sm-9">
                        <input type="text" placeholder="کد ملی" id="txtCodeMeli" class="form-control ">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        شماره شناسنامه
                    </label>
                    <div class="col-sm-9">
                        <input type="text" placeholder="شماره شناسنامه" id="txtShomareSh" class="form-control ">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        تاریخ تولد
                    </label>
                    <div class="col-sm-9">
                        <input type="text" placeholder="تاریخ تولد" id="txtBirthhDay" class="form-control ">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        تلفن
                    </label>
                    <div class="col-sm-9">
                        <input type="text" placeholder="تلفن" id="txtTel" class="form-control ">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        موبایل 
                    </label>
                    <div class="col-sm-9">
                        <input type="text" placeholder="موبایل" id="txtMobile" class="form-control ">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        ایمیل
                    </label>
                    <div class="col-sm-9">
                        <input type="text" placeholder="ایمیل" id="txtEmail" class="form-control ">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        آدرس
                    </label>
                    <div class="col-sm-9">
                        <textarea placeholder="آدرس" id="txtAddress" class="form-control" rows="5"></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        کد پستی
                    </label>
                    <div class="col-sm-9">
                        <input type="text" placeholder="کد پستی" id="txtZipCode" class="form-control ">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        نام صاحب خط تلفن
                    </label>
                    <div class="col-sm-9">
                        <input type="text" placeholder="نام صاحب خط تلفن" id="txtTelOwnerName" class="form-control ">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        نوع کاربر
                    </label>
                    <div class="col-sm-9">
                        <select id="drpKind" class="form-control">
                            <option value="1" selected="selected">کاربر</option>
                            <option value="2">کارشناس</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        جنسیت
                    </label>
                    <div class="col-sm-9">
                        <label class="radio-inline">
                            <input type="radio" class="grey" value="" name="gender" id="gender_female">
                            زن														
                        </label>
                        <label class="radio-inline">
                            <input type="radio" class="grey" value="" name="gender" id="gender_male" checked="checked">
                            مرد														
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        تصویر آواتار
                    </label>
                    <div class="col-sm-9">
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
                    <label class="col-sm-2 control-label">
                        نام کاربری
                    </label>
                    <div class="col-sm-9">
                        <input type="text" placeholder="نام کاربری" id="txtUsername" class="form-control InputRequire">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        رمز عبور
                    </label>
                    <div class="col-sm-9">
                        <input type="password" placeholder=" رمز عبور" id="txtPassword" class="form-control InputRequire">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        تکرار رمز عبور
                    </label>
                    <div class="col-sm-9">
                        <input type="password" placeholder="تکرار رمز عبور" id="txtRepeatPassword" class="form-control InputRequire">
                    </div>
                </div>
                <div class="form-group">
                    <div id="DivCancel" class="col-sm-4 col-sm-offset-2" style="display: none">
                        <button id="btnCancel" class="btn btn-gra btn-block">
                            انصراف
                        </button>
                    </div>
                    <div id="DivSave" class="col-sm-4 col-sm-offset-2">
                        <button id="btnSaveWebUser" class="btn btn-blue  btn-block">
                            ثبت اطلاعات 
                        </button>
                    </div>
                </div>

            </div>
        </div>
    </div>


</body>
</html>
