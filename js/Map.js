var mapCenter = [
32.4279080, 53.6880460
];

var markers = [];

var maxMarker = 0;

var zoomLevel = 5;

var currentLocation;

var IsPin = false;

var groupId1 = -1;

var selectedCity = [];


$(document).ready(function () {

    GetParameterValues('id');    

    $("#txtCitySearch").on('input', function (e) {
        var filter = $(this).val();
        $(".cty-content li a").each(function () {
            if ($(this).text().search(new RegExp(filter, "i")) < 0) {
                $(this).parent("ul").hide();
            } else {
                $(this).parent("ul").show();
            }
        });
    });

    $('#cat-list, .result-bx').on("click", ".Places", function () {

        mapCenter = this.id.split(',');
        
        zoomLevel = 17;

        $('#map_canvas').gmap3('get').setCenter(new google.maps.LatLng(mapCenter[0], mapCenter[1]));
        $('#map_canvas').gmap3('get').setZoom(zoomLevel);
    });

    $('.city-overlay').click(function () {
        $('.city-overlay').hide();
        $('.city-wrapper').hide();
    });

    $('.city-wrapper').on("click", ".state li", function () {
        selectedCity = this.id;

        mapCenter = selectedCity;

        mapCenter = selectedCity.split(',');

        zoomLevel = 13;

        $('#map_canvas').gmap3('get').setCenter(new google.maps.LatLng(mapCenter[0], mapCenter[1]));
        $('#map_canvas').gmap3('get').setZoom(zoomLevel);

        $('.city-overlay').hide();
        $('.city-wrapper').hide();

        CacheCity(selectedCity);
    });

    $('.city-overlay').click(function () {
        $('.city-overlay').hide();
        $('.city-wrapper').hide();
    });

    $("#btnShowRegions").click(function () {
        $('.city-overlay').show();
        $('.city-wrapper').show();
    });

    $('#myModal').on('shown.bs.modal', function () {
        $('#myInput').focus();
    });

    $("#content-slider li").on("click", function () {
      
        groupId1 = this.id;

        LoadGroup2(this.id);

        LoadPlaceFromGroup1(groupId1);
    });

    $("#category, .slidenav ").on("click", ".categories", function () {
       
        zoomLevel = 13;
        
        LoadPlaceFromGroup2(groupId1, this.id);
    });
});

$(document).ready(function () {
    $("#content-slider").lightSlider({
        loop: false,
        keyPress: true
    });
});

$(document).ready(function () {
    if ($(window).width() < 768) {
        $(".slidenav").addClass('test2');
        $('.test2').BootSideMenu({ side: "right" });
    }

});

$(document).ready(function () {
    $('#myModal').on('shown.bs.modal', function () {
        $('#myInput').focus();
    });
});

$(document).ready(function () {

    $('.city-wrapper').on("click", ".more-c", function () {
        $(this).parent('.state ').children(".city-list").toggleClass('change-city-h');
        $(this).toggleClass('close-ovrflow', 2000);
    });
});

function GetParameterValues(param) {

    var url = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');

    for (var i = 0; i < url.length; i++) {

        var urlparam = url[i].split('=');

        if (urlparam[0] == param) {

            FindPlace(urlparam[1]);

            LoadRegions();           
           
        } else {

            LoadMap();

            LoadRegions();

            LoadCacheCity();
        }
    }
}

function FindPlace(id) {

    $.ajax({
        type: "POST",
        url: "../WebService/MapinoWs.asmx/SelectOnePlace",
        data: "{id:'" + id + "'}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (response) {
            var msg = eval('(' + response.d + ')');

            $("#myTab li:first").removeClass("active").addClass("no-dsply");
            $("#myTab li:last").removeClass("no-dsply").addClass("active");
            $("#category").removeClass("active").addClass("no-dsply");
            $("#cat-list").removeClass("no-dsply").addClass("active");

            mapCenter = msg[0].Position.split(",");

            ShowPlaces(msg);
        },
        error: function (xhr) {
            // MessageBox(5);
        },
        complete: function () {

        }
    });
}

function LoadCacheCity() {

    $.ajax({
        type: "POST",
        url: "../WebService/MapinoWs.asmx/LoadCacheCity",
        data: "{}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (response) {
            var msg = eval('(' + response.d + ')');


            if (msg == null) {
                $('.city-overlay').show();
                $('.city-wrapper').show();

                zoomLevel = 5;

            } else {
                mapCenter = msg.split(',');
                zoomLevel = 13;

                $('#map_canvas').gmap3('get').setCenter(new google.maps.LatLng(mapCenter[0], mapCenter[1]));
                $('#map_canvas').gmap3('get').setZoom(zoomLevel);
            }
        },
        error: function (xhr) {
            // MessageBox(5);
        },
        complete: function () {

        }
    });
}

