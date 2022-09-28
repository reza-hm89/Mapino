$(document).ready(function () {

    /*  hide-show mobile menu  */
    $("#menu-icon").click(function () {
        $(".navigation ul").toggleClass("show_menu");
        $("#menu-icon").toggleClass("close_menu");
        return false;
    });
});

$(document).ready(function () {
    $('.enter-btn, .green').click(function () {
        $('.lg-box').toggleClass('show-login');
        $('.lgin-arw-icon').toggleClass('show');

    });
});

$(document).ready(function () {

    CheckRememberMe();

    $(".cancel-btn").click(function () {
        $(".warning-box").hide();
    });

    $("#btnLogin").click(function () {
        if (ValidateLogin() == true) {

            $("#btnLogin").css({ "background-image": "url('../mngmnt/pics/loading1.gif')", "background-repeat": "no-repeat", "background-size": "27px", "background-position": "2px" });

            var remember;
            if ($("#chkRemember").is(":checked") == true) {
                remember = true;
            } else {
                remember = false;
            }

            Login($("#txtUsername").val(), $("#txtPassword").val(), remember);
        }

    });

    $("#btnSendMessage").click(function () {
        if (ValidateData() == true) {

            $("#btnSendMessage").css({ "background-image": "url('../mngmnt/pics/loading1.gif')", "background-repeat": "no-repeat", "background-size": "27px", "background-position": "2px" });

            insertMessage($("#txtName").val(), $("#txtEmail").val(), $("#txtSubject").val(), $("#txtBody").val());
        }

    });

    $("#btnExit").click(function () {

        Logout();

    });

    $('#txtUsername, #txtPassword').keyup(function (e) {
        if (e.keyCode == 13) {

            $("#btnLogin").click();
        }
    });
});

function insertMessage(name, email, title, body) {

    var obj = new Object();

    obj.Name = name;
    obj.Email = email;
    obj.Title = title;
    obj.Body = body;

    $.ajax({
        type: "POST",
        url: "../WebService/MapinoWs.asmx/InsertMessage",
        data: "{ messageEntity:" + JSON.stringify(obj) + ", fromSite:'true'}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (data) {
            var msg = eval('(' + data.d + ')');

            if (msg == true) {
                $("#alertSuccess p").text('پیام شما با موفقیت ارسال شد');
                $("#alertSuccess").show(function () {
                    setTimeout(function () {
                        $("#alertSuccess").fadeOut();
                    }, 3000);
                });

            } else {
                $("#alertFailed p").text('خطا در ارسال پیام. لطفا مجددا تلاش نمایید');
                $("#alertFailed").show(function () {
                    setTimeout(function () {
                        $("#alertFailed").fadeOut();
                    }, 3000);
                });

            }

            $("#txtName").val("");
            $("#txtEmail").val("");
            $("#txtTitle").val("");
            $("#txtBody").val("");

        },
        error: function (xhr) {
            //MessageBox(5);
        },
        complete: function () {
            $('#btnSendMessage').css({ "background": "#779253" });
        }
    });
}

function Logout() {

    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "../WebService/MapinoWs.asmx/Logout",
        data: "{}",
        dataType: "json",
        success: function (data) {

            // var msg = eval('(' + data.d + ')');

            $("#divSignIn").show();
            $("#divLogin").hide();

            $("#lblUsername").text("");

            window.location.href = "Default.aspx";
        },
        error: function (xhr, status, error) {
            // window.location.href = "Error.aspx";
        },
        complete: function () {

        }
    });
}

function CheckRememberMe() {

    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "../WebService/MapinoWs.asmx/CheckRememberMe",
        data: "{}",
        dataType: "json",
        success: function (data) {

            var msg = eval('(' + data.d + ')');

            if (msg != null) {

                $("#divSignIn").hide();
                $("#divLogin").show();

                $("#lblUsername").html('<i class="icon-member"></i> ' + msg[0]);

                $("#txtUsername").val(msg[1]);
            }

        },
        error: function (xhr, status, error) {

            //window.location.href = "Error.aspx";

        },
        complete: function () {

        }
    });
}

function Login(username, password, rememberMe) {

    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "../WebService/MapinoWs.asmx/Login",
        data: "{username:'" + username + "',pass:'" + password + "', rememberMe: '" + rememberMe + "'}",
        dataType: "json",
        success: function (data) {
            $(".Erorr").hide();

            if (data.d == -1) {
                $("#alertFailed p").text('نام کاربری یا کلمه عبور شما اشتباه است');
                $("#alertFailed").show(function () {

                    $("#txtUsername").val('');
                    $("#txtPassword").val('');

                    setTimeout(function () {
                        $("#alertFailed").fadeOut();
                    }, 3000);
                });
               
            } else if (data.d == 0) {

                $("#alertFailed p").text('نام کاربری یا کلمه عبور شما اشتباه است');
                $("#alertFailed").show(function () {

                    $("#txtUsername").val('');
                    $("#txtPassword").val('');

                    setTimeout(function () {
                        $("#alertFailed").fadeOut();
                    }, 3000);
                });
              
            } else if (data.d == 1) {
                $("#alertSuccess p").text('شما با موفقیت وارد شدید');
                $("#alertSuccess").show(function () {

                    $("#divSignIn").hide();
                    $("#divLogin").show();

                    $("#txtUsername").val('');
                    $("#txtPassword").val('');

                    setTimeout(function () {
                        $("#alertSuccess").fadeOut();
                    }, 3000);

                    //CheckRememberMe();

                    location.reload(true);
                });
            }

        },
        error: function (xhr, status, error) {

            //window.location.href = "Error.aspx";
        },
        complete: function () {

            $('#btnLogin').css({ "background": "#4caf50" });
        }
    });
}

function ValidateLogin() {

    var check = true;

    $(".LoginRequire").each(function () {

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

function ValidateData() {

    var check = true;

    $(".InputRequire").each(function () {

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

function addCommas(nStr) {
    nStr += '';
    x = nStr.split('.');
    x1 = x[0];
    x2 = x.length > 1 ? '.' + x[1] : '';
    var rgx = /(\d+)(\d{3})/;
    while (rgx.test(x1)) {
        x1 = x1.replace(rgx, '$1' + ',' + '$2');
    }
    return x1 + x2;
}