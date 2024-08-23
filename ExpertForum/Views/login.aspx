<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Main.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ExpertForum.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div id="col1" class="col-md-5" style="background-color: #f0f0f0;" align="center">
                <div style="margin-top: 30px">
                    <img src="../Images/cfrc.png" style="width: 50%">
                </div>
                <div style="margin-top: 30px">
                    <h2>Đăng nhập</h2>
                </div>
                <div style="margin-top: 40px; width: 250px">
                    <input name="txt_name" type="text" id="txt_name" placeholder="Tài khoản đăng nhập" class="form-control">
                    <input name="txt_pws" type="password" id="txt_pws" placeholder="Mật khẩu" class="form-control">
                    <div>
                        <span id="l_sai" style="color: Red; font-weight: normal;"></span>
                    </div>
                    <div style="margin-top: 10px" align="center">
                        <input type="submit" name="bt_login" value="Đăng nhập" id="bt_login" class="btmenu" style="width: 100%;">
                    </div>
                </div>
                <hr />
                <div>
                    <a href="UserRegister.aspx">
                        <p><i>Đăng ký tài khoản cho người dùng<img src="../Images/Double-right.png" width="15"/></i></p>
                    </a>
                </div>
                <br />
                <div>
                    <a href="HomePage.aspx">
                        <p>
                            <i><img src="../Images/Double-left.png" width="15"/>Quay lại trang chủ</i>
                        </p>
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
