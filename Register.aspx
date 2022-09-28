<%@ Page Language="C#"  MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content runat="server" ContentPlaceHolderID="head">
   
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="Main">

    <section class="main-other signup-main">
        <div class="box-other">
            <div class="title-otherpg">
                <div class="container">
                    <div class="row">
                        <h4>ثبت نام</h4>
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
                    <div class="box-txt" style="min-height: 670px;">
                        <div class="signup-wrapper">

                            <asp:UpdatePanel ID="UpdatePanelRegister" runat="server">
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="btnRegister" EventName="click" />
                                    <asp:AsyncPostBackTrigger ControlID="btnMobileVerify" EventName="click" />
                                    <asp:AsyncPostBackTrigger ControlID="txtUsername" EventName="TextChanged" />
                                </Triggers>
                                <ContentTemplate>

                                    <div class="col-xs-12 col-sm-6 col-md-6 f-right">
                                        <div class="s-p-form">
                                            <label for="">نام خانوادگی</label>
                                            <asp:TextBox runat="server" ID="txtName" ValidationGroup="Register" placeholder="نام خانوادگی"  />
                                            <asp:RequiredFieldValidator runat="server" ValidationGroup="Register"
                                                ControlToValidate="txtName" ForeColor="red" Display="Dynamic"
                                                ErrorMessage="لطفا نام خانوادگی خود را وارد نمایید"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="s-p-form">
                                            <label style="display: inline"> نام کاربری</label><label style="font-size: 18px; color: red; display: inline">( موبایل یا ایمیل )</label>
                                            <asp:TextBox runat="server" ID="txtUsername" ValidationGroup="Register" AutoPostBack="True" 
                                                placeholder="موبایل یا ایمیل خود را وارد نمایید" OnTextChanged="txtUsername_OnTextChanged"  />
                                            <asp:RequiredFieldValidator Display="Dynamic" runat="server" ValidationGroup="Register"
                                                ControlToValidate="txtUsername" ForeColor="red" ErrorMessage="لطفا نام کاربری خود را وارد نمایید"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator Display="Dynamic" ValidationGroup="Register"
                                                ControlToValidate="txtUsername" runat="server" ForeColor="red"
                                                ValidationExpression="(\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*)|(^(09|9)[0-3][0-9]\d{7}$)"
                                                ErrorMessage="لطفا موبایل یا ایمیل را به شکل صحیح وارد نمایید"></asp:RegularExpressionValidator>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6 f-right">
                                        <div class="s-p-form">
                                            <label for="">کلمه عبور</label>
                                            <asp:TextBox TextMode="Password" runat="server" ID="txtPassword"
                                                placeholder="کلمه عبور" AutoCompleteType="Disabled"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ValidationGroup="Register"
                                                ControlToValidate="txtPassword" ForeColor="red" Display="Dynamic"
                                                ErrorMessage="لطفا کلمه عبور خود را وارد نمایید"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ValidationGroup="Register" Display="Dynamic"
                                                ControlToValidate="txtPassword" ValidationExpression="^[\s\S]{6,}$"
                                                runat="server" ForeColor="red" ErrorMessage="کلمه عبور حداقل 6 حرف باشد"></asp:RegularExpressionValidator>
                                        </div>
                                        <div class="s-p-form">
                                            <label for="">تکرار کلمه عبور</label>
                                            <asp:TextBox TextMode="Password" runat="server" ID="txtRepeatPassword"
                                                placeholder="تکرار کلمه عبور"></asp:TextBox>
                                            <asp:RequiredFieldValidator Display="Dynamic" runat="server"
                                                ValidationGroup="Register" ControlToValidate="txtRepeatPassword"
                                                ForeColor="red" ErrorMessage="لطفا تکرار کلمه عبور خود را وارد نمایید"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator Display="Dynamic" runat="server" ValidationGroup="Register"
                                                ControlToCompare="txtPassword" ControlToValidate="txtRepeatPassword"
                                                ForeColor="red" ErrorMessage="تکرار کلمه عبور با کلمه عبور مطابقت ندارد"></asp:CompareValidator>
                                        </div>
                                    </div>

                                    <div class="clearfix"></div>
                                    <asp:Label runat="server" ID="lblResult" Font-Size="large" Font-Names="myfont"></asp:Label>
                                    <br />
                                    <asp:Label runat="server" ID="lblResult2" Font-Size="large" Font-Names="myfont"></asp:Label>
                                    <p class="conditions-alrm">کلیه<a class="orange" href="Rules.aspx"> شرایط و حقوق </a>استفاده از سرویس های سایت را مطالعه نموده و با تمام موارد آن موافقم.</p>
                                    <asp:Button runat="server" ID="btnRegister" UseSubmitBehavior="False" ValidationGroup="Register"
                                        CssClass="sign-up-btm" Text="ثبت نام" OnClick="btnRegister_OnClick" />
                                    <%--<p class="s-p-member">قبلا در<a class="green" href="Default.aspx"> <span class="orange">مپی </span>نو </a>ثبت نام کرده اید؟  <a class="green" href="#">ورود به سایت</a></p>--%>

                                    <div class="clearfix"></div>
                                    <div class="clearfix"></div>


                                    <div runat="server" id="divVerifyCode" style="display: none;">
                                        <div class="col-xs-12 col-sm-4 col-md-4 f-right">
                                            <div class="s-p-form">
                                                <label for="">کد فعال سازی</label>
                                                <asp:TextBox TextMode="SingleLine" runat="server" ID="txtVerfiyMobile"
                                                    placeholder="کد فعال سازی"></asp:TextBox>
                                                <asp:RequiredFieldValidator Display="Dynamic" runat="server"
                                                    ValidationGroup="VerfiyMobile" ControlToValidate="txtVerfiyMobile"
                                                    ForeColor="red" ErrorMessage="لطفا کد فعال سازی ارسال شده را وارد نمایید"></asp:RequiredFieldValidator>

                                            </div>

                                        </div>
                                        <div class="col-xs-12 col-sm-4 col-md-4 f-right">
                                            <div class="s-p-form">
                                                <label for="">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
                                                <asp:Button runat="server" ID="btnMobileVerify" UseSubmitBehavior="False" ValidationGroup="VerfiyMobile"
                                                    CssClass="sign-up-btm" Text="فعال سازی ثبت نام" OnClick="btnMobileVerify_OnClick" />
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-sm-4 col-md-4 f-right">
                                            <div class="s-p-form">
                                                <label for="">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
                                                <asp:Label runat="server" ID="lblActivation" Font-Size="large" Font-Names="myfont"></asp:Label>
                                            </div>
                                        </div>
                                    </div>

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
