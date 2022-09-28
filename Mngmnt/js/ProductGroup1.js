var groupId1 = -1;

var RowId1 = [];

$(document).ready(function () {

    LoadLanguageDropDown();

    LoadGroup1();

    if (ModulePermission.Insert == true || ModulePermission.Update == true) {

        $("#divInsert1").show();
    }

    if ($("#EditMode").val() == "false") {
        $("#DivSave1").addClass("col-sm-offset-1");
    }

    $("#div1").on("click","#btnCancel1",function () {

        ChangeMode();
    });

    $("#divData1").on("click", ".Visibility", function () {

        ShowLoading();

        if ($(this).attr("spellcheck") == "false") {
            $(this).css({ "background-color": "green", "border-color": "green" });
            $(this).empty();
            $(this).append('<i class="fa fa-2x fa-check-circle fa fa-white"></i>');
            $(this).attr("spellcheck", "true");
        } else {
            $(this).css({ "background-color": "#C83A2A", "border-color": "#C83A2A" });
            $(this).empty();
            $(this).append('<i class="fa fa-2x fa-times-circle fa fa-white"></i>');
            $(this).attr("spellcheck", "false");
        }

        SetVisibility1(this.id, $(this).attr("spellcheck"));

    });

    $("#btnSaveGroup1").click(function() {

        if (ValidateData1() == true) {

            $("#btnSaveGroup1").css({ "background-image": "url('pics/loading1.gif')", "background-repeat": "no-repeat", "background-size": "25px", "background-position": "2px" });

            if ($("#txtUrl").val() != "") {

                if ($("#EditMode").val() == "false") {
                    UploadImage();
                } else {
                    if (checkUrl(groupId1) != $("#txtUrl").val()) {
                        UploadImage();
                    }
                }
            } else {

                LoadFunctions();
            }          
        }
    });

    $("#btnDelete1").click(function () {

        var cnt = 0;

        $("input:checkbox").not("#allChecktic1").each(function () {

            if ($(this).parent("div").hasClass("checked") == true) {

                RowId1.push($(this).attr('id'));
                cnt++;
            }
        });

        if (cnt > 0) {

            var ans = confirm("آیا برای حذف  " + cnt + " رکورد انتخاب شده مطمئن هستید؟");

            if (ans == true) {

                ShowLoading();

                deleteSelected1(RowId1);               
            }
        }
    });

    $('#divData1').on("click", "#SelectAll1", function () {

        if ($(this).attr("spellcheck") == "false") {
            $(this).css({ "background-color": "gray", "border-color": "gray" });
            $(this).empty();
            $(this).append('<i class="fa fa-check-square fa fa-white"></i>');
            $(this).attr("spellcheck", "true");

            $("#divData1 table input:checkbox").each(function () {

                $(this).attr("checked", true);
                $(this).parent().addClass("checked");
            });
        } else {
            $(this).css({ "background-color": "lightgray", "border-color": "lightgray" });
            $(this).empty();
            $(this).append('<i class="fa fa-square-o "></i>');
            $(this).attr("spellcheck", "false");

            $("#divData1 table input:checkbox").each(function () {

                $(this).attr("checked", false);
                $(this).parent().removeClass("checked");
            });
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
});

function LoadFunctions() {
   
    if ($("#EditMode").val() == "false") {

        insertGroup1($("#txtName1").val(), $("#txtPriority1").val(), $("#txtLink1").val(), $("#DrpOpenLink1").val(), $("#DrpLanguage1").val(), $("#txtUrl").val(), $("#txtDescription").val());
    } else {

        updateGroup1(groupId1, $("#txtName1").val(), $("#txtPriority1").val(), $("#txtLink1").val(), $("#DrpOpenLink1").val(), $("#DrpLanguage1").val(), $("#txtUrl").val(), $("#txtDescription").val());
    };
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
        url: "WebServices/ProductGroupWs1.asmx/CheckUrl",
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

function SetVisibility1(id, visibility) {

    $.ajax({
        type: "POST",
        url: "WebServices/ProductGroupWs1.asmx/SetVisibility",
        data: "{id:'" + id + "', visibility:'" + visibility + "'}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (response) {
            var msg = eval('(' + response.d + ')');

            if (msg == true) {

            } else {
                MessageBox(5);
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

function ChangeMode() {

    $("#txtName1").val("");
    $("#txtPriority1").val("");
    $("#txtUrl").val("");
    $("#txtDescription").val("");
    $("#txtLink1").val("");
    $("#EditMode").val(false);
    $("#DivCancel1").hide();
    $("#DivSave1").addClass("col-sm-offset-1");
    $("#btnSaveGroup1").text("ثبت اطلاعات");
}

function LoadLanguageDropDown() {

    $.ajax({
        type: "POST",
        url: "WebServices/LanguageWs.asmx/GetData",
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

            $("#DrpLanguage1").empty();
            $("#DrpLanguage2").empty();

            $("#DrpLanguage1").append(drpLanguage);

            $("#DrpLanguage2").append(drpLanguage);

           
        },
        error: function (xhr) {
            MessageBox(5);
        },
        complete: function () {

        }
    });
}

function insertGroup1(name, priority, link, openLink, languageId, image, description) {

    var obj = new Object();

    obj.Name = name;
    obj.Priority = priority;
    obj.Link = link;
    obj.OpenLink = openLink;
    obj.LanguageId = languageId;
    obj.Image = image;
    obj.Description = description;
    obj.Visibility = true;

    $.ajax({
        type: "POST",
        url: "WebServices/ProductGroupWs1.asmx/Insert",
        data: "{ productGroupEntity1:" + JSON.stringify(obj) + "}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (data) {
            var msg = eval('(' + data.d + ')');

            MessageBox(1);

            ChangeMode();

            LoadGroup1();

            LoadGroupDropDown1();
        },
        error: function (xhr) {
            MessageBox(5);
        },
        complete: function () {
            $('#btnSaveGroup1').css({ "background": "#364F6A" });
        }
    });
}

function updateGroup1(id, name, priority, link, openLink, languageId, image, description) {

    var obj = new Object();

    obj.Id = id;
    obj.Name = name;
    obj.Priority = priority;
    obj.Link = link;
    obj.OpenLink = openLink;
    obj.LanguageId = languageId;
    obj.Image = image;
    obj.Description = description;

    $.ajax({
        type: "POST",
        url: "WebServices/ProductGroupWs1.asmx/Update",
        data: "{productGroupEntity1:" + JSON.stringify(obj) + "}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (data) {
            var msg = eval('(' + data.d + ')');

            MessageBox(2);

            ChangeMode();

            if (msg == true) {
                LoadGroup1();

                LoadGroupDropDown1();
            }

        },
        error: function (xhr) {
            MessageBox(5);
        },
        complete: function () {
            $('#btnSaveGroup1').css({ "background": "#364F6A" });
        }
    });
}

function ValidateData1() {

    var check = true;

    $(".InputRequire1").each(function () {

        if ($(this).val() == "") {
            check = false;
            $(this).css({ "border-color": "#fe0303" });
        } else {
            $(this).css({ "border-color": "#e4e8eb" });
        }
    });

    return check;
}

function LoadGroup1() {

    ShowLoading();

    $.ajax({
        type: "POST",
        url: "WebServices/ProductGroupWs1.asmx/GetData",
        data: "{fromSite:'false'}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function(response) {
            var msg = eval('(' + response.d + ')');

            var table = '<table class="table table-bordered table-hover" id="sample-table-1">' +
                '<thead>' +
                '<tr>' +
                '<th class="center"><a spellcheck="false" id="SelectAll1" class="btn btn-light-grey" style="background-color:lightgray; border-color:lightgray" ><i class="fa fa-square-o"></i></a></th>' +
                '<th class="center"><label>ردیف</label></div></th>' +
                '<th>تصویر</th>' +
                '<th>نام</th>' +
                '<th>وضعیت نمایش</th>' +
                '<th><i class="fa fa-time"></i>عملیات</th>' +
                '</tr>' +
                '</thead>' +
                '<tbody>';

            if (ModulePermission.Delete == true) {
                $("#btnDelete1").show();
            }

            var visibility;

            for (var i = 0; i < msg.length; i++) {

                if (ModulePermission.Update == true) {
                    editRow = '<a onclick="bindRecordToEdit1(' + msg[i].Id + ')" style="margin-left:3px" class="btn btn-xs btn-teal tooltips" data-placement="top" data-original-title="مشاهده"><i class="fa fa-edit"></i></a>';
                }
                if (ModulePermission.Delete == true) {
                    deleteRow = '<a onclick="deleteRecord1(' + msg[i].Id + ')" class="btn btn-xs btn-bricky tooltips" data-placement="top" data-original-title="حذف"><i class="fa fa-times fa fa-white"></i></a>';
                }

                if (msg[i].Visibility == false) {
                    visibility = '<a id="' + msg[i].Id + '" spellcheck="' + msg[i].Verify + '" class="btn btn-bricky Visibility" ><i class="fa fa-2x fa-times-circle fa fa-white"></i></a>';
                } else {
                    visibility = '<a id="' + msg[i].Id + '" style="background-color:green; border:green" spellcheck="' + msg[i].Verify + '" class="btn btn-bricky Visibility" ><i class="fa fa-2x fa-check-circle fa fa-white"></i></a>';

                }
                table += '<tr>' +
                    '<td class="center"><div class="checkbox-table"><label><input id="' + msg[i].Id + '"  type="checkbox" class="flat-grey"></label></div></td>' +
                    '<td class="center"><label>' + (i + 1) + '</label></div></td>' +
                    '<td class="center" ><img style="width:100px; height:100px;" src="images/' + msg[i].Image + '" alt="image"></td>' +
                    '<td>' + msg[i].Name + '</td>' +
                    '<td class="center">' + visibility + '</td>' +
                    '<td class="center">' +
                    '<div class="visible-md visible-lg hidden-sm hidden-xs">' +
                    editRow +
                    deleteRow +
                    '</div>' +
                    '</div></div>' +
                    '</td>' +
                    '</tr>';
            }

            table += '</tbody></table>';

            $('#divData1').html(table);

            Main.init2();
        },
        error: function(xhr) {
            MessageBox(5);
        },
        complete: function() {
            HideLoading();
        }
    });
}

function bindRecordToEdit1(id) {

    ShowLoading();

    $("#EditMode").val(true);

    $("#btnSaveGroup1").text("ثبت تغییرات");

    $("#DivCancel1").show();

    $("#DivSave1").removeClass("col-sm-offset-1");

    groupId1 = id;

    $.ajax({
        type: "POST",
        url: "WebServices/ProductGroupWs1.asmx/BindRecordToEdit",
        data: "{id:'" + id + "'}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function(response) {
            var msg = eval('(' + response.d + ')');

            $("#txtName1").val(msg[0].Name);
            $("#txtPriority1").val(msg[0].Priority);
            $("#txtLink1").val(msg[0].Link);
            $("#DrpOpenLink1").val(msg[0].OpenLink);
            $("#DrpLanguage1").val(msg[0].LanguageID);
            $("#txtUrl").val(msg[0].Image);
            $("#txtDescription").val(msg[0].Description);

        },
        error: function(xhr) {
            MessageBox(5);
        },
        complete: function() {
            HideLoading();
        }
    });
}

function deleteRecord1(id) {

    var ans = confirm("آیا برای حذف رکورد مطمئن هستید؟");

    if (ans == true) {
        $.ajax({
            type: "POST",
            url: "WebServices/ProductGroupWs1.asmx/DeleteRecord",
            data: "{id:'" + id + "'}",
            contentType: "application/json; charset=utf-8",
            datatype: "jsondata",
            async: "true",
            success: function (response) {

                MessageBox(3);

                LoadGroup1();

                LoadGroupDropDown1();

                ChangeMode();
            },
            error: function (xhr) {
                MessageBox(5);
            },
            complete: function () {
                HideLoading();
            }
        });
    }
}

function deleteSelected1(idList) {

    $.ajax({
        type: "POST",
        url: "WebServices/ProductGroupWs1.asmx/DeleteMultiRecord",
        data: "{idList:" + JSON.stringify(idList) + "}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (response) {

            MessageBox(3);

            LoadGroup1();

            LoadGroupDropDown1();

            ChangeMode();
        },
        error: function (xhr) {
            MessageBox(5);
        },
        complete: function () {
        }
    });
}
