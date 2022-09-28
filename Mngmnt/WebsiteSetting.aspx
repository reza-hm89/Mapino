<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebsiteSetting.aspx.cs" Inherits="Mngmnt_WebsiteSetting" %>

<!DOCTYPE html>
<html lang="fa" class="no-js">
<head>

    <meta charset="utf-8" />
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1" /><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    
     <script src="assets/plugins/ckeditor/ckeditor.js"></script>
    <script src="assets/plugins/ckeditor/adapters/jquery.js"></script>

    <script src="js/WebsiteSetting.js"></script>

    <script>
        $(function () {

            CKEDITOR.replace('txtRoles1', {
                language: 'fa',
                uiColor: '#c7cbd6',
                on: {
                    instanceReady: function (evt) {
                        CKEDITOR.instances["txtRoles1"].setData($("#txtRoles1").val());
                    }
                }
            });
           
        });
        $(function () {

            CKEDITOR.replace('txtRoles2', {
                language: 'fa',
                uiColor: '#c7cbd6',
                on: {
                    instanceReady: function (evt) {
                        CKEDITOR.instances["txtRoles2"].setData($("#txtRoles2").val());
                    }
                }
            });
        });
      
    </script>

    
</head>

<body class="rtl">
    <a data-toggle="modal" id="modal11" href="#myModal1"></a>

    <div class="row">
        <div class="col-sm-12">

            <ol class="breadcrumb">
                <li>
                    <i class="clip-file"></i>
                    <a href="Default.aspx">صفحه اصلی</a>
                </li>
                <li class="active">تنظیمات سایت</li>

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
                <h1>تنظیمات سایت</h1>
            </div>

        </div>
    </div>

    <div class="col-sm-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-external-link-square"></i>
                تنظیمات سایت
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
                <form role="form" class="form-horizontal">

                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            آدرس 1
                        </label>
                        <div class="col-sm-9">
                            <input type="text" placeholder="آدرس 1" id="txtAddress1" class="form-control ">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            آدرس 2
                        </label>
                        <div class="col-sm-9">
                            <input type="text" placeholder="آدرس 2" id="txtAddress2" class="form-control ">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            آدرس 3
                        </label>
                        <div class="col-sm-9">
                            <input type="text" placeholder="آدرس 3" id="txtAddress3" class="form-control ">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            تلفن 1
                        </label>
                        <div class="col-sm-9">
                            <input type="text" placeholder=" تلفن 1" id="txtTel1" class="form-control ">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            تلفن 2
                        </label>
                        <div class="col-sm-9">
                            <input type="text" placeholder=" تلفن 2" id="txtTel2" class="form-control ">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            تلفن 3
                        </label>
                        <div class="col-sm-9">
                            <input type="text" placeholder=" تلفن 3" id="txtTel3" class="form-control ">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            موبایل 1
                        </label>
                        <div class="col-sm-9">
                            <input type="text" placeholder=" موبایل 1" id="txtMobile1" class="form-control ">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            موبایل 2
                        </label>
                        <div class="col-sm-9">
                            <input type="text" placeholder=" موبایل 2" id="txtMobile2" class="form-control ">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            موبایل 3
                        </label>
                        <div class="col-sm-9">
                            <input type="text" placeholder=" موبایل 3" id="txtMobile3" class="form-control ">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            ایمیل 1
                        </label>
                        <div class="col-sm-9">
                            <input type="text" placeholder="ایمیل 1" id="txtEmail1" class="form-control ">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            ایمیل 2
                        </label>
                        <div class="col-sm-9">
                            <input type="text" placeholder="ایمیل 2" id="txtEmail2" class="form-control ">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            ایمیل 3
                        </label>
                        <div class="col-sm-9">
                            <input type="text" placeholder="ایمیل 3" id="txtEmail3" class="form-control ">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Facebook
                        </label>
                        <div class="col-sm-9">
                            <input type="text" placeholder="Facebook" id="txtFacebook" class="form-control ">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Twitter
                        </label>
                        <div class="col-sm-9">
                            <input type="text" placeholder="Twitter" id="txtTwitter" class="form-control ">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            GooglePlus
                        </label>
                        <div class="col-sm-9">
                            <input type="text" placeholder="GooglePlus" id="txtGooglePlus" class="form-control ">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Instagram
                        </label>
                        <div class="col-sm-9">
                            <input type="text" placeholder="Instagram" id="txtInstagram" class="form-control ">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Linkedin
                        </label>
                        <div class="col-sm-9">
                            <input type="text" placeholder="Linkedin" id="txtLinkedin" class="form-control ">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Github
                        </label>
                        <div class="col-sm-9">
                            <input type="text" placeholder="Github" id="txtGithub" class="form-control ">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Skype
                        </label>
                        <div class="col-sm-9">
                            <input type="text" placeholder="Skype" id="txtSkype" class="form-control ">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Viber
                        </label>
                        <div class="col-sm-9">
                            <input type="text" placeholder="Viber" id="txtViber" class="form-control ">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            تصویر هدر 1
                        </label>
                        <div class="col-sm-9">
                            <div class="input-group">
                                <input id="txtHeaderImage1" type="text" readonly="readonly" placeholder="آدرس فایل" class="form-control uneditable-input">
                                <div class="input-group-btn">
                                    <div class="btn btn-light-grey btn-file">

                                        <span id="btnAddHeaderImage1" class="fileupload-new"><i class="fa fa-folder-open-o"></i>انتخاب فایل</span>
                                        <input type="file" id="FileUploadHeaderImage1" class="file-input" style="display: none">
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            تصویر هدر 2
                        </label>
                        <div class="col-sm-9">
                            <div class="input-group">
                                <input id="txtHeaderImage2" type="text" readonly="readonly" placeholder="آدرس فایل" class="form-control uneditable-input">
                                <div class="input-group-btn">
                                    <div class="btn btn-light-grey btn-file">

                                        <span id="btnAddHeaderImage2" class="fileupload-new"><i class="fa fa-folder-open-o"></i>انتخاب فایل</span>
                                        <input type="file" id="FileUploadHeaderImage2" class="file-input" style="display: none">
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            لوگو 1
                        </label>
                        <div class="col-sm-9">
                            <div class="input-group">
                                <input id="txtLogo1" type="text" readonly="readonly" placeholder="آدرس فایل" class="form-control uneditable-input">
                                <div class="input-group-btn">
                                    <div class="btn btn-light-grey btn-file">

                                        <span id="btnAddLogo1" class="fileupload-new"><i class="fa fa-folder-open-o"></i>انتخاب فایل</span>
                                        <input type="file" id="FileUploadLogo1" class="file-input" style="display: none">
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            لوگو 2
                        </label>
                        <div class="col-sm-9">
                            <div class="input-group">
                                <input id="txtLogo2" type="text" readonly="readonly" placeholder="آدرس فایل" class="form-control uneditable-input">
                                <div class="input-group-btn">
                                    <div class="btn btn-light-grey btn-file">

                                        <span id="btnAddLogo2" class="fileupload-new"><i class="fa fa-folder-open-o"></i>انتخاب فایل</span>
                                        <input type="file" id="FileUploadLogo2" class="file-input" style="display: none">
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            تصویر فوتر 1
                        </label>
                        <div class="col-sm-9">
                            <div class="input-group">
                                <input id="txtFooterImage1" type="text" readonly="readonly" placeholder="آدرس فایل" class="form-control uneditable-input">
                                <div class="input-group-btn">
                                    <div class="btn btn-light-grey btn-file">

                                        <span id="btnAddFooterImage1" class="fileupload-new"><i class="fa fa-folder-open-o"></i>انتخاب فایل</span>
                                        <input type="file" id="FileUploadFooterImage1" class="file-input" style="display: none">
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            تصویر فوتر 2
                        </label>
                        <div class="col-sm-9">
                            <div class="input-group">
                                <input id="txtFooterImage2" type="text" readonly="readonly" placeholder="آدرس فایل" class="form-control uneditable-input">
                                <div class="input-group-btn">
                                    <div class="btn btn-light-grey btn-file">

                                        <span id="btnAddFooterImage2" class="fileupload-new"><i class="fa fa-folder-open-o"></i>انتخاب فایل</span>
                                        <input type="file" id="FileUploadFooterImage2" class="file-input" style="display: none">
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            عنوان یا توضیحات در هدر
                        </label>
                        <div class="col-sm-9">
                            <input type="text" placeholder="عنوان یا توضیحات در هدر" id="txtHeaderTitle" class="form-control ">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            عنوان یا توضیحات در فوتر
                        </label>
                        <div class="col-sm-9">
                            <input type="text" placeholder=" عنوان یا توضیحات در فوتر" id="txtFooterDescription" class="form-control ">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            متن کپی رایت
                        </label>
                        <div class="col-sm-9">
                            <input type="text" placeholder=" متن کپی رایت" id="txtCopyRightText" class="form-control ">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            سال کپی رایت
                        </label>
                        <div class="col-sm-9">
                            <input type="text" placeholder=" سال کپی رایت" id="txtCopyRightYear" class="form-control ">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            زبان
									
                        </label>
                        <div class="col-sm-9">
                            <select id="DrpLanguage" class="form-control">
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            فرم قوانین 1
                        </label>
                        <div class="col-sm-9">
                            <textarea class="ckeditor form-control" id="txtRoles1" cols="5" rows="5"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            فرم قوانین 2
                        </label>
                        <div class="col-sm-9">
                            <textarea class="ckeditor form-control" id="txtRoles2" cols="5" rows="5"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            مبلغ تخفیف عمومی
                        </label>
                        <div class="col-sm-9">
                            <input type="text" placeholder="مبلغ تخفیف عمومی " id="txtPublicGift" class="form-control ">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            مبلغ تخفیف معرف
                        </label>
                        <div class="col-sm-9">
                            <input type="text" placeholder=" مبلغ تخفیف معرف" id="txtMoarefGift" class="form-control ">
                        </div>
                    </div>
                    <div class="col-sm-4 col-sm-offset-4">
                        <button id="btnSaveWebsiteSetting" class="btn btn-blue next-step btn-block">
                            ثبت اطلاعات 
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>



    <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
												
                    </button>
                    <h4 class="modal-title">انتخاب زبان</h4>
                </div>
                <div class="modal-body">
                </div>
                <div class="modal-footer">
                    <button id="closeModal" aria-hidden="true" data-dismiss="modal" class="btn btn-default">
                        بستن												
                    </button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
