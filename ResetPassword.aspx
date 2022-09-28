<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="ResetPassword.aspx.cs" Inherits="ResetPassword" %>

<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="Main">

    <section class="main-other signup-main">
        <div class="box-other">
            <div class="title-otherpg">
                <div class="container">
                    <div class="row">
                        <h4>بازیابی کلمه عبور</h4>
                    </div>
                </div>
            </div>
            <asp:ScriptManager runat="server" EnablePartialRendering="True"></asp:ScriptManager>
            <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanelRegister">
                <ProgressTemplate>
                    <div class="LoadingModal">
                        <div class="loading" align="center">
                            لطفا منتظر بمانید
                                    <br />
                            <img src="images/loader.gif" alt="بارگذاری اطلاعات" />
                        </div>
                    </div>
                </ProgressTemplate>
            </asp:UpdateProgress>
            <div class="container">
                <div class="row">
                    <div class="box-txt" style="min-height: 400px;">
                        <div class="signup-wrapper">

                            <asp:UpdatePanel ID="UpdatePanelRegister" runat="server">
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="btnSendVerify" EventName="click" />
                                </Triggers>
                                <ContentTemplate>

                                    <div class="col-xs-12 col-sm-12 col-md-12 f-right">
                                        <div class="s-p-form">
                                            <label for="">نام کاربری</label>
                                            <asp:TextBox runat="server" ID="txtUsername3" ValidationGroup="Register" placeholder="نام کاربری" />
                                            <asp:RequiredFieldValidator runat="server" ValidationGroup="Register"
                                                ControlToValidate="txtUsername3" ForeColor="red" Display="Dynamic"
                                                ErrorMessage="نام کاربری موبایل یا ایمیل می باشد"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator Display="Dynamic" ValidationGroup="Register"
                                                ControlToValidate="txtUsername3" runat="server" ForeColor="red"
                                                ValidationExpression="(\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*)|(^(09|9)[0-3][0-9]\d{7}$)"
                                                ErrorMessage="لطفا ایمیل یا موبایل را به شکل صحیح وارد نمایید"></asp:RegularExpressionValidator>
                                        </div>
                                    </div>


                                    <div class="clearfix"></div>
                                    <asp:Label runat="server" ID="lblResult" Font-Size="large" Font-Names="myfont"></asp:Label>
                                    <asp:Button runat="server" ID="btnSendVerify" UseSubmitBehavior="False" ValidationGroup="Register"
                                        CssClass="sign-up-btm" Text="ارسال" OnClick="btnSendVerify_OnClick" />

                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="clearfix"></div>
    </section>

</asp:Content>
