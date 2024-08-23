<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Main.Master" AutoEventWireup="true" CodeBehind="SpecialtyManagement.aspx.cs" Inherits="ExpertForum.AdminFunc.SpecialtyManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <center>
                <div class="col-ml-12 ml-auto">
                    <input name="txt_search" id="txt_search" type="text" placeholder="Tìm kiếm lĩnh vực" />
                    <button class="btn btn-secondary" type="button" name="btn_search" id="btn_search" onclick="">Tìm kiếm</button>
                    <button class="btn btn-primary" type="button" name="btn_add" id="btn_add" onclick="" data-toggle="modal" data-target="#addModal">Thêm lĩnh vực</button>
                </div>
                <div class="col-4 mx-auto">
                    <table class="table table-bordered" style="width: 100%;">
                        <thead>
                            <tr>
                                <th scope="col">Tên lĩnh vực
                                </th>
                                <th scope="col">Nhánh chính
                                </th>
                                <th scope="col">Ngày tạo
                                </th>
                                <th scope="col">Danh sách chuyên gia
                                </th>
                                <th scope="col">Hành động
                                </th>
                            </tr>
                        </thead>
                        <tbody class="table-group-divider">
                            <tr>
                                <td scope="row">Tài chính</td>
                                <td>-</td>
                                <td>2024-01-01</td>
                                <td>Bùi Tuấn Anh, Nguyễn Văn A</td>
                                <td>
                                    <button class="btn btn-warning" type="button" name="btn_edit" data-toggle="modal" data-target="#registerModal">Chỉnh sửa</button>
                                    <button class="btn btn-danger" type="button" name="btn_delete" onclick="">Xóa</button>
                                </td>
                            </tr>

                            <tr>
                                <td>Vay vốn</td>
                                <td>Tài chính</td>
                                <td>2024-01-02</td>
                                <td>Nguyễn C</td>
                                <td>
                                    <button class="btn btn-warning" type="button" name="btn_edit" onclick="" data-toggle="modal" data-target="#registerModal">Chỉnh sửa</button>
                                    <button class="btn btn-danger" type="button" name="btn_delete" onclick="">Xóa</button>
                                </td>
                            </tr>
                            <tr>
                                <td>Hôn nhân</td>
                                <td>-</td>
                                <td>2024-03-03</td>
                                <td>Nguyễn Văn B</td>
                                <td>
                                    <button class="btn btn-warning" type="button" name="btn_edit" onclick="" data-toggle="modal" data-target="#registerModal">Chỉnh sửa</button>
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
                            <h5 class="modal-title" id="addModalLabel">Thêm lĩnh vực mới</h5>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="spec_name">Tên chuyên môn:</label>
                                <input type="text" class="form-control" id="spec_name_1" name="spec_name">
                            </div>
                            <div class="form-group">
                                <label for="spec_main">Thuộc nhánh (Không bắt buộc chọn):</label>
                                <select class="form-select form-select-lg mb-3" aria-label="Large select" style="z-index: 1; width: 30%;">
                                    <option value="" selected></option>
                                    <option value="01" text="Tài chính"></option>
                                    <option value="02" text="Hôn nhân"></option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="password">Danh sách chuyên gia của lĩnh vực:</label>
                                <select class="form-select" multiple aria-label="Multiple select" style="height: 20%; z-index: 1; width: 90%; overflow-y: auto;">
                                    <option value="01">Bùi Tuấn Anh</option>
                                </select>
                                <button id="btn_remove_expert_1" style="display: block">Xóa</button>
                            </div>
                            <div class="form-group">
                                <label for="spec_list">Danh sách các chuyên gia trong hệ thống:</label>
                                <select class="form-select" multiple aria-label="Multiple select" style="height: 40%; z-index: 1; width: 90%; overflow-y: auto;">
                                    <option value="01">Bùi Tuấn Anh</option>
                                    <option value="02">Nguyễn Văn A</option>
                                    <option value="03">Nguyễn Văn B</option>
                                    <option value="04">Nguyễn C</option>
                                    <option value="05">Nguyễn E</option>
                                    <option value="06">Nguyễn D</option>
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
                            <h5 class="modal-title" id="registerModalLabel">Chỉnh sửa lĩnh vực</h5>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="spec_name">Tên chuyên môn:</label>
                                <input type="text" class="form-control" id="spec_name" name="spec_name">
                            </div>
                            <div class="form-group">
                                <label for="password">Danh sách chuyên gia của lĩnh vực:</label>
                                <select class="form-select" multiple aria-label="Multiple select" style="height: 20%; z-index: 1; width: 90%; overflow-y: auto;">
                                    <option value="01">Bùi Tuấn Anh</option>
                                </select>
                                <button id="btn_remove_expert" style="display: block">Xóa</button>
                            </div>
                            <div class="form-group">
                                <label for="spec_list">Danh sách các chuyên gia trong hệ thống:</label>
                                <select class="form-select" multiple aria-label="Multiple select" style="height: 40%; z-index: 1; width: 90%; overflow-y: auto;">
                                    <option value="01">Bùi Tuấn Anh</option>
                                    <option value="02">Nguyễn Văn A</option>
                                    <option value="03">Nguyễn Văn B</option>
                                    <option value="04">Nguyễn C</option>
                                    <option value="05">Nguyễn E</option>
                                    <option value="06">Nguyễn D</option>
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
