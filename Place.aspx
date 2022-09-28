<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Place.aspx.cs" Inherits="Place" %>

<asp:Content runat="server" ContentPlaceHolderID="head">

    <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="js/bootstrap.js"></script>
    <script type="text/javascript" charset="utf-8" src="js/jquery-ui.min.js"></script>

    <script src="http://maps.googleapis.com/maps/api/js?sensor=false&language=fa" type="text/javascript"></script>
    <script type="text/javascript" src="Mngmnt/assets/plugins/gmaps/gmap3.js"></script>
    <script src="js/Place.js"></script>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="Main">


    <main class="main-inner" style="padding: 0">

        <div class="col-xs-12 col-sm-12 col-md-12 no-pddng f-right">
            <div class="map" style="height: 750px">
                <div id="map_canvas" class="table-responsive" style="width: 100%; height: 800px">
                </div>

            </div>
        </div>
        <div class="clearfix"></div>
    </main>

    <div id="divPlaceInfo" class="col-lg-12" style="display: none">
        <div id="dialog" class="panel-body form-horizontal f-right PlaceDialog">
            <div class="form-group">
                <label class="col-md-3 col-xs-3 col-sm-3 control-label f-right">
                    استان
                </label>
                <div class="col-xs-9 col-sm-9 col-md-9 f-right">
                    <select id="drpRegion" class="form-control InputRequire">
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 col-xs-3 col-sm-3 control-label f-right">
                    شهر
                </label>
                <div class="col-xs-9 col-sm-9 col-md-9 f-right">
                    <select id="drpCity" class="form-control InputRequire">
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 col-xs-3 col-sm-3 control-label f-right">
                    دسته بندی اصلی
                </label>
                <div class="col-xs-9 col-sm-9 col-md-9 f-right">
                    <select id="drpGroup1" class="form-control InputRequire">
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 col-xs-3 col-sm-3 control-label f-right">
                    دسته بندی فرعی
                </label>
                <div class="col-xs-9 col-sm-9 col-md-9 f-right">
                    <select id="drpGroup2" class="form-control InputRequire">
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 col-xs-3 col-sm-3 control-label f-right">
                    عنوان شغل
                </label>
                <div class="col-xs-9 col-sm-9 col-md-9 f-right">
                    <input type="text" placeholder="عنوان شغل" id="txtName" class="form-control InputRequire2" />
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 col-xs-3 col-sm-3 control-label f-right">
                    تلفن تماس
                </label>
                <div class="col-xs-9 col-sm-9 col-md-9 f-right">
                    <input type="text" placeholder="تلفن تماس" id="txtTel" class="form-control InputRequire2" />
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 col-xs-3 col-sm-3 control-label f-right">
                    آدرس
                </label>
                <div class="col-xs-9 col-sm-9 col-md-9 f-right">
                    <input type="text" placeholder="آدرس" id="txtAddress" class="form-control InputRequire2" />
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 col-xs-3 col-sm-3 control-label f-right">
                    لوگو 
                </label>
                <div class="col-xs-9 col-sm-9 col-md-9 f-right">
                    <div class="input">
                        <input id="txtUrl" type="text" readonly="readonly" placeholder="آدرس فایل" class="form-control uneditable-input " />
                        <div class="input-group-btn">
                            <div class="btn btn-light-grey btn-file">
                                <input type="file" id="FileUpload" class="file-input" 
                                    accept="image/jpg,image/png,image/jpeg,image/gif" style="display: none" />
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group">
             
                <div id="DivSave" class="col-sm-4 col-sm-offset-3">
                    <button type="button" id="btnSavePlace" class="btn location-reg">
                        ثبت اطلاعات 
                    </button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
