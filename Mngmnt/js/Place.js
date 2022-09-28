var placeId = -1;

var productGroupId1 = -1;
var productGroupId2 = -1;

var regionId = -1;
var cityId = -1;

$(document).ready(function () {

   
    if (ModulePermission.Insert == false || ModulePermission.Update == false) {

        $("#container").empty();
        $("#container").load("404.aspx");
    }

    if ($("#EditMode").val() == "false") {
        $("#DivSave").addClass("col-sm-offset-2");

        LoadGroupDropDown1();

        LoadRegionDropDown();
    }

    $("#btnCancel").click(function () {
        $("#container").load("PlaceList.aspx");
    });

    $("#btnSavePlace").click(function () {

        if (ValidateData() == true) {

            $("#btnSavePlace").css({ "background-image": "url('pics/loading1.gif')", "background-repeat": "no-repeat", "background-size": "25px", "background-position": "2px" });

            if ($("#txtUrl").val() != "") {

                if ($("#EditMode").val() == "false") {
                    UploadImage();
                } else {
                    if (checkUrl(placeId) != $("#txtUrl").val()) {
                        UploadImage();
                    }
                }
            } else {

                LoadFunctions();
            }
        }

    });

    $("#btnAddImage, #txtUrl").click(function () {
        $("#FileUpload").click();
    });

    $("#FileUpload").change(function () {

        var files = $('#FileUpload')[0].files;
        for (var i = 0; i < files.length; i++) {
            $("#txtUrl").val(files[i].name);
        }
    });

    $('#txtService').keyup(function (e) {
        if (e.keyCode == 13 && $(this).val() != "") {
            $("#DrpServices").append($('<option/>', {
                value: $('#txtService').val(),
                text: $('#txtService').val()
            }));

            $(this).val("");
        }
    });

    $('#btnAddToServiceList').click(function () {
        if ($("#txtService").val() != "") {

            $("#DrpServices").append($('<option/>', {
                value: $('#txtService').val(),
                text: $('#txtService').val()
            }));

            $("#txtService").val("");
        }
    });

    $('#btnRemoveFromList').click(function() {
        $('#DrpServices :selected').remove();
        $('#DrpServices').prop('selected', true);
    });


    $('#txtFacilities').keyup(function (e) {
        if (e.keyCode == 13 && $(this).val() != "") {
            $("#DrpFacilities").append($('<option/>', {
                value: $('#txtFacilities').val(),
                text: $('#txtFacilities').val()
            }));

            $(this).val("");
        }
    });

    $('#btnAddToFacilitisList').click(function () {
        if ($("#txtFacilities").val() != "") {

            $("#DrpFacilities").append($('<option/>', {
                value: $('#txtFacilities').val(),
                text: $('#txtFacilities').val()
            }));

            $("#txtFacilities").val("");
        }
    });

    $('#btnRemoveFromFacilitisList').click(function () {
        $('#DrpFacilities :selected').remove();
        $('#DrpFacilities').prop('selected', true);
    });

    $("#btnAddImage1").click(function () {
        $("#my-awesome-dropzone").css("display", "block");
        $("#my-awesome-dropzone").click();
    });

    $(".picUploadList").on("click", ".picUpload", function () {

        var ans = confirm("آیا برای حذف تصویر انتخاب شده مطمئن هستید؟");

        if (ans == true) {

            DeleteImage(this.id);
            $(this).remove();
        }
    });

    $("#DrpGroup1").change(function () {

        productGroupId2 = -1;
        LoadGroupDropDown2($(this).val());
    });

    $("#DrpRegion").change(function () {

        cityId = -1;
        LoadCityDropDown($(this).val());
    });
});

