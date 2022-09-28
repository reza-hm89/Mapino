
var RowId = new Array;

$(document).ready(function () {

    LoadWebUser();

    $("#btnDelete").click(function () {

        var cnt = 0;

        $("input:checkbox").not("#allChecktic").each(function () {

            if ($(this).parent("div").hasClass("checked") == true) {

                RowId.push($(this).attr('id'));
                cnt++;
            }
        });

        if (cnt > 0) {

            var ans = confirm("آیا برای حذف  " + cnt + " رکورد انتخاب شده مطمئن هستید؟");

            if (ans == true) {

                ShowLoading();

                deleteSelected(RowId);
            }
        }
    });

});

function LoadWebUser() {

    ShowLoading();

    $.ajax({
        type: "POST",
        url: "WebServices/WebUserWs.asmx/GetData",
        data: "{}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function(response) {
            var msg = eval('(' + response.d + ')');

            var table = '<table class="table table-bordered table-hover" id="sample-table-1">' +
                '<thead>' +
                '<tr>' +
                '<th class="center"><a spellcheck="false" id="SelectAll" class="btn btn-light-grey" style="background-color:lightgray; border-color:lightgray" ><i class="fa fa-square-o"></i></a></th>' +
                '<th class="center"><label>ردیف</label></div></th>' +
                '<th>نام کاربری</th>' +
                '<th>نام</th>' +
                '<th>تلفن</th>' +
                '<th>موبایل</th>' +
                '<th>آدرس</th>' +
                '<th><i class="fa fa-time"></i>عملیات</th>' +
                '</tr>' +
                '</thead>' +
                '<tbody>';

            if (ModulePermission.Delete == true) {
                $("#btnDelete").show();
            }

            for (var i = 0; i < msg.length; i++) {

                if (ModulePermission.Update == true) {
                    editRow = '<a onclick="bindRecordToEdit(' + msg[i].Id + ')" style="margin-left:3px" class="btn btn-xs btn-teal tooltips" data-placement="top" data-original-title="مشاهده"><i class="fa fa-edit"></i></a>';
                }
                if (ModulePermission.Delete == true) {
                    deleteRow = '<a onclick="deleteRecord(' + msg[i].Id + ')" class="btn btn-xs btn-bricky tooltips" data-placement="top" data-original-title="حذف"><i class="fa fa-times fa fa-white"></i></a>';
                }
                table += '<tr>' +
                    '<td class="center"><div class="checkbox-table"><label><input id="' + msg[i].Id + '"  type="checkbox" class="flat-grey"></label></div></td>' +
                    '<td class="center"><label>' + (i + 1) + '</label></div></td>' +
                    '<td>' + msg[i].Username + '</td>' +
                    '<td>' + msg[i].Name + '</td>' +
                    '<td>' + msg[i].Tel + '</td>' +
                    '<td>' + msg[i].Mobile + '</td>' +
                    '<td>' + msg[i].Address + '</td>' +
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

            $('#divData').html(table);

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

function bindRecordToEdit(id) {

    ShowLoading();

    $("#EditMode").val(true);


    $("#container").load("WebUser.aspx", function () {

        $("h1").text("ویرایش کاربر سایت");

        $(".active").text("ویرایش کاربر سایت");

        $("#btnSaveWebUser").text("ثبت تغییرات");

        $("#DivCancel").show();

        $("#DivSave").removeClass("col-sm-offset-2");

        webUserId = id;

        $.ajax({
            type: "POST",
            url: "WebServices/WebUserWs.asmx/BindRecordToEdit",
            data: "{id:'" + id + "'}",
            contentType: "application/json; charset=utf-8",
            datatype: "jsondata",
            async: "true",
            success: function (response) {
                var msg = eval('(' + response.d + ')');

                $("#txtName").val(msg[0].Name);
                $("#txtFamily").val(msg[0].Family);
                $("#txtFather").val(msg[0].Father);
                $("#txtCodeMeli").val(msg[0].CodeMeli);
                $("#txtShomareSh").val(msg[0].ShomareSh);
                $("#txtBirthhDay").val(msg[0].BirthhDay);
                $("#txtTel").val(msg[0].Tel);
                $("#txtMobile").val(msg[0].Mobile);
                $("#txtEmail").val(msg[0].Email);
                $("#txtAddress").val(msg[0].Address);                      
                $("#txtZipCode").val(msg[0].ZipCode);
                $("#txtTelOwnerName").val(msg[0].TelOwnerName);
                $("#drpKind").val(msg[0].Kind);
                $("#txtUrl").val(msg[0].ImageUrl);
                $("#txtUsername").val(msg[0].Username);
                $("#txtPassword").val(msg[0].Password);
                $("#txtRepeatPassword").val(msg[0].Password);                
              
                if (msg[0].Gender == false) {
                    $("#gender_female").attr("checked", true);
                }
                if (msg[0].Gender == true) {
                    $("#gender_male").attr("checked", true);
                }
            },
            error: function (xhr) {
                MessageBox(5);
            },
            complete: function () {
                HideLoading();
            }
        });

    });
}

function deleteRecord(id) {

    var ans = confirm("آیا برای حذف رکورد مطمئن هستید؟");

    if (ans == true) {
        $.ajax({
            type: "POST",
            url: "WebServices/WebUserWs.asmx/DeleteRecord",
            data: "{id:'" + id + "'}",
            contentType: "application/json; charset=utf-8",
            datatype: "jsondata",
            async: "true",
            success: function (response) {

                MessageBox(3);

                LoadWebUser();

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

function deleteSelected(idList) {

    $.ajax({
        type: "POST",
        url: "WebServices/WebUserWs.asmx/DeleteMultiRecord",
        data: "{idList:" + JSON.stringify(idList) + "}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (response) {

            MessageBox(3);

            LoadWebUser();
        },
        error: function (xhr) {
            MessageBox(5);
        },
        complete: function () {

        }
    });
}