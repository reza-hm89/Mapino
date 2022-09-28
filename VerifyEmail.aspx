<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="VerifyEmail.aspx.cs" Inherits="VerifyEmail" %>

<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="Main">

    <section class="main-other signup-main">
        <div class="box-other">
            <div class="title-otherpg">
                <div class="container">
                    <div class="row">
                        <h4>فعال سازی حساب کاربری</h4>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="row">
                    <div class="box-txt" style="min-height: 400px;">
                        <div class="signup-wrapper">

                            <div class="col-xs-12 col-sm-12 col-md-12 f-right">
                                <div class="s-p-form">
                                    <asp:Label runat="server" ID="lblResult" Font-Size="large" Font-Names="myfont"></asp:Label>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="clearfix"></div>
    </section>

</asp:Content>
