var mapCenter = [
32.4279080, 53.6880460
];


var markers = [];

var maxMarker = 0;

var zoomLevel = 5;

var currentLocation;

var IsPin = false;

var regionId = -1;
var cityId = -1;

var groupId1 = -1;
var groupId2 = -1;

var group2Count = 0;

$(function () {

    CheckLogin();

    $("#btnSavePlace").click(function () {

        if (ValidateInsertPlace() == true) {

            if ($("#txtUrl").val() != "") {

                UploadImage();
            } else {
              
                insertPlace($("#drpRegion").val(), $("#drpCity").val(), $("#drpGroup1").val(),
               $("#drpGroup2").val(), $("#txtName").val(), $("#txtTel").val(),
               $("#txtAddress").val(), $("#txtUrl").val(), currentLocation);
            }

        }
    });

    $("#drpGroup1").change(function () {

        groupId1 = $(this).val();
        groupId2 = -1;
        group2Count = 0;

        LoadGroupDropDown2($(this).val());
    });

    $("#drpGroup2").change(function () {

        groupId2 = $(this).val();
    });

    $("#drpRegion").change(function () {

        regionId = $(this).val();
        LoadCitiesDropDown($(this).val());
    });

    $("#drpCity").change(function () {

        cityId = $(this).val();


        mapCenter = $("#drpCity option:selected").attr("id").split(',');

        zoomLevel = 14;

        $('#map_canvas').gmap3('get').setCenter(new google.maps.LatLng(mapCenter[0], mapCenter[1]));
        $('#map_canvas').gmap3('get').setZoom(zoomLevel);
    });

    $("#btnAddImage, #txtUrl").click(function () {
        $("#FileUpload").click();
    });

    $("#FileUpload").change(function () {

        var fileSize = (this.files[0].size / 1024);

        fileSize = parseInt(fileSize);

        if (fileSize > 500) {

            $("#alertFailed p").text('تصاویر با حجم بیش از  500 کیلوبایت قابل قبول نمی باشد');

            $("#alertFailed").show(function () {
                setTimeout(function () {
                   
                    $("#alertFailed").fadeOut();

                }, 3000);
            });
        } else {
            var ext = this.value.match(/\.(.+)$/)[1];
            switch (ext) {
                case 'jpg':
                case 'jpeg':
                case 'png':
                case 'gif':
                    break;
                default:
                    $("#alertFailed p").text('فقط فایل هایی با فرمت عکس قابل قبول می باشد');

                    $("#alertFailed").show(function () {
                        setTimeout(function () {

                            $("#alertFailed").fadeOut();

                        }, 3000);
                    });

                    this.value = '';
            }

            var files = $('#FileUpload')[0].files;
            for (var i = 0; i < files.length; i++) {
                $("#txtUrl").val(files[i].name);
            }
        }

    });
});

function UploadImage() {

    var uploadfiles = $("#FileUpload").get(0);
    var uploadedfiles = uploadfiles.files;
    var fromdata = new FormData();

    for (var i = 0; i < uploadedfiles.length; i++) {
        fromdata.append(uploadedfiles[i].name, uploadedfiles[i]);
    }


    var choice = {};
    choice.url = "../mngmnt/Handler/ImageHandler.ashx";
    choice.type = "POST";
    choice.data = fromdata;
    choice.contentType = false;
    choice.processData = false;
    choice.success = function () {


        insertPlace($("#drpRegion").val(), $("#drpCity").val(), $("#drpGroup1").val(),
              $("#drpGroup2").val(), $("#txtName").val(), $("#txtTel").val(),
              $("#txtAddress").val(), $("#txtUrl").val(), currentLocation);
    }

    $.ajax(choice);
    event.preventDefault();
}

function CheckLogin() {

    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "../WebService/MapinoWs.asmx/CheckLogin",
        data: "{}",
        dataType: "json",
        success: function (data) {

            var msg = eval('(' + data.d + ')');

            if (msg == false) {

                $("#alertFailed p").text('برای ثبت مکان مورد نظر ابتدا وارد شوید');
                $("#alertFailed").show(function () {
                    setTimeout(function () {
                        $("#alertFailed").fadeOut();

                        //window.location = "register.aspx";
                    }, 3000);
                });
            } else {

                $("document").ready(function ($) {
                    function windowH() {
                        var wH = $(window).height() - 45;
                        $('.map').css({ 'margin-top': '45px', height: wH });
                    }

                    windowH();
                });

                LoadMap();

                LoadGroupDropDown1();
                LoadRegionDropDown();

                $("#divPlaceInfo").show();
            }

        },
        error: function (xhr, status, error) {

            //window.location.href = "Error.aspx";

        },
        complete: function () {

        }
    });
}

