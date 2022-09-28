var regionId = -1;

$(document).ready(function () {

    LoadLanguageDropDown();
   
    if (ModulePermission.Insert == false || ModulePermission.Update == false) {

        $("#container").empty();
        $("#container").load("404.aspx");
    }

    if ($("#EditMode").val() == "false") {
        $("#DivSave").addClass("col-sm-offset-2");
    }

    $("#btnCancel").click(function () {
        $("#container").load("RegionList.aspx");
    });

    $("#btnSaveRegion").click(function () {

        if (ValidateData() == true) {

            $("#btnSaveRegion").css({ "background-image": "url('pics/loading1.gif')", "background-repeat": "no-repeat", "background-size": "25px", "background-position": "2px" });


            if ($("#EditMode").val() == "false") {

                insertRegion($("#txtName").val(), $("#DrpParent").val(),
                    $("#txtPosition").val(), $("#DrpLanguage").val());
            } else {

                updateRegion(regionId, $("#txtName").val(), $("#DrpParent").val(),
                    $("#txtPosition").val(), $("#DrpLanguage").val());
            }
        }
    });


});

function LoadParentDropDown() {

    $.ajax({
        type: "POST",
        url: "WebServices/RegionWs.asmx/GetData",
        data: "{}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (response) {
            var msg = eval('(' + response.d + ')');

            var drpParent = '  <option value="-1">ندارد</option>';;

            for (var i = 0; i < msg.length; i++) {
                drpParent += '  <option value="' + msg[i].Id + '">' + msg[i].Name + '</option>';
            }

            $("#DrpParent").empty();
            $("#DrpParent").append(drpParent);

        },
        error: function (xhr) {
            MessageBox(5);
        },
        complete: function () {

        }
    });
}

function LoadLanguageDropDown() {

    $.ajax({
        type: "POST",
        url: "WebServices/LanguageWs.asmx/GetData",
        data: "{}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (response) {
            var msg = eval('(' + response.d + ')');

            var drpLanguage = "";

            for (var i = 0; i < msg.length; i++) {
                drpLanguage += '  <option value="' + msg[i].Id + '">' + msg[i].Name + '</option>';
            }

            $("#DrpLanguage").append(drpLanguage);

        },
        error: function (xhr) {
            MessageBox(5);
        },
        complete: function () {
            if ($("#EditMode").val() == "false") {
                LoadParentDropDown();
            }
        }
    });
}

function insertRegion(name, parent, position, languageId) {

    var obj = new Object();

    obj.Name = name;
    obj.Parent = parent;
    obj.Position = position;
    obj.LanguageId = languageId;
    obj.Visibility = true;

    $.ajax({
        type: "POST",
        url: "WebServices/RegionWs.asmx/Insert",
        data: "{ regionEntity:" + JSON.stringify(obj) + "}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (data) {
            var msg = eval('(' + data.d + ')');

            MessageBox(1);

            $("#txtName").val("");
            $("#txtPosition").val("");

            LoadLanguageDropDown();

        },
        error: function (xhr) {
            MessageBox(5);
        },
        complete: function () {
            $('#btnSaveRegion').css({ "background": "#364F6A" });
        }
    });
}

function updateRegion(id, name, parent, position, languageId) {

    var obj = new Object();

    obj.Id = id;
    obj.Name = name;
    obj.Parent = parent;
    obj.Position = position;   
    obj.LanguageId = languageId;

    $.ajax({
        type: "POST",
        url: "WebServices/RegionWs.asmx/Update",
        data: "{regionEntity:" + JSON.stringify(obj) + "}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (data) {
            var msg = eval('(' + data.d + ')');

            MessageBox(2);

            $("#EditMode").val(false);

            if (msg == true) {
                $("#container").load("RegionList.aspx");
            }

        },
        error: function (xhr) {
            MessageBox(5);
        },
        complete: function () {
            $('#btnSaveRegion').css({ "background": "#364F6A" });
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