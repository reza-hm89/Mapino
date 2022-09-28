var groupId2 = -1;

var RowId2 = [];

$(document).ready(function () {

    LoadGroupDropDown1();

    LoadLanguageDropDown();

    LoadParentDropDown();

    LoadGroup2();

    if (ModulePermission.Insert == true || ModulePermission.Update == true) {

        $("#divInsert2").show();
    }

    if ($("#EditMode").val() == "false") {
        $("#DivSave2").addClass("col-sm-offset-1");
    }

    $("#div2").on("click", "#btnCancel2", function () {

        ChangeMode2();
    });

    $("#divData2").on("click", ".Visibility", function () {

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

        SetVisibility2(this.id, $(this).attr("spellcheck"));

    });

    $("#btnSaveGroup2").click(function () {

        if (ValidateData2() == true) {

            $("#btnSaveGroup2").css({ "background-image": "url('pics/loading1.gif')", "background-repeat": "no-repeat", "background-size": "25px", "background-position": "2px" });

            if ($("#EditMode").val() == "false") {

                insertGroup2($("#txtName2").val(), $("#DrpParent").val(), $("#txtLink2").val(),
                    $("#DrpOpenLink2").val(), $("#DrpGroup1").val(), $("#txtPriority2").val(), $("#DrpLanguage2").val());
            } else {

                updateGroup2(groupId2, $("#txtName2").val(), $("#DrpParent").val(), $("#txtLink2").val(),
                    $("#DrpOpenLink2").val(), $("#DrpGroup1").val(), $("#txtPriority2").val(), $("#DrpLanguage2").val());
            };
        }
    });

    $("#btnDelete2").click(function () {

        var cnt = 0;

        $("input:checkbox").not("#allChecktic2").each(function () {

            if ($(this).parent("div").hasClass("checked") == true) {

                RowId2.push($(this).attr('id'));
                cnt++;
            }
        });

        if (cnt > 0) {

            var ans = confirm("آیا برای حذف  " + cnt + " رکورد انتخاب شده مطمئن هستید؟");

            if (ans == true) {

                ShowLoading();

                deleteSelected2(RowId2);
            }
        }
    });

    $('#divData2').on("click", "#SelectAll2", function () {

        if ($(this).attr("spellcheck") == "false") {
            $(this).css({ "background-color": "gray", "border-color": "gray" });
            $(this).empty();
            $(this).append('<i class="fa fa-check-square fa fa-white"></i>');
            $(this).attr("spellcheck", "true");

            $("#divData2 table input:checkbox").each(function () {

                $(this).attr("checked", true);
                $(this).parent().addClass("checked");
            });
        } else {
            $(this).css({ "background-color": "lightgray", "border-color": "lightgray" });
            $(this).empty();
            $(this).append('<i class="fa fa-square-o "></i>');
            $(this).attr("spellcheck", "false");

            $("#divData2 table input:checkbox").each(function () {

                $(this).attr("checked", false);
                $(this).parent().removeClass("checked");
            });
        }
    });
});

function SetVisibility2(id, visibility) {

    $.ajax({
        type: "POST",
        url: "WebServices/ProductGroupWs2.asmx/SetVisibility",
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

function ChangeMode2() {

    $("#txtName2").val("");
    $("#txtLink2").val("");
    $("#EditMode").val(false);
    $("#DivCancel2").hide();
    $("#DivSave2").addClass("col-sm-offset-1");
    $("#btnSaveGroup2").text("ثبت اطلاعات");
}

function LoadParentDropDown() {

    $.ajax({
        type: "POST",
        url: "WebServices/ProductGroupWs2.asmx/GetData",
        data: "{fromSite:'" + false + "'}",
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

        },
        error: function (xhr) {
            MessageBox(5);
        },
        complete: function () {

        }
    });
}

function insertGroup2(name, parent, link, openLink, groupId, priority, languageId) {

    var obj = new Object();

    obj.Name = name;
    obj.Parent = parent;
    obj.Link = link;
    obj.OpenLink = openLink;
    obj.GroupID1 = groupId;
    obj.LanguageId = languageId;
    obj.Priority = priority;
    obj.Visibility = true;

    $.ajax({
        type: "POST",
        url: "WebServices/ProductGroupWs2.asmx/Insert",
        data: "{ productGroupEntity2:" + JSON.stringify(obj) + "}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (data) {
            var msg = eval('(' + data.d + ')');

            MessageBox(1);

            ChangeMode2();

            LoadGroup2();

            LoadParentDropDown();
        },
        error: function (xhr) {
            MessageBox(5);
        },
        complete: function () {
            $('#btnSaveGroup2').css({ "background": "#364F6A" });
        }
    });
}

function updateGroup2(id, name, parent, link, openLink, groupId, priority, languageId) {

    var obj = new Object();

    obj.Id = id;
    obj.Name = name;
    obj.Parent = parent;
    obj.Link = link;
    obj.OpenLink = openLink;
    obj.GroupID1 = groupId;
    obj.Priority = priority;
    obj.LanguageId = languageId;

    $.ajax({
        type: "POST",
        url: "WebServices/ProductGroupWs2.asmx/Update",
        data: "{productGroupEntity2:" + JSON.stringify(obj) + "}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (data) {
            var msg = eval('(' + data.d + ')');

            MessageBox(2);

            ChangeMode2();

            LoadParentDropDown();

            if (msg == true) {
                LoadGroup2();
            }

        },
        error: function (xhr) {
            MessageBox(5);
        },
        complete: function () {
            $('#btnSaveGroup2').css({ "background": "#364F6A" });
        }
    });
}