function GetImages(id) {

    $.ajax({
        type: "POST",
        url: "WebServices/PlaceWs.asmx/SelectPicsFromOne",
        data: "{ id:'" + id + "'}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (response) {

            var msg = eval('(' + response.d + ')');

            if ($('.picUploadList').children().length > 0) // remove table if it exists
            {
                $(".picUploadList").empty();
            }

            for (var i = 0; i < msg.length  ; i++) {

                $(".picUploadList").append('<div  class="picUpload" id="' + msg[i].Id + '" style="background:url(\'images\/' + msg[i].Image + '\') no-repeat; background-size:100%;"></div>');
            }

            if (msg.length == 0) {
                $(".picUploadList").css("display", "none");
            }

        },
        error: function (xhr) {
            MessageBox(5);
        },
        complete: function () {
            HideLoading();
        }
    });
}

function LoadFunctions() {
    
    var services = '';
    var facilities = '';
    var workTimes = '';

    if ($("#txtClosed1").is(":checked") == false) {
        workTimes+= $("#txtStart1").val() + '#' + $("#txtEnd1").val() + "@";
    } else {
        workTimes += 'closed'+ "@";
    }

    if ($("#txtClosed2").is(":checked") == false) {
        workTimes += $("#txtStart2").val() + '#' + $("#txtEnd2").val() + "@";
    } else {
        workTimes += 'closed' + "@";
    }

    if ($("#txtClosed3").is(":checked") == false) {
        workTimes += $("#txtStart3").val() + '#' + $("#txtEnd3").val() + "@";
    } else {
        workTimes += 'closed' + "@";
    }

    if ($("#txtClosed4").is(":checked") == false) {
        workTimes += $("#txtStart4").val() + '#' + $("#txtEnd4").val() + "@";
    } else {
        workTimes += 'closed' + "@";
    }

    if ($("#txtClosed5").is(":checked") == false) {
        workTimes += $("#txtStart5").val() + '#' + $("#txtEnd5").val() + "@";
    } else {
        workTimes += 'closed' + "@";
    }

    if ($("#txtClosed6").is(":checked") == false) {
        workTimes += $("#txtStart6").val() + '#' + $("#txtEnd6").val() + "@";
    } else {
        workTimes += 'closed' + "@";
    }

    if ($("#txtClosed7").is(":checked") == false) {
        workTimes += $("#txtStart7").val() + '#' + $("#txtEnd7").val() + "@";
    } else {
        workTimes += 'closed' + "@";
    }

    $("#DrpServices option").each(function () {
        services += $(this).val() + '@';
    });

    $("#DrpFacilities option").each(function () {
        facilities += $(this).val() + '@';
    });

    if ($("#EditMode").val() == "false") {

        insertPlace($("#txtName").val(), $("#DrpGroup1").val(), $("#DrpGroup2").val(),
            $("#DrpRegion").val(), $("#DrpCity").val(), $("#txtUrl").val(), $("#txtBanner").val(),
            $("#txtOwner").val(), $("#txtDescription").val(), $("#txtTel").val(), $("#txtFax").val(),
            $("#txtMobile").val(), $("#txtEmail").val(), $("#txtWebsite").val(), $("#txtAddress").val(),
            $("#txtPosition").val(), facilities, services, workTimes);
    } else {

        updatePlace(placeId, $("#txtName").val(), $("#DrpGroup1").val(), $("#DrpGroup2").val(),
            $("#DrpRegion").val(), $("#DrpCity").val(), $("#txtUrl").val(), $("#txtBanner").val(),
            $("#txtOwner").val(), $("#txtDescription").val(), $("#txtTel").val(), $("#txtFax").val(),
            $("#txtMobile").val(), $("#txtEmail").val(), $("#txtWebsite").val(), $("#txtAddress").val(),
            $("#txtPosition").val(), facilities, services, workTimes);
    };

}

function LoadGroupDropDown1() {
    
    $.ajax({
        type: "POST",
        url: "WebServices/ProductGroupWs1.asmx/GetData",
        data: "{fromSite:'false'}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (response) {
            var msg = eval('(' + response.d + ')');

            var drpLanguage = "";

            for (var i = 0; i < msg.length; i++) {
                drpLanguage += '  <option value="' + msg[i].Id + '">' + msg[i].Name + '</option>';
            }

            $("#DrpGroup1").empty();

            $("#DrpGroup1").append(drpLanguage);

            if ($("#EditMode").val() == "false") {
                LoadGroupDropDown2(msg[0].Id);
            }

            if ($("#EditMode").val() == "true") {
                if (productGroupId1 != null) {
                    $("#DrpGroup1").val(productGroupId1);
                    LoadGroupDropDown2(productGroupId1);
                } else {
                    SelectOnGroup2(productGroupId2);
                }
            }
        },
        error: function (xhr) {
            MessageBox(5);
        },
        complete: function () {

        }
    });
}

