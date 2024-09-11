<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="ExpertForum.Views.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng nhập</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="keywords" />
    <meta content="" name="description" />
    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet" />

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />

    <link href="../Content/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-xxl position-relative bg-white d-flex p-0">
            <!-- Spinner Start -->
            <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
                <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                    <span class="sr-only">Loading...</span>
                </div>
            </div>
            <!-- Spinner End -->

            <!-- Sign In Start -->
            <div class="container-fluid">
                <div class="row h-100 align-items-center justify-content-center" style="min-height: 100vh;">
                    <div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4">
                        <div class="bg-light rounded p-4 p-sm-5 my-4 mx-3">
                            <div class="d-flex align-items-center justify-content-between mb-3">
                                <h3 class="display-4">Đăng nhập</h3>
                            </div>
                            <asp:Label ID="lblMessage" runat="server" class="text-danger"></asp:Label>
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
                                    <asp:CheckBox runat="server" type="checkbox" class="form-check-input" id="rememberMe"></asp:CheckBox>
                                    <label class="form-check-label" for="rememberMe">Ghi nhớ tôi</label>
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

        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>

        <script src="../Scripts/chart/chart.min.js"></script>
        <script src="../Scripts/easing/easing.min.js"></script>
        <script src="../Scripts/waypoints/waypoints.min.js"></script>
        <script src="../Scripts/owlcarousel/owl.carousel.min.js"></script>
        <script src="../Scripts/tempusdominus/js/moment.min.js"></script>
        <script src="../Scripts/tempusdominus/js/moment-timezone.min.js"></script>
        <script src="../Scripts/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

        <script src="../Scripts/admin_dashboard.js"></script>
    </form>
</body>
</html>
