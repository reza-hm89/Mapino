var RowId = [];

$(document).ready(function () {

    LoadPlace();

    $("#divData").on("click", ".Verify", function () {
        
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

        SetVerify(this.id, $(this).attr("spellcheck"));

    });

    $("#divData").on("click", ".Visibility", function () {

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

        SetVisibility(this.id, $(this).attr("spellcheck"));

    });

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

function SetVerify(id, verify) {

    $.ajax({
        type: "POST",
        url: "WebServices/PlaceWs.asmx/SetVerify",
        data: "{id:'" + id + "', verify:'" + verify + "'}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (response) {
            var msg = eval('(' + response.d + ')');

            if (msg == true) {

            } else {
                alert("خطا");
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

function SetVisibility(id, visibility) {

    $.ajax({
        type: "POST",
        url: "WebServices/PlaceWs.asmx/SetVisibility",
        data: "{id:'" + id + "', visibility:'" + visibility + "'}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function(response) {
            var msg = eval('(' + response.d + ')');

            if (msg==true) {
               
            } else {
                alert("خطا");
            }
        },
        error: function(xhr) {
            MessageBox(5);
        },
        complete: function() {
            HideLoading();
        }
    });
}

function LoadPlace() {

    ShowLoading();

    $.ajax({
        type: "POST",
        url: "WebServices/PlaceWs.asmx/GetData",
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
                '<th>لوگو</th>' +
                '<th>نام/عنوان</th>' +
                '<th>دسته اصلی مشاغل</th>' +
                '<th>دسته فرعی مشاغل</th>' +
                '<th>وضعیت تایید</th>' +
                '<th>وضعیت نمایش</th>' +
                '<th><i class="fa fa-time"></i>عملیات</th>' +
                '</tr>' +
                '</thead>' +
                '<tbody>';

            if (ModulePermission.Delete == true) {
                $("#btnDelete").show();
            }

            var visibility, verify = '';

            for (var i = 0; i < msg.length; i++) {

                if (ModulePermission.Update == true) {
                    editRow = '<a onclick="bindRecordToEdit(' + msg[i].Id + ')" style="margin-left:3px" class="btn btn-xs btn-teal tooltips" data-placement="top" data-original-title="مشاهده"><i class="fa fa-edit"></i></a>';
                }
                if (ModulePermission.Delete == true) {
                    deleteRow = '<a onclick="deleteRecord(' + msg[i].Id + ')" class="btn btn-xs btn-bricky tooltips" data-placement="top" data-original-title="حذف"><i class="fa fa-times fa fa-white"></i></a>';
                }

                if (msg[i].Verify == false) {
                    verify = '<a id="' + msg[i].Id + '" spellcheck="' + msg[i].Verify + '" class="btn btn-bricky Verify" ><i class="fa fa-2x fa-times-circle fa fa-white"></i></a>';
                } else {
                    verify = '<a id="' + msg[i].Id + '" style="background-color:green; border:green" spellcheck="' + msg[i].Verify + '" class="btn btn-bricky Verify" ><i class="fa fa-2x fa-check-circle fa fa-white"></i></a>';
                }

                if (msg[i].Visibility == false) {
                    visibility = '<a id="' + msg[i].Id + '" spellcheck="' + msg[i].Visibility + '" class="btn btn-bricky Visibility" ><i class="fa fa-2x fa-times-circle fa fa-white"></i></a>';
                } else {
                    visibility = '<a id="' + msg[i].Id + '" style="background-color:green; border:green" spellcheck="' + msg[i].Visibility + '" class="btn btn-bricky Visibility" ><i class="fa fa-2x fa-check-circle fa fa-white"></i></a>';
                }

                table += '<tr>' +
                    '<td class="center"><div class="checkbox-table"><label><input id="' + msg[i].Id + '"  type="checkbox" class="flat-grey"></label></div></td>' +
                    '<td class="center"><label>' + (i + 1) + '</label></div></td>' +
                    '<td class="center" ><img style="width:100px; height:100px;" src="images/' + msg[i].Logo + '" alt="image"></td>' +
                    '<td>' + msg[i].Name + '</td>' +
                    '<td>' + msg[i].GroupName1 + '</td>' +
                    '<td>' + msg[i].GroupName2 + '</td>' +
                    '<td class="center">' + verify + '</td>' +
                    '<td class="center">' + visibility + '</td>' +
                    '<td class="center">' +
                    '<div class="visible-md visible-lg hidden-sm hidden-xs">' +
                    editRow +
                    deleteRow + '</div>' +
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

    $("#container").load("Place.aspx", function() {

        Dropzone.discover();

        $("h1").text("ویرایش مکان");

        // $(".active").text("ویرایش مکان");

        $("#btnSavePlace").text("ثبت تغییرات");

        $("#DivCancel").show();

        $("#DivSave").removeClass("col-sm-offset-8");

        placeId = id;

        $.ajax({
            type: "POST",
            url: "WebServices/PlaceWs.asmx/BindRecordToEdit",
            data: "{id:'" + id + "',fromSite:'false'}",
            contentType: "application/json; charset=utf-8",
            datatype: "jsondata",
            async: "true",
            success: function(response) {
                var msg = eval('(' + response.d + ')');

                $("#txtName").val(msg[0].Name);
                
                regionId = msg[0].RegionID;
                cityId = msg[0].CityID;

                productGroupId1 = msg[0].GroupID1;
                productGroupId2 = msg[0].GroupID2;

                $("#txtUrl").val(msg[0].Logo);
                $("#txtBanner").val(msg[0].Banner);
                $("#txtOwner").val(msg[0].Owner);
                $("#txtDescription").val(msg[0].Description);
                $("#txtTel").val(msg[0].Tel);
                $("#txtFax").val(msg[0].Fax);
                $("#txtMobile").val(msg[0].Mobile);
                $("#txtEmail").val(msg[0].Email);
                $("#txtWebsite").val(msg[0].Website);
                $("#txtAddress").val(msg[0].Address);
                $("#txtPosition").val(msg[0].Position);

                if (msg[0].Facilities!=null) {
                    var facilities = msg[0].Facilities.split('@');

                    for (var i = 0; i < facilities.length; i++) {
                        $("#DrpFacilities").append($('<option/>', {
                            value: facilities[i],
                            text: facilities[i]
                        }));
                    }
                }

                if (msg[0].Services!=null) {
                    var sevices = msg[0].Services.split('@');

                    for (var i = 0; i < sevices.length; i++) {
                        $("#DrpServices").append($('<option/>', {
                            value: sevices[i],
                            text: sevices[i]
                        }));
                    }
                }

                if (msg[0].WorkTime != null) {
                    var worktimes = msg[0].WorkTime.split('@');
                    var times = '';

                    if (worktimes[0] != 'closed') {
                        times = worktimes[0].split('#');
                        $("#txtStart1").val(times[0]);
                        $("#txtEnd1").val(times[1]);
                    } else {
                        $("#txtClosed1").attr("checked", "true");
                    }

                    if (worktimes[1] != 'closed') {
                        times = worktimes[1].split('#');
                        $("#txtStart2").val(times[0]);
                        $("#txtEnd2").val(times[1]);
                    } else {
                        $("#txtClosed2").attr("checked", "true");
                    }

                    if (worktimes[2] != 'closed') {
                        times = worktimes[2].split('#');
                        $("#txtStart3").val(times[0]);
                        $("#txtEnd3").val(times[1]);
                    } else {
                        $("#txtClosed3").attr("checked", "true");
                    }

                    if (worktimes[3] != 'closed') {
                        times = worktimes[3].split('#');
                        $("#txtStart4").val(times[0]);
                        $("#txtEnd4").val(times[1]);
                    } else {
                        $("#txtClosed4").attr("checked", "true");
                    }

                    if (worktimes[4] != 'closed') {
                        times = worktimes[4].split('#');
                        $("#txtStart5").val(times[0]);
                        $("#txtEnd5").val(times[1]);
                    } else {
                        $("#txtClosed5").attr("checked", "true");
                    }

                    if (worktimes[5] != 'closed') {
                        times = worktimes[5].split('#');
                        $("#txtStart6").val(times[0]);
                        $("#txtEnd6").val(times[1]);
                    } else {
                        $("#txtClosed6").attr("checked", "true");
                    }

                    if (worktimes[6] != 'closed') {                
                        times = worktimes[6].split('#');
                        $("#txtStart7").val(times[0]);
                        $("#txtEnd7").val(times[1]);
                    } else {
                        $("#txtClosed7").attr("checked", "true");
                    }
                }
                

                GetImages(placeId);

                LoadGroupDropDown1();

                LoadRegionDropDown();
            },
            error: function(xhr) {
                MessageBox(5);
            },
            complete: function() {
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
            url: "WebServices/PlaceWs.asmx/DeleteRecord",
            data: "{id:'" + id + "'}",
            contentType: "application/json; charset=utf-8",
            datatype: "jsondata",
            async: "true",
            success: function (response) {

                MessageBox(3);

                LoadPlace();

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
        url: "WebServices/PlaceWs.asmx/DeleteMultiRecord",
        data: "{idList:" + JSON.stringify(idList) + "}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (response) {

            MessageBox(3);

            LoadPlace();
        },
        error: function (xhr) {
            MessageBox(5);
        },
        complete: function () {
        }
    });
}
