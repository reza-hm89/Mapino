var RowId = [];
var langId = -1;

$(document).ready(function () {

    LoadLanguageDropDown();

    if (ModulePermission.Insert == false || ModulePermission.Update == false) {

        $("#container").empty();
        $("#container").load("404.aspx");
    }

    $("#modal11").click();
  
    $("#closeModal").click(function () {

        $(".Languages").each(function (event) {

            if ($(this).is(":checked") == true) {
                langId = $(this).val();
            }
        });

        BindRecordToEdit(langId);
    });

    $("#btnSaveWebsiteSetting").click(function() {

        ShowLoading();

        var files = [];

        files[0] = $("#FileUploadHeaderImage1");
        files[1] = $("#FileUploadHeaderImage2");
        files[2] = $("#FileUploadLogo1");
        files[3] = $("#FileUploadLogo2");
        files[4] = $("#FileUploadFooterImage1");
        files[5] = $("#FileUploadFooterImage2");
       

        UploadFile(files);

    });

    $("#btnAddHeaderImage1, #txtHeaderImage1").click(function () {
        $("#FileUploadHeaderImage1").click();
    });

    $("#btnAddHeaderImage2, #txtHeaderImage2").click(function () {
        $("#FileUploadHeaderImage2").click();
    });

    $("#btnAddFooterImage1, #txtFooterImage1").click(function () {
        $("#FileUploadFooterImage1").click();
    });

    $("#btnAddFooterImage2, #txtFooterImage2").click(function () {
        $("#FileUploadFooterImage2").click();
    });

    $("#btnAddLogo1, #txtLogo1").click(function () {
        $("#FileUploadLogo1").click();
    });

    $("#btnAddLogo2, #txtLogo2").click(function () {
        $("#FileUploadLogo2").click();
    });

    $("#FileUploadHeaderImage1").change(function () {

        var files = $('#FileUploadHeaderImage1')[0].files;
        for (var i = 0; i < files.length; i++) {
            $("#txtHeaderImage1").val(files[i].name);
        }
    });
    
    $("#FileUploadHeaderImage2").change(function () {

        var files = $('#FileUploadHeaderImage2')[0].files;
        for (var i = 0; i < files.length; i++) {
            $("#txtHeaderImage2").val(files[i].name);
        }
    });

    $("#FileUploadFooterImage1").change(function () {

        var files = $('#FileUploadFooterImage1')[0].files;
        for (var i = 0; i < files.length; i++) {
            $("#txtFooterImage1").val(files[i].name);
        }
    });

    $("#FileUploadFooterImage2").change(function () {

        var files = $('#FileUploadFooterImage2')[0].files;
        for (var i = 0; i < files.length; i++) {
            $("#txtFooterImage2").val(files[i].name);
        }
    });

    $("#FileUploadLogo1").change(function () {

        var files = $('#FileUploadLogo1')[0].files;
        for (var i = 0; i < files.length; i++) {
            $("#txtLogo1").val(files[i].name);
        }
    });

    $("#FileUploadLogo2").change(function () {

        var files = $('#FileUploadLogo2')[0].files;
        for (var i = 0; i < files.length; i++) {
            $("#txtLogo2").val(files[i].name);
        }
    });

    $('#txtPublicGift, #txtMoarefGift').keyup(function (s) {
        var x = $(this).val();
        $(this).val(x.toString().replace(/,/g, "").replace(/\B(?=(\d{3})+(?!\d))/g, ","));
    });

    $('#txtPublicGift, #txtMoarefGift').keydown(function (event) {
        if (event.keyCode == 46 || event.keyCode == 8 || event.keyCode == 9
            || event.keyCode == 27 || event.keyCode == 13
            || (event.keyCode == 65 && event.ctrlKey === true)
            || (event.keyCode >= 35 && event.keyCode <= 39)) {


            return;
        } else {
            if (event.shiftKey || (event.keyCode < 48 || event.keyCode > 57) && (event.keyCode < 96 || event.keyCode > 105)) {
                event.preventDefault();
            }
        }

    });
});