function ValidateData2() {

    var check = true;

    $(".InputRequire2").each(function () {

        if ($(this).val() == "") {
            check = false;
            $(this).css({ "border-color": "#fe0303" });
        } else {
            $(this).css({ "border-color": "#e4e8eb" });
        }
    });

    return check;
}

function LoadGroup2() {

    ShowLoading();

    $.ajax({
        type: "POST",
        url: "WebServices/ProductGroupWs2.asmx/GetData",
        data: "{fromSite:'" + false + "'}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function(response) {
            var msg = eval('(' + response.d + ')');

            var table = '<table class="table table-bordered table-hover" id="sample-table-2">' +
                '<thead>' +
                '<tr>' +
                '<th class="center"><a spellcheck="false" id="SelectAll2" class="btn btn-light-grey" style="background-color:lightgray; border-color:lightgray" ><i class="fa fa-square-o"></i></a></th>' +
                '<th class="center"><label>ردیف</label></div></th>' +
                '<th>نام</th>' +
                '<th>والد</th>' +
                '<th>گروه سطح 1</th>' +
                '<th>وضعیت نمایش</th>' +
                '<th><i class="fa fa-time"></i>عملیات</th>' +
                '</tr>' +
                '</thead>' +
                '<tbody>';

            if (ModulePermission.Delete == true) {
                $("#btnDelete2").show();
            }

            var parent = '';

            var visibility;

            for (var i = 0; i < msg.length; i++) {

                if (ModulePermission.Update == true) {
                    editRow = '<a onclick="bindRecordToEdit2(' + msg[i].Id + ')" style="margin-left:3px" class="btn btn-xs btn-teal tooltips" data-placement="top" data-original-title="مشاهده"><i class="fa fa-edit"></i></a>';
                }
                if (ModulePermission.Delete == true) {
                    deleteRow = '<a onclick="deleteRecord2(' + msg[i].Id + ')" class="btn btn-xs btn-bricky tooltips" data-placement="top" data-original-title="حذف"><i class="fa fa-times fa fa-white"></i></a>';
                }

                parent = msg[i].Parent;

                if (msg[i].Parent == null) {
                    parent = "ندارد";
                }

                if (msg[i].Visibility == false) {
                    visibility = '<a id="' + msg[i].Id + '" spellcheck="' + msg[i].Verify + '" class="btn btn-bricky Visibility" ><i class="fa fa-2x fa-times-circle fa fa-white"></i></a>';
                } else {
                    visibility = '<a id="' + msg[i].Id + '" style="background-color:green; border:green" spellcheck="' + msg[i].Verify + '" class="btn btn-bricky Visibility" ><i class="fa fa-2x fa-check-circle fa fa-white"></i></a>';
                }

                table += '<tr>' +
                    '<td class="center"><div class="checkbox-table"><label><input id="' + msg[i].Id + '"  type="checkbox" class="flat-grey"></label></div></td>' +
                    '<td class="center"><label>' + (i + 1) + '</label></div></td>' +
                    '<td>' + msg[i].Name + '</td>' +
                    '<td>' + parent + '</td>' +
                    '<td>' + msg[i].ParentName + '</td>' +
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

            $('#divData2').html(table);

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

function bindRecordToEdit2(id) {

    ShowLoading();

    $("#EditMode").val(true);

    $("#btnSaveGroup2").text("ثبت تغییرات");

    $("#DivCancel2").show();

    $("#DivSave2").removeClass("col-sm-offset-1");

    groupId2 = id;

    $.ajax({
        type: "POST",
        url: "WebServices/ProductGroupWs2.asmx/BindRecordToEdit",
        data: "{id:'" + id + "'}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (response) {
            var msg = eval('(' + response.d + ')');

            $("#txtName2").val(msg[0].Name);
            $("#DrpParent").val(msg[0].Parent);
            $("#txtLink2").val(msg[0].Link);
            $("#DrpOpenLink2").val(msg[0].OpenLink);
            $("#DrpGroup1").val(msg[0].GroupID1);
            $("#txtPriority2").val(msg[0].Priority);
            $("#DrpLanguage2").val(msg[0].LanguageID);

        },
        error: function (xhr) {
            MessageBox(5);
        },
        complete: function () {
            HideLoading();
        }
    });
}

function deleteRecord2(id) {

    var ans = confirm("آیا برای حذف رکورد مطمئن هستید؟");

    if (ans == true) {
        $.ajax({
            type: "POST",
            url: "WebServices/ProductGroupWs2.asmx/DeleteRecord",
            data: "{id:'" + id + "'}",
            contentType: "application/json; charset=utf-8",
            datatype: "jsondata",
            async: "true",
            success: function (response) {

                MessageBox(3);

                LoadGroup2();

                ChangeMode2();

                LoadParentDropDown();
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

function deleteSelected2(idList) {

    $.ajax({
        type: "POST",
        url: "WebServices/ProductGroupWs2.asmx/DeleteMultiRecord",
        data: "{idList:" + JSON.stringify(idList) + "}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (response) {

            MessageBox(3);

            LoadGroup2();

            ChangeMode2();

            LoadParentDropDown();
        },
        error: function (xhr) {
            MessageBox(5);
        },
        complete: function () {
        }
    });
}
