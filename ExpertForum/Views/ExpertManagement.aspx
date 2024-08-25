<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Main.Master" AutoEventWireup="true" CodeBehind="ExpertManagement.aspx.cs" Inherits="ExpertForum.Views.ExpertManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <center>
                <div class="col-ml-12 ml-auto">
                    <input name="txt_search" id="txt_search" type="text" placeholder="Tìm kiếm chuyên gia" />
                    <button class="btn btn-secondary" type="button" name="btn_search" id="btn_search" onclick="">Tìm kiếm</button>
                    <button class="btn btn-primary" type="button" name="btn_add" id="btn_add" onclick="" data-toggle="modal" data-target="#addModal">Thêm chuyên gia</button>
                </div>
                <div class="col-4 mx-auto">
                    <table class="table table-bordered" style="width: 100%;">
                        <thead>
                            <tr>
                                <th scope="col">Chuyên gia
                                </th>
                                <th scope="col">Giới tính
                                </th>
                                <th scope="col">Năm sinh
                                </th>
                                <th scope="col">Ngày thêm
                                </th>
                                <th scope="col">Danh sách chuyên môn
                                </th>
                                <th scope="col">Hành động
                                </th>
                            </tr>
                        </thead>
                        <tbody class="table-group-divider">
                            <tr>
                                <td scope="row">Bùi Tuấn Anh</td>
                                <td>Nam</td>
                                <td>2000</td>
                                <td>2024-01-01</td>
                                <td>Vay vốn</td>
                                <td>
                                    <button class="btn btn-warning" type="button" name="btn_edit" data-toggle="modal" data-target="#registerModal">Chỉnh sửa</button>
                                    <button class="btn btn-danger" type="button" name="btn_delete" onclick="">Xóa</button>
                                </td>
                            </tr>

                            <tr>
                                <td scope="row">A</td>
                                <td>Nam</td>
                                <td>1990</td>
                                <td>2024-01-03</td>
                                <td>Tài chính</td>
                                <td>
                                    <button class="btn btn-warning" type="button" name="btn_edit" data-toggle="modal" data-target="#registerModal">Chỉnh sửa</button>
                                    <button class="btn btn-danger" type="button" name="btn_delete" onclick="">Xóa</button>
                                </td>
                            </tr>
                            <tr>
                                <td scope="row">B</td>
                                <td>Nữ</td>
                                <td>1999</td>
                                <td>2024-02-09</td>
                                <td>Hôn nhân</td>
                                <td>
                                    <button class="btn btn-warning" type="button" name="btn_edit" data-toggle="modal" data-target="#registerModal">Chỉnh sửa</button>
                                    <button class="btn btn-danger" type="button" name="btn_delete" onclick="">Xóa</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </center>

            <%-- Modal mới --%>
            <div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="addModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content col-md-12 mx-auto">
                        <div class="modal-header">
                            <h2 class="modal-title" id="addModalLabel">Thêm chuyên gia</h2>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="name">Họ tên:</label>
                                <input type="text" class="form-control" id="name_1" name="name">
                            </div>
                            <div class="form-group">
                                <label for="gender">Giới tính:</label>
                                <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                    <asp:ListItem Value="01">Nam</asp:ListItem>
                                    <asp:ListItem Value="02">Nữ</asp:ListItem>
                                </asp:RadioButtonList>

                            </div>
                            <div class="form-group">
                                <label for="birthday">Ngày sinh:</label>
                                <asp:TextBox ID="birthday" runat="server" TextMode="Date"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="password">Danh sách chuyên môn:</label>
                                <select class="form-select" multiple aria-label="Multiple select" style="height: 20%; z-index: 1; width: 90%; overflow-y: auto;">
                                    <option value="01">Tài chính</option>
                                </select>
                                <button id="btn_remove_expert_1" style="display: block">Xóa</button>
                            </div>
                            <div class="form-group">
                                <label for="spec_list">Danh sách các chuyên môn trong hệ thống:</label>
                                <select class="form-select" multiple aria-label="Multiple select" style="height: 40%; z-index: 1; width: 90%; overflow-y: auto;">
                                    <option value="01">Tài chính</option>
                                    <option value="02">Vay vốn</option>
                                    <option value="03">Hôn nhân</option>
                                </select>
                                <button id="btn_add_expert_1" style="display: block">Thêm</button>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
                                <button type="button" class="btn btn-primary ml-auto">Xác nhận</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <%--Modal chỉnh sửa--%>
            <div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="registerModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content col-md-12 mx-auto">
                        <div class="modal-header">
                            <h2 class="modal-title" id="registerModalLabel">Chỉnh sửa thông tin chuyên gia</h2>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="name">Họ tên:</label>
                                <input type="text" class="form-control" id="name" name="name" readonly value="A">
                            </div>
                            <div class="form-group">
                                <label for="gender">Giới tính:</label>
                               <input type="text" class="form-control" id="gender" name="gender" readonly value="Nam">

                            </div>
                            <div class="form-group">
                                <label for="birthday">Ngày sinh:</label>
                                <input name="ngaysinh" type="text" value="20/01/2000" id="ngaysinh" class="DATE" style="width:120px;" readonly>
                            </div>
                            <div class="form-group">
                                <label for="password">Danh sách chuyên môn:</label>
                                <select class="form-select" multiple aria-label="Multiple select" style="height: 20%; z-index: 1; width: 90%; overflow-y: auto;">
                                    <option value="01">Tài chính</option>
                                </select>
                                <button id="btn_remove_expert" style="display: block">Xóa</button>
                            </div>
                            <div class="form-group">
                                <label for="spec_list">Danh sách các chuyên môn trong hệ thống:</label>
                                <select class="form-select" multiple aria-label="Multiple select" style="height: 40%; z-index: 1; width: 90%; overflow-y: auto;">
                                    <option value="01">Tài chính</option>
                                    <option value="02">Vay vốn</option>
                                    <option value="03">Hôn nhân</option>
                                </select>
                                <button id="btn_add_expert" style="display: block">Thêm</button>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
                                <button type="button" class="btn btn-primary ml-auto">Xác nhận</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
