var regionId = -1;
var groupId1 = -1;
var groupId2 = -1;


$(document).ready(function () {
   
    $("#ca-container").contentcarousel({
        btnNext: ".next",
        btnPrev: ".prev"
      
    });
});

$(document).ready(function () {

    LoadGroup1();

    $("#btnSearch").click(function() {

        if (ValidateData1() == true) {
            window.open("Search.aspx?title=" + $("#txtTitle").val() +
                "&regionId=" + regionId + "&groupId1=" + groupId1 + "&groupId2=" + groupId2);
        } else {
            $("#alertFailed p").text('عبارت مورد نظر را برای جستجو وارد کنید');
            $("#alertFailed").show(function () {
                setTimeout(function () {
                    $("#alertFailed").fadeOut();
                }, 3000);
            });
        }

    });

    $("#ctl00_Main_drpRegions").change(function () {

        regionId = $(this).val();
    });

    $("#drpGroup1").change(function () {

        groupId1 = $("#drpGroup1 option:selected").attr("id");
        
        groupId2 = -1;
        $("#drpGroup2").empty();

        LoadGroup2(groupId1);
    });

    $("#drpGroup2").change(function () {

        groupId2 = $("#drpGroup2 option:selected").attr("id");
    });
});

function LoadGroup1() {

    $.ajax({
        type: "POST",
        url: "../mngmnt/WebServices/ProductGroupWs1.asmx/GetData",
        data: "{fromSite:'true'}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function(response) {
            var msg = eval('(' + response.d + ')');

            var drpGroup1 = '<option id="-1">همه</option>';

            for (var i = 0; i < msg.length; i++) {
                drpGroup1 += '<option id="' + msg[i].Id + '">' + msg[i].Name + '</option>';
            }

            if (msg.length==0) {
                drpGroup1 = '<option id="-1">ندارد</option>';

                groupId2 = -1;
            } else {
                groupId1 = msg[0].Id;
            }

            $("#drpGroup1").empty();

            $("#drpGroup1").append(drpGroup1);
        },
        error: function(xhr) {
            // MessageBox(5);
        },
        complete: function() {

        }
    });
}

function LoadGroup2(id) {

    $.ajax({
        type: "POST",
        url: "WebService/MapinoWs.asmx/SelectAllFromOneGroup1",
        data: "{groupId1:'" + id + "'}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function(response) {
            var msg = eval('(' + response.d + ')');

            var drpGroup2 = '';

            for (var i = 0; i < msg.length; i++) {
                drpGroup2 += '<option id="' + msg[i].Id + '">' + msg[i].Name + '</option>';
            }

            if (msg.length==0) {
                drpGroup2 = '<option id="-1">ندارد</option>';

                groupId2 = -1;
            } else {
                groupId2 = msg[0].Id;
            }

            $("#drpGroup2").empty();

            $("#drpGroup2").append(drpGroup2);           
        },
        error: function(xhr) {
            // MessageBox(5);
        },
        complete: function() {

        }
    });
}

function ValidateData1() {

    var check = true;

    $(".InputRequire1").each(function () {

        if ($(this).val() == "") {
            check = false;
            $(this).css({ "border-color": "#fe0303" });
        }
        else {
            $(this).css({ "border-color": "#e4e8eb" });
        }
    });
    
    return check;
}