function CacheCity(position) {

    $.ajax({
        type: "POST",
        url: "../WebService/MapinoWs.asmx/CacheCity",
        data: "{position:'" + position + "'}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (response) {
            var msg = eval('(' + response.d + ')');


        },
        error: function (xhr) {
            // MessageBox(5);
        },
        complete: function () {

        }
    });
}

function LoadRegions() {

    $.ajax({
        type: "POST",
        url: "../WebService/MapinoWs.asmx/SelectAllRegions",
        data: "{}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (response) {
            var msg = eval('(' + response.d + ')');

            var result = '';

            for (var i = 0; i < msg.length; i++) {

                if (msg[i].Parent == -1) {
                    result += "<div class='state'><h5 class='state-title'>" + msg[i].Name + "</h5><ul class='city-list'>";

                    for (var j = 0; j < msg.length; j++) {

                        if (msg[i].Id == msg[j].Parent) {
                            result += "<li id='" + msg[j].Position + "'><a href = '#'>" + msg[j].Name + "</a></li>";

                        }
                    }
                    result += '</ul><div class="clearfix"></div></div>';
                }
            }

            result += '<div class="clearfix"></div>';

            $(".cty-content").empty();
            $(".cty-content").html(result);

        },
        error: function (xhr) {
            // MessageBox(5);
        },
        complete: function () {

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
        success: function (response) {
            var msg = eval('(' + response.d + ')');

            var drpGroup2 = '';

            for (var i = 0; i < msg.length; i++) {
                drpGroup2 += '<div  id="' + msg[i].Id + '" class="map-items pddng categories">' +
                    '<div class="item-details ">' +
                    '<h2 class="m-title">' + msg[i].Name + '</h2>' +
                    '</div></div>';
            }

            if (msg.length == 0) {
                drpGroup2 = '<div  id="' + (-1) + '" class="map-items pddng categories">' +
                   '<div class="item-details ">' +
                   '<h2 class="m-title">' + "ندارد" + '</h2>' +
                   '</div></div>';
            }

            $("#category").empty();

            $("#category").append(drpGroup2);

            $(".category-title").click();

        },
        error: function (xhr) {
            // MessageBox(5);
        },
        complete: function () {

        }
    });
}

function LoadPlaceFromGroup1(id1) {

    clearThat();

    $.ajax({
        type: "POST",
        url: "WebService/MapinoWs.asmx/SelectAllPlaceFromGroup1",
        data: "{groupId1:'" + id1 + "'}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (response) {
            var msg = eval('(' + response.d + ')');

            ShowPlaces(msg);
        },
        error: function (xhr) {
            //MessageBox(5);
        },
        complete: function () {

        }
    });
}

function LoadPlaceFromGroup2(id1, id2) {

    clearThat();

    $.ajax({
        type: "POST",
        url: "WebService/MapinoWs.asmx/SelectAllPlaceFromGroup2",
        data: "{groupId1:'" + id1 + "',groupId2:'" + id2 + "'}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (response) {
            var msg = eval('(' + response.d + ')');

            ShowPlaces(msg);
        },
        error: function (xhr) {
            //MessageBox(5);
        },
        complete: function () {

        }
    });
}

function ShowPlaces(msg) {

    var drpPlace = '';
    var imgs;
    var detailslogo;
    var email = "";

    markers = [];

    for (var i = 0; i < msg.length; i++) {

        email = "";

        if (msg[i].Logo == "" || msg[i].Logo == null) {
            imgs = '<img src="images/mapino.png" alt=' + msg[i].Name + ' />';
            detailslogo = '<img src="images/pin-image1.png" alt=' + msg[i].Name + ' />';
        } else {
            imgs = '<img src="mngmnt/images/' + msg[i].Logo + '" alt=' + msg[i].Name + ' />';
            detailslogo = '<img src="mngmnt/images/' + msg[i].Logo + '" alt=' + msg[i].Name + ' />';
        }

        if (msg[i].Email != null) {
            email = msg[i].Email;
        }

        drpPlace += ' <div id="' + msg[i].Position + '" class="map-items Places">' +
            '<a>' +
            '<div class="item-img no-pddng">' +
            imgs +
            '</div>' +
            '<div class="item-details">' +
            '<h2 class="m-title">' + msg[i].Name + '</h2>' +
            '<p class="m-category">' + msg[i].GroupName + '<i class="icon-cat"></i></p>' +
            '<p class="tell">' + msg[i].Tel + '<i class="icon-cat-tell"></i></p>' +
            '</div></a></div>';

        var location = msg[i].Position.split(',');

        markers.push({
            lat: location[0],
            lng: location[1],
            data: { Name: msg[i].Name, Logo: detailslogo, GroupName: msg[i].GroupName, Tel: msg[i].Tel, Email: email, Address: msg[i].Address }

        });

    }

    $("#cat-list").empty();

    $("#cat-list").append(drpPlace);

    $(".result-bx").empty();

    $(".result-bx").append(drpPlace);

    zoomLevel = 13;

    LoadMap();
}