function LoadMap() {

    var $dialog = $("#dialog");

    $dialog.detach();

    $('#map_canvas').gmap3({
        panel: {
            options: {
                content: $dialog, // a jQuery element or a string 
                top: 0,
                right: 0,
                middle: true
            }
        },
        map: {
            options: {
                center: mapCenter,
                zoom: 5,
                mapTypeId: google.maps.MapTypeId.ROADMAP,
                mapTypeControl: false,
                mapTypeControlOptions: {
                    // style: google.maps.MapTypeControlStyle.DROPDOWN_MENU
                },
                navigationControl: true,
                scrollwheel: true,
                streetViewControl: false
            },
            events: {
                click: function (map, event) {

                    var map = $(this).gmap3({
                        get: {
                            name: 'map',
                            callback: function (map) {
                                zoomLevel = map.getZoom();

                            }
                        }
                    });



                    var lat = event.latLng.lat(),
                        lng = event.latLng.lng();

                    if (maxMarker == 0) {

                        if (zoomLevel > 15) {
                            IsPin = true;
                            currentLocation = lat + ',' + lng;

                            $(this).gmap3(
                                {
                                    marker: {
                                        latLng: [lat, lng],
                                        animation: google.maps.Animation.DROP,
                                        options: {
                                            draggable: true,
                                            icon: "../images/pin-active.png"
                                        },
                                        events: {
                                            dragend: function (marker) {

                                                var position = marker.getPosition();
                                                currentLocation = position.lat() + ',' + position.lng();

                                            }
                                        }
                                    }
                                }
                            );

                            maxMarker++;
                        }
                        else {
                            $("#alertFailed p").text('لطفا برای انتخاب مکان مورد نظر نقشه را بزرگتر کنید');
                            $("#alertFailed").show(function () {
                                setTimeout(function () {
                                    $("#alertFailed").fadeOut();
                                }, 3000);
                            });
                            IsPin = false;
                        }

                    }
                }
            }
        },

        marker: {
            animation: google.maps.Animation.DROP,

            values: markers,

            options: {
                draggable: false
            },
            events: {
                mouseover: function (marker, event, context) {
                    var map = $(this).gmap3("get"),
                      infowindow = $(this).gmap3({ get: { name: "infowindow" } });
                    if (infowindow) {
                        infowindow.open(map, marker);
                        infowindow.setContent(context.data);
                    } else {
                        $(this).gmap3({
                            infowindow: {
                                anchor: marker,
                                options: { content: context.data }
                            }
                        });
                    }
                },
                mouseout: function () {
                    var infowindow = $(this).gmap3({ get: { name: "infowindow" } });
                    if (infowindow) {
                        infowindow.close();
                    }
                }
            }
        }
    });
}

function LoadRegionDropDown() {

    $.ajax({
        type: "POST",
        url: "../mngmnt/WebServices/RegionWs.asmx/GetRegions",
        data: "{fromSite:'true'}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (response) {
            var msg = eval('(' + response.d + ')');

            var drpLanguage = "";

            for (var i = 0; i < msg.length; i++) {
                drpLanguage += '  <option value="' + msg[i].Id + '">' + msg[i].Name + '</option>';
            }

            $("#drpRegion").empty();

            $("#drpRegion").append(drpLanguage);

            regionId = msg[0].Id;

            LoadCitiesDropDown(msg[0].Id);
        },
        error: function (xhr) {
            //MessageBox(5);
        },
        complete: function () {

        }
    });
}

