<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BackupList.aspx.cs" Inherits="Mngmnt_BackupList" %>

<!DOCTYPE html>
<html lang="fa" class="no-js">
<head>

    <meta charset="utf-8" />
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1" /><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">

    <script src="js/BackupList.js"></script>

</head>

<body class="rtl">

    <div class="row">
        <div class="col-sm-12">

            <ol class="breadcrumb">
                <li>
                    <i class="clip-file"></i>
                    <a href="Default.aspx">صفحه اصلی</a>
                </li>
                <li class="active">پشتیبان گیری اطلاعات</li>
            </ol>
            <div class="page-header">
                <h1>پشتیبان گیری اطلاعات</h1>
            </div>

        </div>
    </div>



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

            <div >
                <div class="form-group">
                    <label class="col-sm-1 control-label">
                        توضیحات
                    </label>
                    <div class="col-sm-4">
                        <textarea id="txtDescription" class="form-control InputRequire1"></textarea>
                    </div>
                </div>
               
                <div id="div1" class="form-group">                   
                    <div id="DivSave1" class="col-sm-2 col-sm-offset-1">
                        <button id="btnSaveBackup" class="btn btn-blue  btn-block">
                            پشتیبان گیری 
                        </button>
                    </div>
                </div>
            </div>

            <a id="btnDelete1" class="btn  btn-bricky" style="display: none; float: left; margin-bottom: 3px" href="#"><i class="fa fa-trash-o"></i> حذف رکورد </a>
            <div style="clear: both"></div>
            <div id="divData1" class="table-responsive">
            </div>
        </div>
    </div>
</body>
</html>