function LoadGroupDropDown2(id) {

    $.ajax({
        type: "POST",
        url: "WebServices/ProductGroupWs2.asmx/SelectAllFromOneGroup",
        data: "{id:'" + id + "',fromSite:'false'}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (response) {
            var msg = eval('(' + response.d + ')');

            var drpLanguage = "<option value='-1'>ندارد</option>";

            for (var i = 0; i < msg.length; i++) {
                drpLanguage += '  <option value="' + msg[i].Id + '">' + msg[i].Name + '</option>';
            }

            $("#DrpGroup2").empty();

            $("#DrpGroup2").append(drpLanguage);

        },
        error: function (xhr) {
            MessageBox(5);
        },
        complete: function () {
            if ($("#EditMode").val() == "true") {
                $("#DrpGroup2").val(productGroupId2);
            }
        }
    });
}

function LoadRegionDropDown() {

    $.ajax({
        type: "POST",
        url: "WebServices/RegionWs.asmx/GetRegions",
        data: "{fromSite:'false'}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (response) {
            var msg = eval('(' + response.d + ')');

            var drpLanguage = "";

            for (var i = 0; i < msg.length; i++) {
                drpLanguage += '  <option value="' + msg[i].Id + '">' + msg[i].Name + '</option>';
            }

            $("#DrpRegion").empty();

            $("#DrpRegion").append(drpLanguage);

            if ($("#EditMode").val() == "false") {
                LoadCityDropDown(msg[0].Id);
            }
           
            if ($("#EditMode").val() == "true") {
                if (regionId != null) {
                    $("#DrpRegion").val(regionId);
                    LoadCityDropDown(regionId);
                } else {
                    //SelectOnGroup2(cityId);
                }
            }
        },
        error: function (xhr) {
            MessageBox(5);
        },
        complete: function () {

        }
    });
}

function LoadCityDropDown(id) {

    $.ajax({
        type: "POST",
        url: "WebServices/RegionWs.asmx/GetCities",
        data: "{id:'" + id + "', fromSite:'false'}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (response) {
            var msg = eval('(' + response.d + ')');

            var drpLanguage = "";

            for (var i = 0; i < msg.length; i++) {
                drpLanguage += '  <option value="' + msg[i].Id + '">' + msg[i].Name + '</option>';
            }

            $("#DrpCity").empty();

            $("#DrpCity").append(drpLanguage);

        },
        error: function (xhr) {
            MessageBox(5);
        },
        complete: function () {
            if ($("#EditMode").val() == "true") {
                $("#DrpCity").val(cityId);
            }
        }
    });
}

function UploadImage() {

    ShowLoading();

    var uploadfiles = $("#FileUpload").get(0);
    var uploadedfiles = uploadfiles.files;
    var fromdata = new FormData();

    for (var i = 0; i < uploadedfiles.length; i++) {
        fromdata.append(uploadedfiles[i].name, uploadedfiles[i]);
    }


    var choice = {};
    choice.url = "Handler/ImageHandler.ashx";
    choice.type = "POST";
    choice.data = fromdata;
    choice.contentType = false;
    choice.processData = false;
    choice.success = function () {

        HideLoading();

        LoadFunctions();
    }

    $.ajax(choice);
    event.preventDefault();
}

function checkUrl(id) {

    $.ajax({
        type: "POST",
        url: "WebServices/PlaceWs.asmx/CheckUrl",
        data: "{id:'" + id + "'}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (response) {
            var msg = eval('(' + response.d + ')');

            return msg;
        },
        error: function (xhr) {
            MessageBox(5);
        },
        complete: function () {
            HideLoading();
        }
    });
}

