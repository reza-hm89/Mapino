<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Package.aspx.cs" Inherits="Mngmnt_Package" %>

<!DOCTYPE html>
<html lang="fa" class="no-js">
<head>
    <title></title>

    <meta charset="utf-8" />
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1" /><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">

    <script src="js/Package.js"></script>

</head>

<body class="rtl">

    <div class="row">
        <div class="col-sm-12">

            <ol class="breadcrumb">
                <li>
                    <i class="clip-file"></i>
                    <a href="#">صفحه اصلی</a>
                </li>
                <li class="active">ثبت تعرفه</li>
            </ol>
            <div class="page-header">
                <h1>ثبت تعرفه</h1>
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
                        <input type="text" placeholder="عنوان" id="txtName" class="form-control InputRequire">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        قیمت 
                    </label>
                    <div class="col-sm-9">
                        <input type="text" id="txtPrice" placeholder="قیمت (ريال)" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        تخفیف 
                    </label>
                    <div class="col-sm-9">
                        <input type="text" id="txtDiscount" placeholder="تخفیف (ريال)" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        درصد کارشناس 
                    </label>
                    <div class="col-sm-9">
                        <input type="number" id="txtPercent" min="0" max="100" value="1" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        انتقضا (عدد به ماه) 
                    </label>
                    <div class="col-sm-9">
                        <input type="number" id="txtExpire" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        مدت زمان پاسخگویی (حداقل)
                    </label>
                    <div class="col-sm-9">
                        <input type="number" id="txtMinResponse" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        مدت زمان پاسخگویی (حداکثر)
                    </label>
                    <div class="col-sm-9">
                        <input type="number" id="txtMaxResponse" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        وضعیت کارشناس
                    </label>
                    <div class="col-sm-9">
                        <select id="drpStatus" class="form-control">
                            <option selected="selected">دارد</option>
                            <option>ندارد</option>
                            <option>در حال عقد قرارداد</option>
                            <option>آنلاین</option>
                            <option>آفلاین</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        توضیحات 
                    </label>
                    <div class="col-sm-9">
                        <textarea placeholder="توضیحات" id="txtDescription" class="form-control"></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">
                        کارشناس حضوری
                    </label>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" id="chkIsExpert" value="" class="grey">
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <div id="DivCancel" class="col-sm-4 col-sm-offset-2" style="display: none">
                        <button id="btnCancel" class="btn btn-gra btn-block">
                            انصراف
                        </button>
                    </div>
                    <div id="DivSave" class="col-sm-4 col-sm-offset-2">
                        <button id="btnSavePackage" class="btn btn-blue  btn-block">
                            ثبت اطلاعات 
                        </button>
                    </div>
                </div>

            </div>
        </div>
    </div>

</body>
</html>
