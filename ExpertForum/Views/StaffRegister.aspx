<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Master/NonNav.Master" AutoEventWireup="true" CodeBehind="StaffRegister.aspx.cs" Inherits="ExpertForum.StaffRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row h-100 align-items-center justify-content-center" style="min-height: 100vh;">
                <div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4">
                    <div class="bg-light rounded p-4 p-sm-5 my-4 mx-3">
                        <div class="d-flex align-items-center justify-content-between mb-3">
                            <h3>Đăng ký tài khoản cán bộ</h3>
                            <asp:Label ID="LblMessage" runat="server" class="text-danger"></asp:Label>
                        </div>
                        <div class="form-floating mb-3">
                            <asp:TextBox runat="server" type="text" class="form-control" id="TxtName" placeholder="Họ tên"></asp:TextBox>
                            <label for="TxtName">Họ tên</label>
                        </div>
                        <div class="form-floating mb-3">
                            <asp:TextBox runat="server" type="text" class="form-control" id="TxtUserName" placeholder="Tài khoản"></asp:TextBox>
                            <label for="TxtUserName">Tên tài khoản</label>
                        </div>
                        <div class="form-floating mb-4">
                            <asp:TextBox runat="server" type="password" class="form-control" id="TxtPassword" placeholder=""></asp:TextBox>
                            <label for="TxtPassword">Mật khẩu</label>
                        </div>
                        <asp:Button runat="server" type="button" ID="BtnRegister" OnClick="BtnRegister_Click" class="btn btn-primary py-3 w-100 mb-4" Text="Đăng ký"></asp:Button>
                    </div>
                </div>
            </div>
</asp:Content>
