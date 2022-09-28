var bankAccountId = -1;

$(document).ready(function () {

    LoadUserIDDropDown();

    if (ModulePermission.Insert == false || ModulePermission.Update == false) {

        $("#container").empty();
        $("#container").load("404.aspx");
    }

    if ($("#EditMode").val() == "false") {
        $("#DivSave").addClass("col-sm-offset-2");
    }

    $("#btnCancel").click(function () {
        $("#container").load("BankAccountList.aspx");
    });

    $("#btnSaveBankAccount").click(function () {

        if (ValidateData() == true) {

            $("#btnSaveBankAccount").css({ "background-image": "url('pics/loading1.gif')", "background-repeat": "no-repeat", "background-size": "25px", "background-position": "2px" });

                if ($("#EditMode").val() == "false") {

                    insertBankAccount($("#txtName").val(), $("#txtBankName").val(),
                        $("#txtCardNumber").val(), $("#txtAccountNumber").val(), $("#txtSheba").val()
                        , $("#drpUserID").val());
                } else {

                    updateBankAccount(bankAccountId, $("#txtName").val(), $("#txtBankName").val(),
                        $("#txtCardNumber").val(), $("#txtAccountNumber").val(), $("#txtSheba").val()
                        , $("#drpUserID").val());
                }
            }

    });


});

function LoadUserIDDropDown() {

    $.ajax({
        type: "POST",
        url: "WebServices/UserWs.asmx/GetData",
        data: "{}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (response) {
            var msg = eval('(' + response.d + ')');

            var drpUserID = "";

            for (var i = 0; i < msg.length; i++) {
                drpUserID += '  <option value="' + msg[i].Id + '">' + msg[i].Name + '</option>';
            }

            $("#drpUserID").append(drpUserID);

        },
        error: function (xhr) {
            MessageBox(5);
        },
        complete: function () {

        }
    });
}

function insertBankAccount(name, bankname, cardnumber, accountnumber, sheba, userid) {

    var obj = new Object();

    obj.Name = name;
    obj.BankName = bankname;
    obj.CardNumber = cardnumber;
    obj.AccountNumber = accountnumber;
    obj.Sheba = sheba;
    obj.UserID = userid;

    $.ajax({
        type: "POST",
        url: "WebServices/BankAccountWs.asmx/Insert",
        data: "{ bankAccountEntity:" + JSON.stringify(obj) + "}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (data) {
            var msg = eval('(' + data.d + ')');

            MessageBox(1);

            $("#txtName").val("");
            $("#txtBankName").val("");
            $("#txtCardNumber").val("");
            $("#txtAccountNumber").val("");
            $("#txtSheba").val("");
               
        },
        error: function (xhr) {
            MessageBox(5);
        },
        complete: function () {
            $('#btnSaveBankAccount').css({ "background": "#364F6A" });
        }
    });
}

function updateBankAccount(id, name, bankname, cardnumber, accountnumber, sheba, userid) {

    var obj = new Object();

    obj.Id = id;
    obj.Name = name;
    obj.BankName = bankname;
    obj.CardNumber = cardnumber;
    obj.AccountNumber = accountnumber;
    obj.Sheba = sheba;
    obj.UserID = userid;

    $.ajax({
        type: "POST",
        url: "WebServices/BankAccountWs.asmx/Update",
        data: "{bankAccountEntity:" + JSON.stringify(obj) + "}",
        contentType: "application/json; charset=utf-8",
        datatype: "jsondata",
        async: "true",
        success: function (data) {
            var msg = eval('(' + data.d + ')');

            MessageBox(2);

            $("#EditMode").val(false);

            if (msg == true) {
                $("#container").load("BankAccountList.aspx");
            }

        },
        error: function (xhr) {
            MessageBox(5);
        },
        complete: function () {
            $('#btnSaveBankAccount').css({ "background": "#364F6A" });
        }
    });
}

function ValidateData() {

    var check = true;

    $(".InputRequire").each(function () {

        if ($(this).val() == "") {
            check = false;
            $(this).css({ "border-color": "#fe0303" });
        } else {
            $(this).css({ "border-color": "#e4e8eb" });
        }
    });

    return check;
}