<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Main.Master" AutoEventWireup="true" CodeBehind="ExpertRegister.aspx.cs" Inherits="ExpertForum.ExpertRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div id="div_coban" style="padding: 6px; border: 1px solid #CCCCCC;" class="boxcorner">
            <div class="row" style="padding: 0; margin: 0">
                <div class="col-md-6" style="padding: 0; margin: 0">
                    <table style="width: 100%;">
                        <tbody>
                            <tr>
                                <td width="120px">Họ tên</td>
                                <td colspan="4">
                                    <input name="hoten" type="text" id="hoten" style="font-weight: bold; width: 100%;">
                                </td>
                            </tr>
                            <tr>
                                <td width="120px">Tài khoản đăng ký</td>
                                <td colspan="4">
                                    <input name="taikhoan" type="text" id="taikhoan" style="font-weight: bold; width: 100%;">
                                </td>
                            </tr>
                            <tr>
                                <td>Mật khẩu</td>
                                <td>
                                    <input name="password" type="text" id="txt_password" style="width: 100%;">
                                </td>
                            </tr>
                            <tr>
                                <td>Ngày sinh</td>
                                <td>
                                    <input name="ngaysinh" type="text" id="ngaysinh" class="DATE" style="width: 120px;">
                                </td></tr>
                            <tr>
                                <td>Giới tính</td>
                                <td>
                                    <input id="phai" type="checkbox" name="phai"><label for="phai"> Nữ</label>
                                </td>
                            </tr>
                            <tr>
                                <td>Trình độ</td>
                                <td>
                                    <input name="tdhv" type="text" id="tdhv" style="width: 120px;">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="col-md-6">
                    <table style="width: 100%;">
                        <tbody>
                            <tr>
                                <td>Chuyên môn</td>
                                <td>
                                    <select name="chuyenmon" id="chuyen mon" style="width: 100%;">
                                        <option selected="selected" value=""></option>
                                        <option value="01">01: Tài chính</option>
                                        <option value="02">02: Hôn nhân</option>
                                        <option value="03">03: Sức khỏe</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td width="70px">Số ĐT</td>
                                <td>
                                    <input name="tel" type="text" maxlength="59" id="tel" style="width: 100%;">
                                </td>
                            </tr>


                            <tr>
                                <td>Địa chỉ liên lạc</td>
                                <td>
                                    <input name="dcll" type="text" id="dcll" style="color: #000099; width: 100%;">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <button class="btn btn-primary">Đăng ký</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