function LoadLanguageDropDown() {

    $.ajax({
        type: "POST",
        url: "WebServices/LanguageWs.asmx/GetData",
        data: "{}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (response) {
            var msg = eval('(' + response.d + ')');

            var drpLanguage = "";
            var radioLanguage = "";

            for (var i = 0; i < msg.length; i++) {

                var lang = msg[i].Name;

                drpLanguage += '  <option value="' + msg[i].Id + '">' + msg[i].Name + '</option>';

                radioLanguage += '<div class="radio">' +
                    '<label>' +
                    '<input type="radio" value="' + msg[i].Id + '"  name="Languages" class="grey Languages">' +
                    '<p>' + msg[i].Name + '</p>' +
                    '</label>' +
                    '</div>';

            }

            $("#DrpLanguage").html(drpLanguage);

            $(".modal-body").html(radioLanguage);

            Main.init2();

        },
        error: function (xhr) {
            MessageBox(5);
        },
        complete: function () {

        }
    });
}

function UploadFile(fileUpload) {

    var fromdata = new FormData();

    for (var j = 0; j < fileUpload.length; j++) {
       
        var uploadfiles = fileUpload[j].get(0);
        var uploadedfiles = uploadfiles.files;
        
        for (var i = 0; i < uploadedfiles.length; i++) {
            fromdata.append(uploadedfiles[i].name, uploadedfiles[i]);
        }
    }
  
   
    var choice = {};
    choice.url = "Handler/SettingHandler.ashx";
    choice.type = "POST";
    choice.data = fromdata;
    choice.contentType = false;
    choice.processData = false;
    choice.success = function (result) {

       var role1 = CKEDITOR.instances['txtRoles1'].getData();
       var role2 = CKEDITOR.instances['txtRoles2'].getData();

       var publicGift = $("#txtPublicGift").val().replace(/,/g, '');
       var moarefGift = $("#txtMoarefGift").val().replace(/,/g, '');

        SaveData($("#txtAddress1").val(), $("#txtAddress2").val(), $("#txtAddress3").val(),
            $("#txtTel1").val(), $("#txtTel2").val(), $("#txtTel3").val(),
            $("#txtMobile1").val(), $("#txtMobile2").val(), $("#txtMobile3").val(),
            $("#txtEmail1").val(), $("#txtEmail2").val(), $("#txtEmail3").val(),
            $("#txtFacebook").val(), $("#txtTwitter").val(), $("#txtGooglePlus").val(),
            $("#txtInstagram").val(), $("#txtLinkedin").val(), $("#txtGithub").val(),
            $("#txtSkype").val(), $("#txtViber").val(), $("#txtHeaderImage1").val(),
            $("#txtHeaderImage2").val(), $("#txtLogo1").val(), $("#txtLogo2").val(),
            $("#txtFooterImage1").val(), $("#txtFooterImage2").val(), $("#txtHeaderTitle").val(),
            $("#txtFooterDescription").val(), $("#txtCopyRightText").val(), $("#txtCopyRightYear").val(),
             $("#DrpLanguage").val(), role1, role2, publicGift, moarefGift
        );

    };

    $.ajax(choice);
    event.preventDefault();
}

