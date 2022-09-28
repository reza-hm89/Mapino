var webUserId = -1;

$(document).ready(function () {

    if (ModulePermission.Insert == false || ModulePermission.Update == false) {

        $("#container").empty();
        $("#container").load("404.aspx");
    }

    if ($("#EditMode").val() == "false") {
        $("#DivSave").addClass("col-md-offset-2");
    }

    $("#btnCancel").click(function () {
        $("#container").load("WebUserList.aspx");
    });


    $("#btnSaveWebUser").click(function() {

        if (ValidateData() == true) {

            $("#btnSaveWebUser").css({ "background-image": "url('pics/loading1.gif')", "background-repeat": "no-repeat", "background-size": "25px", "background-position": "2px" });

            if ($("#txtUrl").val() != "") {

                if ($("#EditMode").val() == "false") {
                    UploadImage();
                } else {
                    if (checkUrl(webUserId) != $("#txtUrl").val()) {
                        UploadImage();
                    }
                }
            } else {

                var gender;
                if ($("#gender_male").is(":checked") == true) {
                    gender = true;
                } else {
                    gender = false;
                }

                if ($("#EditMode").val() == "false") {

                    InsertWebUser($("#txtName").val(), $("#txtFamily").val(), $("#txtFather").val(),
                        $("#txtCodeMeli").val(), $("#txtShomareSh").val(), $("#txtBirthhDay").val(),
                        $("#txtTel").val(), $("#txtMobile").val(), $("#txtEmail").val(),
                        $("#txtAddress").val(), $("#txtZipCode").val(), $("#txtTelOwnerName").val(),
                        $("#drpKind").val(), gender, $("#txtUrl").val(),
                        $("#txtUsername").val(), $("#txtPassword").val());

                } else if ($("#EditMode").val() == "true") {

                    UpdateWebUser(webUserId, $("#txtName").val(), $("#txtFamily").val(), $("#txtFather").val(),
                        $("#txtCodeMeli").val(), $("#txtShomareSh").val(), $("#txtBirthhDay").val(),
                        $("#txtTel").val(), $("#txtMobile").val(), $("#txtEmail").val(),
                        $("#txtAddress").val(), $("#txtZipCode").val(), $("#txtTelOwnerName").val(),
                        $("#drpKind").val(), gender, $("#txtUrl").val(),
                        $("#txtUsername").val(), $("#txtPassword").val());
                }
            }
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

        var gender;
        if ($("#gender_male").is(":checked") == true) {
            gender = true;
        } else {
            gender = false;
        }

        if ($("#EditMode").val() == "false") {

            InsertWebUser($("#txtName").val(), $("#txtFamily").val(), $("#txtFather").val(),
                $("#txtCodeMeli").val(), $("#txtShomareSh").val(), $("#txtBirthhDay").val(),
                $("#txtTel").val(), $("#txtMobile").val(), $("#txtEmail").val(),
                $("#txtAddress").val(), $("#txtZipCode").val(), $("#txtTelOwnerName").val(),
                $("#drpKind").val(), gender, $("#txtUrl").val(),
                $("#txtUsername").val(), $("#txtPassword").val());

        } else if ($("#EditMode").val() == "true") {

            UpdateWebUser(webUserId, $("#txtName").val(), $("#txtFamily").val(), $("#txtFather").val(),
                $("#txtCodeMeli").val(), $("#txtShomareSh").val(), $("#txtBirthhDay").val(),
                $("#txtTel").val(), $("#txtMobile").val(), $("#txtEmail").val(),
                $("#txtAddress").val(), $("#txtZipCode").val(), $("#txtTelOwnerName").val(),
                $("#drpKind").val(), gender, $("#txtUrl").val(),
                $("#txtUsername").val(), $("#txtPassword").val());
        }
    }
    choice.error = function () {
        MessageBox(5);
    }

    $.ajax(choice);
    event.preventDefault();
}

function checkUrl(id) {

    $.ajax({
        type: "POST",
        url: "WebServices/WebUserWs.asmx/CheckUrl",
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

function InsertWebUser(name, family, father, codeMeli, shomareSh, birthDay, tel, mobile, email,
    address, zipCode, telOwnerName,kind, gender, url,  username, password) {

    var obj = new Object();

    obj.Name = name;
    obj.Family = family;
    obj.Father = father;
    obj.CodeMeli = codeMeli;
    obj.ShomareSh = shomareSh;
    obj.BirthhDay = birthDay;
    obj.Tel = tel;
    obj.Mobile = mobile;
    obj.Email = email;
    obj.Address = address; 
    obj.ZipCode = zipCode;
    obj.Kind = kind;
    obj.Gender = gender;
    obj.ImageUrl = url;
    obj.TelOwnerName = telOwnerName;
    obj.Username = username;
    obj.Password = password;
   
    $.ajax({
        type: "POST",
        url: "WebServices/WebUserWs.asmx/Insert",
        data: "{ webUserEntity:" + JSON.stringify(obj) + ",fromSite:'false'}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (response) {
            var msg = eval('(' + response.d + ')');

            if (msg == true) {

                MessageBox(1);

                $("#txtName").val("");
                $("#txtFamily").val("");
                $("#txtFather").val("");
                $("#txtCodeMeli").val("");
                $("#txtShomareSh").val("");
                $("#txtBirthhDay").val("");              
                $("#txtTel").val('');
                $("#txtMobile").val('');
                $("#txtEmail").val('');
                $("#txtAddress").val('');
                $("#txtZipCode").val('');
                $("#txtTelOwnerName").val("");
                $("#txtUrl").val('');
                $("#txtUsername").val('');
                $("#txtPassword").val('');
                $("#txtRepeatPassword").val('');

            } else {
                MessageBox(7);
            }

        },
        error: function (xhr) {
            MessageBox(5);
        },
        complete: function () {
            HideLoading();
            $('#btnSaveWebUser').css({ "background": "#364F6A" });
        }
    });
}

function UpdateWebUser(id, name, family, father, codeMeli, shomareSh, birthDay, tel, mobile, email,
    address, zipCode, telOwnerName, kind, gender, url, username, password) {

    var obj = new Object();

    obj.Id = id;
    obj.Name = name;
    obj.Family = family;
    obj.Father = father;
    obj.CodeMeli = codeMeli;
    obj.ShomareSh = shomareSh;
    obj.BirthhDay = birthDay;
    obj.Tel = tel;
    obj.Mobile = mobile;
    obj.Email = email;
    obj.Address = address;
    obj.ZipCode = zipCode;
    obj.Kind = kind;
    obj.Gender = gender;
    obj.ImageUrl = url;
    obj.TelOwnerName = telOwnerName;
    obj.Username = username;
    obj.Password = password;

    $.ajax({
        type: "POST",
        url: "WebServices/WebUserWs.asmx/Update",
        data: "{webUserEntity:" + JSON.stringify(obj) + "}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (response) {

            var msg = eval('(' + response.d + ')');

            if (msg == true) {

                MessageBox(2);
                $("#container").load("WebUserList.aspx");

            } else {
                MessageBox(7);
            }
        },
        error: function (xhr) {
            MessageBox(5);
        },
        complete: function () {
            $('#btnSaveWebUser').css({ "background": "#364F6A" });
        }
    });

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

    var txtPassword = $("#txtPassword").val();
    var txtRepeatPassword = $("#txtRepeatPassword").val();

    if (txtPassword != txtRepeatPassword) {

        MessageBox(4);

        $("#txtPassword").css({ "border-color": "#fe0303" });
        $("#txtRepeatPassword").css({ "border-color": "#fe0303" });
        check = false;
    }

    return check;
}