function insertPlace(name, groupId1,groupId2, regionId, cityId, logo, banner, owner, description, tel, fax, mobile, email, website, address, position,
    facilities, services, worktime) {

    var obj = new Object();

    obj.Name = name;
    obj.GroupID1 = groupId1;
    obj.GroupID2 = groupId2;
    obj.RegionID = regionId;
    obj.CityID = cityId;
    obj.Logo = logo;
    obj.Banner = banner;
    obj.Owner = owner;
    obj.Description = description;
    obj.Tel = tel;
    obj.Fax = fax;
    obj.Mobile = mobile;
    obj.Email = email;
    obj.Website = website;
    obj.Address = address;
    obj.Position = position;
    obj.Facilities = facilities;
    obj.Services = services;
    obj.Worktime = worktime;
    obj.Verify = false;
    obj.Visibility = false;

    $.ajax({
        type: "POST",
        url: "WebServices/PlaceWs.asmx/Insert",
        data: "{ placeEntity:" + JSON.stringify(obj) + "}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (data) {
            var msg = eval('(' + data.d + ')');

            MessageBox(1);

            $("#txtName").val("");
            $("#txtUrl").val("");
            $("#txtBanner").val("");
            $("#txtOwner").val("");
            $("#txtDescription").val("");
            $("#txtTel").val("");
            $("#txtFax").val("");
            $("#txtMobile").val("");
            $("#txtEmail").val("");
            $("#txtWebsite").val("");
            $("#txtAddress").val("");
            $("#txtPosition").val("");

            $("#DrpFacilities").empty();
            $("#DrpServices").empty();

            $("input:checkbox").attr("checked", false);
           
        },
        error: function (xhr) {
            MessageBox(5);
        },
        complete: function () {
            $('#btnSavePlace').css({ "background": "#364F6A" });
        }
    });
}

function updatePlace(id, name, groupId1, groupId2, regionId, cityId, logo, banner, owner, description, tel, fax, mobile, email, website, address, position,
    facilities, services, worktime) {

    var obj = new Object();

    obj.Id = id;
    obj.Name = name;
    obj.GroupID1 = groupId1;
    obj.GroupID2 = groupId2;
    obj.RegionID = regionId;
    obj.CityID = cityId;
    obj.Logo = logo;
    obj.Banner = banner;
    obj.Owner = owner;
    obj.Description = description;
    obj.Tel = tel;
    obj.Fax = fax;
    obj.Mobile = mobile;
    obj.Email = email;
    obj.Website = website;
    obj.Address = address;
    obj.Position = position;
    obj.Facilities = facilities;
    obj.Services = services;
    obj.Worktime = worktime;
    obj.Verify = false;
    obj.Visibility = false;

    $.ajax({
        type: "POST",
        url: "WebServices/PlaceWs.asmx/Update",
        data: "{placeEntity:" + JSON.stringify(obj) + "}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (data) {
            var msg = eval('(' + data.d + ')');

            MessageBox(2);

            $("#EditMode").val(false);

            if (msg == true) {
                $("#container").load("PlaceList.aspx");
            }

        },
        error: function (xhr) {
            MessageBox(5);
        },
        complete: function () {
            $('#btnSavePlace').css({ "background": "#364F6A" });
        }
    });
}

function DeleteImage(id) {

    $.ajax({
        type: "POST",
        url: "WebServices/PlaceWs.asmx/DeleteImage",
        data: "{id:'" + id + "'}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function () {

            MessageBox(3);
        },
        error: function (xhr) {
            var err = eval("(" + xhr.responseText + ")");
            MessageBox(5);
        },
        complete: function () {
            HideLoading();
        }
    });
}

function ValidateData() {

    var check = true;

    $(".InputRequire").each(function () {

        if ($(this).val() == "") {
            check = false;
            $(this).css({ "border-color": "#fe0303" });
        } else {
            $(this).css({ "border-color": "#e4e8eb" });
        }
    });

    return check;
}