function LoadCitiesDropDown(id) {

    $.ajax({
        type: "POST",
        url: "../mngmnt/WebServices/RegionWs.asmx/GetCities",
        data: "{id:'" + id + "',fromSite:'true'}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (response) {
            var msg = eval('(' + response.d + ')');

            var drpLanguage = "<option value='-1'>ندارد</option>";

            for (var i = 0; i < msg.length; i++) {
                drpLanguage += '  <option id="' + msg[i].Position + '" value="' + msg[i].Id + '">' + msg[i].Name + '</option>';
            }

            $("#drpCity").empty();

            $("#drpCity").append(drpLanguage);

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
        url: "../mngmnt/WebServices/ProductGroupWs1.asmx/GetData",
        data: "{fromSite:'true'}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (response) {
            var msg = eval('(' + response.d + ')');

            var drpLanguage = "";

            for (var i = 0; i < msg.length; i++) {
                drpLanguage += '  <option value="' + msg[i].Id + '">' + msg[i].Name + '</option>';
            }

            $("#drpGroup1").empty();

            $("#drpGroup1").append(drpLanguage);

            groupId1 = msg[0].Id;

            LoadGroupDropDown2(msg[0].Id);

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
        url: "../mngmnt/WebServices/ProductGroupWs2.asmx/SelectAllFromOneGroup",
        data: "{id:'" + id + "',fromSite:'true'}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (response) {
            var msg = eval('(' + response.d + ')');

            var drpLanguage = "<option value='-1'>ندارد</option>";

            for (var i = 0; i < msg.length; i++) {
                drpLanguage += '  <option value="' + msg[i].Id + '">' + msg[i].Name + '</option>';
            }

            group2Count = msg.length;
           
            $("#drpGroup2").empty();

            $("#drpGroup2").append(drpLanguage);

        },
        error: function (xhr) {
            MessageBox(5);
        },
        complete: function () {
            if ($("#EditMode").val() == "true") {
                $("#DrpGroup2").val(groupId2);
            }
        }
    });
}

function insertPlace(region, city, group1, group2, name, tel, address, logo, position) {

    var obj = new Object();

    obj.RegionID = region;
    obj.CityID = city;
    obj.GroupID1 = group1;
    obj.GroupID2 = group2;
    obj.Name = name;
    obj.Tel = tel;
    obj.Address = address;
    obj.Logo = logo;
    obj.Position = position;

   
    $.ajax({
        type: "POST",
        url: "../mngmnt/WebServices/PlaceWs.asmx/InsertForWebUser",
        data: "{ placeEntity:" + JSON.stringify(obj) + "}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (data) {
            var msg = eval('(' + data.d + ')');

            $("#alertSuccess p").text('اطلاعات با موفقیت ثبت شد. پس از تایید مدیریت در سایت نمایش داده می شود');
            $("#alertSuccess").show(function () {
                setTimeout(function () {
                    $("#alertSuccess").fadeOut();
                    window.location = "Map.aspx";
                }, 3000);
            });



            $("#txtName").val("");
            $("#txtTel").val("");
            $("#txtAddress").val("");
        },
        error: function (xhr) {

        },
        complete: function () {

        }
    });
}

function drop() {
    clearMarkers();
    for (var i = 0; i < neighborhoods.length; i++) {
        addMarkerWithTimeout(neighborhoods[i], i * 200);
    }
}

function addMarkerWithTimeout(position, timeout) {
    window.setTimeout(function () {
        markers.push(new google.maps.Marker({
            position: position,
            map: map,
            animation: google.maps.Animation.DROP
        }));
    }, timeout);
}

function clearMarkers() {
    for (var i = 0; i < markers.length; i++) {
        markers[i].setMap(null);
    }
    markers = [];
}

function ValidateInsertPlace() {

    var check = true;

    if (IsPin == false) {
        $("#alertFailed p").text('لطفا مکان مورد نظر را بر روی نقشه مشخص نمایید');
        $("#alertFailed").show(function () {
            setTimeout(function () {
                $("#alertFailed").fadeOut();
            }, 3000);
        });
        check = false;
    }
    else if (regionId == -1) {
        $("#alertFailed p").text('ابتدا استان را انتخاب نمایید');
        $("#alertFailed").show(function () {
            setTimeout(function () {
                $("#alertFailed").fadeOut();
            }, 3000);
        });
        check = false;
    }
    else if (cityId == -1) {
        $("#alertFailed p").text('ابتدا شهر را انتخاب نمایید');
        $("#alertFailed").show(function () {
            setTimeout(function () {
                $("#alertFailed").fadeOut();
            }, 3000);
        });
        check = false;
    }
    else if (groupId1 == -1) {
        $("#alertFailed p").text('ابتدا گروه اصلی را انتخاب نمایید');
        $("#alertFailed").show(function () {
            setTimeout(function () {
                $("#alertFailed").fadeOut();
            }, 3000);
        });
        check = false;
    }
    else if (groupId2 == -1 && group2Count != 0) {
        $("#alertFailed p").text('ابتدا گروه فرعی را انتخاب نمایید');
        $("#alertFailed").show(function () {
            setTimeout(function () {
                $("#alertFailed").fadeOut();
            }, 3000);
        });
        check = false;
    }

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
