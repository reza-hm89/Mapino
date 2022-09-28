<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductGroups.aspx.cs" Inherits="Mngmnt_ProductGroups" %>

<!DOCTYPE html>
<html lang="fa" class="no-js">
<head>

    <meta charset="utf-8" />
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1" /><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">

    <script src="js/ProductGroup1.js"></script>
    <script src="js/ProductGroup2.js"></script>
</head>

<body class="rtl">

    <div class="row">
        <div class="col-sm-12">

            <ol class="breadcrumb">
                <li>
                    <i class="clip-file"></i>
                    <a href="Default.aspx">صفحه اصلی</a>
                </li>
                <li class="active">گروه های محصولات</li>
            </ol>
            <div class="page-header">
                <h1>گروه های محصولات</h1>
            </div>

        </div>
    </div>

    <div class="row">
        <div class="col-sm-12">
            <div class="tabbable">
                <ul class="nav nav-tabs tab-padding tab-space-3 tab-blue" id="myTab4">
                    <li class="active">
                        <a data-toggle="tab" href="#group1">گروه بندی سطح 1</a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#group2">گروه بندی سطح 2</a>
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
                                        <a class="btn btn-xs btn-link panel-config" data-toggle="modal">
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

                                    <div id="divInsert1" style="display: none">
                                        <div class="form-group">
                                            <label class="col-sm-1 control-label">
                                                نام
                                            </label>
                                            <div class="col-sm-4">
                                                <input type="text" placeholder="نام" id="txtName1" class="form-control InputRequire1">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-1 control-label">
                                                اولویت نمایش (صعودی)									
                                            </label>
                                            <div class="col-sm-4">
                                                <input type="number" id="txtPriority1" class="form-control InputRequire1" />
                                            </div>

                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-1 control-label">
                                                تصویر 
                                            </label>
                                            <div class="col-sm-4">
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
                                            <label class="col-sm-1 control-label">
                                                لینک
													
                                            </label>
                                            <div class=" col-sm-4">
                                                <input type="text" placeholder="لینک" class="form-control " id="txtLink1" name="">
                                            </div>

                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-1 control-label ">
                                                نحوه باز شدن
									
                                            </label>
                                            <div class="col-sm-4">
                                                <select id="DrpOpenLink1" class="form-control">
                                                    <option value="_self">باز شدن در خود پنجره</option>
                                                    <option value="_blank">باز شدن در پنجره جدید</option>
                                                </select>
                                            </div>

                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-1 control-label">
                                                توضیحات 
                                            </label>
                                            <div class="col-sm-4">
                                                <input type="text" class="form-control" id="txtDescription" placeholder="توضیحات">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-1 control-label">
                                                زبان									
                                            </label>
                                            <div class="col-sm-4">
                                                <select id="DrpLanguage1" class="form-control">
                                                </select>
                                            </div>

                                        </div>

                                        <div id="div1" class="form-group">
                                            <div id="DivCancel1" class="col-sm-2 col-sm-offset-1" style="display: none">
                                                <button id="btnCancel1" class="btn btn-gra btn-block">
                                                    انصراف
                                                </button>
                                            </div>
                                            <div id="DivSave1" class="col-sm-2 col-sm-offset-1">
                                                <button id="btnSaveGroup1" class="btn btn-blue  btn-block">
                                                    ثبت اطلاعات 
                                                </button>
                                            </div>
                                        </div>
                                    </div>

                                    <a id="btnDelete1" class="btn  btn-bricky" style="display: none; float: left; margin-bottom: 3px" href="#"><i class="fa fa-trash-o"></i>حذف رکورد </a>
                                    <div style="clear: both"></div>
                                    <div id="divData1" class="table-responsive">
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
                                        <a class="btn btn-xs btn-link panel-config" data-toggle="modal">
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

                                    <div id="divInsert2" style="display: none">
                                        <div class="form-group">
                                            <label class="col-sm-1 control-label">
                                                نام
                                            </label>
                                            <div class="col-sm-4">
                                                <input type="text" placeholder="نام" id="txtName2" class="form-control InputRequire2">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-1 control-label ">
                                                والد
									
                                            </label>
                                            <div class="col-sm-4">
                                                <select id="DrpParent" class="form-control InputRequire">
                                                </select>
                                            </div>

                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-1 control-label">
                                                لینک
													
                                            </label>
                                            <div class=" col-sm-4">
                                                <input type="text" placeholder="لینک" class="form-control " id="txtLink2" name="">
                                            </div>

                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-1 control-label ">
                                                نحوه باز شدن
									
                                            </label>
                                            <div class="col-sm-4">
                                                <select id="DrpOpenLink2" class="form-control">
                                                    <option value="_self">باز شدن در خود پنجره</option>
                                                    <option value="_blank">باز شدن در پنجره جدید</option>
                                                </select>
                                            </div>

                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-1 control-label">
                                                گروه سطح 1									
                                            </label>
                                            <div class="col-sm-4">
                                                <select id="DrpGroup1" class="form-control">
                                                </select>
                                            </div>

                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-1 control-label">
                                                اولویت نمایش (صعودی)									
                                            </label>
                                            <div class="col-sm-4">
                                                <input type="number" id="txtPriority2" class="form-control InputRequire2" />
                                            </div>

                                        </div>

                                        <div class="form-group">
                                            <label class="col-sm-1 control-label">
                                                زبان									
                                            </label>
                                            <div class="col-sm-4">
                                                <select id="DrpLanguage2" class="form-control">
                                                </select>
                                            </div>

                                        </div>
                                        <div id="div2" class="form-group">
                                            <div id="DivCancel2" class="col-sm-2 col-sm-offset-1" style="display: none">
                                                <button id="btnCancel2" class="btn btn-gra btn-block">
                                                    انصراف
                                                </button>
                                            </div>
                                            <div id="DivSave2" class="col-sm-2 col-sm-offset-1">
                                                <button id="btnSaveGroup2" class="btn btn-blue  btn-block">
                                                    ثبت اطلاعات 
                                                </button>
                                            </div>
                                        </div>
                                    </div>

                                    <a id="btnDelete2" class="btn  btn-bricky" style="display: none; float: left; margin-bottom: 3px" href="#"><i class="fa fa-trash-o"></i>حذف رکورد </a>
                                    <div style="clear: both"></div>
                                    <div id="divData2" class="table-responsive">
                                    </div>
                                </div>
                            </div>


                        </div>

                    </div>

                </div>
            </div>
        </div>
    </div>

</body>
</html>
