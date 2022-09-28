var mapCenter = [
32.4279080, 53.6880460
];

var markers = [];

var maxMarker = 0;

var zoomLevel = 5;

$(document).ready(function () {

    LoadMap();

    $(".s-pg-result").on("click", "li", function () {

        var selectedCity = this.id;;

         var temp = selectedCity.split(',');
         SelectOnePlace(temp[0]);
    });

    //LoadRegions();
});

function SelectOnePlace(id) {

    $.ajax({
        type: "POST",
        url: "../mngmnt/WebServices/PlaceWs.asmx/BindRecordToEdit",
        data: "{id:'"+id+"', fromSite:'true'}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (response) {
            var msg = eval('(' + response.d + ')');

            mapCenter = msg[0].Position.split(',');

            zoomLevel = 15;

            clearThat();

            markers = [];

            markers.push({
                lat: mapCenter[0],
                lng: mapCenter[1],
                data: { Name: msg[0].Name, Logo: msg[0].Logo, GroupName: msg[0].GroupName, Tel: msg[0].Tel,  Address: msg[0].Address }

            });

            
            LoadMap();

            //$('#map_canvas').gmap3('get').setCenter(new google.maps.LatLng(mapCenter[0], mapCenter[1]));
            //$('#map_canvas').gmap3('get').setZoom(zoomLevel);
        },
        error: function (xhr) {
            // MessageBox(5);
        },
        complete: function () {

        }
    });
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
        clear: "overlay",
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
                       
                    });
                },
                mouseout: function () {
                    //$(this).gmap3({ clear: "overlay" });
                }

            }
        },

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
                    result += "<div class='col-xs-12 col-sm-12 col-ms-12 f-right no-pddng'>" +
                                 "<div class='fltr-city-row'>" +
                                 "<label style='font-size:large'>استان " + msg[i].Name + "</label>" +
                                 "</div>" +
                                 "</div>";

                    for (var j = 0; j < msg.length; j++) {

                        if (msg[i].Id == msg[j].Parent) {
                            result += "<div class='col-xs-6 col-sm-3 col-md-6 f-right no-pddng'>" +
                                      "<div class='fltr-city-row'>" +
                                      "<label for=''>" + msg[j].Name + "</label>" +
                                      "<input type='checkbox' id='' class='filtr-city' name=''>" +
                                      "</div>" +
                                      "</div>";
                        }
                    }

                    result += '</ul></div>';
                }
            }

            result += '<div class="clearfix"></div>';

            $("#divRegions").empty();
            $("#divRegions").html(result);

        },
        error: function (xhr) {
            // MessageBox(5);
        },
        complete: function () {

        }
    });
}