function clearThat() {

    var tg = "marker",

        opts = {};
    if (tg != "all") {
        opts.name = tg; /* string but can be an array of name : ["marker", "polyline", ...] */
    }

    markers.length = 0;

    $('#map_canvas').gmap3({ clear: opts });
}

function LoadMap() {

    var $dialog = $("#dialog");

    $dialog.detach();

   
    $('#map_canvas').gmap3({
        clear: "overlay" ,
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
                zoom: zoomLevel,
                //mapTypeId: window.google.maps.MapTypeId.ROADMAP,
                mapTypeControl: false,
                mapTypeControlOptions: {
                    // style: google.maps.MapTypeControlStyle.DROPDOWN_MENU
                },
                navigationControl: true,
                scrollwheel: true,
                streetViewControl: false
            },
            events: {

            }
        },

        marker: {
            
            //animation: google.maps.Animation.DROP,
            values: markers,

            options: {
                icon: 'images/pin-deactive.png',
                draggable: false
            },
            events: {
                click: function (marker, event, data) {
                    $(this).gmap3({
                        map: {
                            options: {
                                center: marker.getPosition(),
                                zoom: 17
                            }
                        }
                    });
                },
                mouseover: function (marker, event, context) {
                    $(this).gmap3(
                    { clear: "overlay" },
                    {                        
                        overlay: {
                            latLng: marker.getPosition(),
                            options: {
                                content: '<div class="pin-detail-box" id="divSectionInfo">' +
                                    '<div class="pin-box change">' +
                                    '<div class="pin-detail-pic">' +
                                    context.data.Logo +
                                    '</div>' +
                                    '<h3>' + context.data.Name + '</h3>' +
                                    '<p>' + context.data.GroupName + '</p>' +
                                    '<p>' + context.data.Tel + '</p>' +
                                    '<p class="email opcty-show">' + context.data.Email + '</p>' +
                                    '<p class="address opcty-show">' +
                                    '<span>نشانی:</span><span> ' + context.data.Address + '</span></p></div>' +
                                    '<button class="arrow-btm" ></button>' +
                                    '</div>',
                                offset: {
                                    x: 550,
                                    y: -350
                                }
                            }
                        }
                    });
                },
                mouseout: function () {
                    //$(this).gmap3({ clear: "overlay" });
                }

            }
        },
        //infowindow: {
        //    values: markers,  
        //    onces: {
        //        domready: function (marker, event, context) {
        //            $(this).gmap3(
        //            { clear: "overlay" },
        //            {
        //                overlay: {
        //                    latLng: marker.getPosition(),
        //                    options: {
        //                        content: '<div class="pin-detail-box" id="divSectionInfo">' +
        //                            '<div class="pin-box change">' +
        //                            '<div class="pin-detail-pic">' +
        //                            context.data.Logo +
        //                            '</div>' +
        //                            '<h3>' + context.data.Name + '</h3>' +
        //                            '<p>' + context.data.GroupName + '</p>' +
        //                            '<p>' + context.data.Tel + '</p>' +
        //                            '<p class="email opcty-show">' + context.data.Email + '</p>' +
        //                            '<p class="address opcty-show">' +
        //                            '<span>نشانی:</span><span> ' + context.data.Address + '</span></p></div>' +
        //                            '<button class="arrow-btm" ></button>' +
        //                            '</div>',
        //                        offset: {
        //                            x: 550,
        //                            y: -350
        //                        }
        //                    }
        //                }
        //            });
        //        }
        //    }
        //}
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
            //animation: google.maps.Animation.DROP
        }));
    }, timeout);
}

function clearMarkers() {
    for (var i = 0; i < markers.length; i++) {
        markers[i].setMap(null);
    }
    markers = [];
}