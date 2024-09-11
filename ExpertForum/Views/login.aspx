<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Main.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ExpertForum.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-xxl position-relative bg-white d-flex p-0">
        <!-- Sign In Start -->
        <div class="container-fluid">
            <div class="row h-100 align-items-center justify-content-center" style="min-height: 100vh;">
                <div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4">
                    <div class="bg-light rounded p-4 p-sm-5 my-4 mx-3">
                        <div class="d-flex align-items-center justify-content-between mb-3">
                            <a href="index.html" class="">
                                <h3 class="text-primary"><i class="fa fa-hashtag me-2"></i>DASHMIN</h3>
                            </a>
                            <h3>Sign In</h3>
                        </div>
                        <asp:Label id="lblMessage" runat="server"></asp:Label>
                        <div class="form-floating mb-3">
                            <asp:TextBox runat="server" type="text" class="form-control" ID="floatingInput" placeholder="Tên tài khoản"></asp:TextBox>
                            <label for="floatingInput">Tài khoản đăng nhập</label>
                        </div>
                        <div class="form-floating mb-4">
                            <asp:TextBox runat="server" type="password" class="form-control" ID="floatingPassword" placeholder="Mật khẩu"></asp:TextBox>
                            <label for="floatingPassword">Mật khẩu</label>
                        </div>
                        <div class="d-flex align-items-center justify-content-between mb-4">
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1">Check me out</label>
                            </div>
                            <a href="">Forgot Password</a>
                        </div>
                        <asp:Button runat="server" type="button" class="btn btn-primary py-3 w-100 mb-4" OnClick="btnLogin_Click" Text="Đăng nhập"></asp:Button>
                        <p class="text-center mb-0">Don't have an Account? <a href="">Sign Up</a></p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Sign In End -->
    </div>
</asp:Content>
