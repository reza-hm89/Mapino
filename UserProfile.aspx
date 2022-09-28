<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="UserProfile" %>

<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="Main">

    <section class="main-other signup-main">
        <div class="box-other">
            <div class="title-otherpg">
                <div class="container">
                    <div class="row">
                        <h4>پروفایل کاربری</h4>
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
                                    <asp:AsyncPostBackTrigger ControlID="btnSaveProfile" EventName="click" />
                                </Triggers>
                                <ContentTemplate>

                                    <div class="col-xs-12 col-sm-6 col-md-6 f-right">
                                        <div class="s-p-form">
                                            <label for="">نام کاربری</label>
                                            <asp:TextBox runat="server" ID="txtUsername3" ValidationGroup="Profile"
                                                placeholder="نام کاربری" ReadOnly="True" Enabled="False" />
                                            <asp:RequiredFieldValidator runat="server" ValidationGroup="Profile"
                                                ControlToValidate="txtUsername3" ForeColor="red" Display="Dynamic"
                                                ErrorMessage="نام کاربری موبایل یا ایمیل می باشد"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="s-p-form">
                                            <label for="">نام و نام خانوادگی</label>
                                            <asp:TextBox runat="server" ID="txtName" ValidationGroup="Profile" placeholder="نام و نام خانوادگی" />
                                            <asp:RequiredFieldValidator runat="server" ValidationGroup="Profile"
                                                ControlToValidate="txtName" ForeColor="red" Display="Dynamic"
                                                ErrorMessage="لطفا نام و نام خانوادگی خود را وارد نمایید"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="s-p-form">
                                            <label for="">موبایل</label>
                                            <asp:TextBox runat="server" ID="txtMobile" ValidationGroup="Profile" placeholder="موبایل" />
                                        </div>
                                        <div class="s-p-form">
                                            <label for="">ایمیل</label>
                                            <asp:TextBox runat="server" ID="txtEmail" ValidationGroup="Profile" placeholder="ایمیل" />
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-12 f-right">
                                        <asp:Label runat="server" ID="lblResultProfile" Font-Size="large" Font-Names="myfont"></asp:Label>
                                    </div>

                                    <div class="clearfix"></div>
                                    <asp:Button runat="server" ID="btnSaveProfile" UseSubmitBehavior="False" ValidationGroup="Profile"
                                        CssClass="sign-up-btm" Text="ویرایش اطلاعات" OnClick="btnSaveProfile_OnClick" />
                                    
                                    
                                     <div class="col-xs-12 col-sm-6 col-md-6 f-right">
                                         <div class="s-p-form">
                                            <label for="">کلمه عبور فعلی</label>
                                            <asp:TextBox TextMode="Password" runat="server" ID="txtCurrentPassword" ValidationGroup="ResetPass"
                                                placeholder="کلمه عبور فعلی" AutoCompleteType="Disabled"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ValidationGroup="ResetPass"
                                                ControlToValidate="txtCurrentPassword" ForeColor="red" Display="Dynamic"
                                                ErrorMessage="لطفا کلمه عبور فعلی خود را وارد نمایید"></asp:RequiredFieldValidator>
                                         
                                        </div>
                                        <div class="s-p-form">
                                            <label for="">کلمه عبور جدید</label>
                                            <asp:TextBox TextMode="Password" runat="server" ID="txtNewPassword"
                                                placeholder="کلمه عبور جدید" AutoCompleteType="Disabled"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ValidationGroup="ResetPass"
                                                ControlToValidate="txtNewPassword" ForeColor="red" Display="Dynamic"
                                                ErrorMessage="لطفا کلمه عبور جدید خود را وارد نمایید"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ValidationGroup="ResetPass" Display="Dynamic"
                                                ControlToValidate="txtNewPassword" ValidationExpression="^[\s\S]{6,}$"
                                                runat="server" ForeColor="red" ErrorMessage="کلمه عبور حداقل 6 حرف باشد"></asp:RegularExpressionValidator>
                                        </div>
                                        <div class="s-p-form">
                                            <label for="">تکرار کلمه عبور جدید</label>
                                            <asp:TextBox TextMode="Password" runat="server" ID="txtRepeatNewPassword"
                                                placeholder="تکرار کلمه عبور جدید"></asp:TextBox>
                                            <asp:RequiredFieldValidator Display="Dynamic" runat="server"
                                                ValidationGroup="ResetPass" ControlToValidate="txtRepeatNewPassword"
                                                ForeColor="red" ErrorMessage="لطفا تکرار کلمه عبور جدید خود را وارد نمایید"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator Display="Dynamic" runat="server" ValidationGroup="ResetPass"
                                                ControlToCompare="txtNewPassword" ControlToValidate="txtRepeatNewPassword"
                                                ForeColor="red" ErrorMessage="تکرار کلمه عبور جدید با کلمه عبور جدید مطابقت ندارد"></asp:CompareValidator>
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-sm-12 col-md-12 f-right">
                                        <asp:Label runat="server" ID="lblResultPass" Font-Size="large" Font-Names="myfont"></asp:Label>
                                    </div>

                                    <div class="clearfix"></div>
                                    <asp:Button runat="server" ID="btnChangePassword" UseSubmitBehavior="False" ValidationGroup="ResetPass"
                                        CssClass="sign-up-btm" Text="تغییر کلمه عبور" OnClick="btnChangePassword_OnClick" />
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