function BindRecordToEdit(id) {

    ShowLoading();
   
    $.ajax({
        type: "POST",
        url: "WebServices/WebsiteSettingWs.asmx/BindRecordToEdit",
        data: "{languageId: '"+ id +"'}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",       
        async: "true",
        success: function (response) {
            var msg = eval('(' + response.d + ')');

            if (msg[0] != null) {

                $("#txtAddress1").val(msg[0].Address1);
                $("#txtAddress2").val(msg[0].Address2);
                $("#txtAddress3").val(msg[0].Address3);
                $("#txtTel1").val(msg[0].Tel1);
                $("#txtTel2").val(msg[0].Tel2);
                $("#txtTel3").val(msg[0].Tel3);
                $("#txtMobile1").val(msg[0].Mobile1);
                $("#txtMobile2").val(msg[0].Mobile2);
                $("#txtMobile3").val(msg[0].Mobile3);
                $("#txtEmail1").val(msg[0].Email1);
                $("#txtEmail2").val(msg[0].Email2);
                $("#txtEmail3").val(msg[0].Email3);
                $("#txtFacebook").val(msg[0].Facebook);
                $("#txtTwitter").val(msg[0].Twitter);
                $("#txtGooglePlus").val(msg[0].GooglePlus);
                $("#txtInstagram").val(msg[0].Instagram);
                $("#txtLinkedin").val(msg[0].Linkedin);
                $("#txtGithub").val(msg[0].Github);
                $("#txtSkype").val(msg[0].Skype);
                $("#txtViber").val(msg[0].Viber);
                $("#txtHeaderImage1").val(msg[0].HeaderImage1);
                $("#txtHeaderImage2").val(msg[0].HeaderImage2);
                $("#txtLogo1").val(msg[0].Logo1);
                $("#txtLogo2").val(msg[0].Logo2);
                $("#txtFooterImage1").val(msg[0].FooterImage1);
                $("#txtFooterImage2").val(msg[0].FooterImage2);
                $("#txtHeaderTitle").val(msg[0].HeaderTitle);
                $("#txtFooterDescription").val(msg[0].FooterDescription);
                $("#txtCopyRightText").val(msg[0].CopyRightText);
                $("#txtCopyRightYear").val(msg[0].CopyRightYear);
                $("#DrpLanguage").val(msg[0].LanguageID);
                $("#txtRoles1").val(msg[0].Roles1);
                CKEDITOR.instances['txtRoles1'].setData(msg[0].Roles1);
                $("#txtRoles2").val(msg[0].Roles2);
                CKEDITOR.instances['txtRoles2'].setData(msg[0].Roles2);
                $("#txtPublicGift").val(addCommas(msg[0].PublicGift));
                $("#txtMoarefGift").val(addCommas(msg[0].MoarefGift));
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

function SaveData(address1, address2, address3, tel1, tel2, tel3,
                  mobile1, mobile2, mobile3,email1, email2, email3,
                  facebook, twitter, googlePlus, instagram, linkedin,
                  github, skype, viber, headerImage1, headerImage2,
                  logo1, logo2, footerImage1, footerImage2, headerTitle,
                  footerDescription, copyRightText, copyRightYear, languageId,
                  role1, role2, publicGift, moarefGift) {

    var web = new Object();

    web.Address1 = address1;
    web.Address2 = address2;
    web.Address3 = address3;
    web.Tel1 = tel1;
    web.Tel2 = tel2;
    web.Tel3 = tel3;
    web.Mobile1 = mobile1;
    web.Mobile2 = mobile2;
    web.Mobile3 = mobile3;
    web.Email1 = email1;
    web.Email2 = email2;
    web.Email3 = email3;
    web.Facebook = facebook;
    web.Twitter = twitter;
    web.GooglePlus = googlePlus;
    web.Instagram = instagram;
    web.Linkedin = linkedin;
    web.Github = github;
    web.Skype = skype;
    web.Viber = viber;
    web.HeaderImage1 = headerImage1;
    web.HeaderImage2 = headerImage2;
    web.Logo1 = logo1;
    web.Logo2 = logo2;
    web.FooterImage1 = footerImage1;
    web.FooterImage2 = footerImage2;
    web.HeaderTitle = headerTitle;
    web.FooterDescription = footerDescription;
    web.CopyRightText = copyRightText;
    web.CopyRightYear = copyRightYear;
    web.LanguageID = languageId;
    web.Roles1 = role1;
    web.Roles2 = role2;
    web.PublicGift = publicGift;
    web.MoarefGift = moarefGift;
   
    $.ajax({
        type: "POST",
        url: "WebServices/WebsiteSettingWs.asmx/Insert",
        data: "{websiteSettingEntity: " + JSON.stringify(web) + "}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (data) {
            var msg = eval('(' + data.d + ')');

            MessageBox(1);
        },
        error: function (xhr) {
            MessageBox(5);
        },
        complete: function () {          
            HideLoading();
        }
    });
}

