<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="StaffRegister.aspx.cs" Inherits="ExpertForum.StaffRegister" %>

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
                                <td>Mã cán bộ</td>
                                <td>
                                    <input name="mcb" type="text" id="mcb" style="width: 120px;">
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
                                </td>
                                <td style="width: 32px">&nbsp;</td>
                                <td style="padding-left: 6px;">Giới tính</td>
                                <td>
                                    <input id="phai" type="checkbox" name="phai"><label for="phai"> Nữ</label>
                                </td>
                            </tr>
                            <tr>
                                <td>Trình độ</td>
                                <td>
                                    <input name="tdhv" type="text" id="tdhv" style="width: 120px;">
                                </td>
                                <td style="width: 32px">&nbsp;</td>
                                <td style="padding-left: 6px;">Dân tộc</td>
                                <td>
                                    <select name="dantoc" id="dantoc" style="width: 100%;">
                                        <option selected="selected" value=""></option>
                                        <option value="01">01: Kinh</option>
                                        <option value="02">02: Tày</option>
                                        <option value="03">03: Thái</option>
                                        <option value="04">04: Hoa (Hán)</option>
                                        <option value="05">05: Khơ Me</option>
                                        <option value="06">06: Mường</option>
                                        <option value="07">07: Nùng</option>
                                        <option value="08">08: Hmông (Mèo)</option>
                                        <option value="09">09: Dao</option>
                                        <option value="10">10: Ngái</option>
                                        <option value="11">11: Sán Chay</option>
                                        <option value="12">12: Chăm (Chàm)</option>
                                        <option value="13">13: Sán Dìu</option>
                                        <option value="14">14: Bru (V.Kiều)</option>
                                        <option value="15">15: Thổ</option>
                                        <option value="16">16: Giáy</option>
                                        <option value="17">17: Cờ Tu</option>
                                        <option value="18">18: Khơ Mú</option>
                                        <option value="19">19: Tà ôi</option>
                                        <option value="20">20: Kháng</option>
                                        <option value="21">21: Lào</option>
                                        <option value="22">22: La Chi</option>
                                        <option value="23">23: Phu Lá</option>
                                        <option value="24">24: Lô Lô</option>
                                        <option value="25">25: Pà Thẻn</option>
                                        <option value="26">26: Cơ Lao</option>
                                        <option value="27">27: Bố Y</option>
                                        <option value="28">28: Si La</option>
                                        <option value="29">29: Pu Péo</option>
                                        <option value="30">30: Pa Hy</option>
                                        <option value="31">31: Thanh</option>
                                        <option value="32">32: Gia Rai</option>
                                        <option value="33">33: Pa Kô</option>
                                        <option value="34">34: Sách</option>
                                        <option value="35">35: HRê</option>
                                        <option value="36">36: Ba Na</option>
                                        <option value="37">37: Nguồn</option>
                                        <option value="38">38: Kor</option>
                                        <option value="39">39: ê Đê</option>
                                        <option value="40">40: Mơ Nông</option>
                                        <option value="41">41: Rơ Ngao</option>
                                        <option value="42">42: Sê Đăng</option>
                                        <option value="43">43: Dẽ</option>
                                        <option value="44">44: Ctrieng</option>
                                        <option value="45">45: Hà Roi</option>
                                        <option value="46">46: Lạch</option>
                                        <option value="47">47: Rơ Mâm</option>
                                        <option value="48">48: Ca Dong</option>
                                        <option value="49">49: Đan Lai</option>
                                        <option value="50">50: Chu Ru</option>
                                        <option value="51">51: Mán</option>
                                        <option value="52">52: Răc Lây</option>
                                        <option value="53">53: Cil</option>
                                        <option value="54">54: Sơ Rá</option>
                                        <option value="55">55: Hlăng</option>
                                        <option value="56">56: Mạ na</option>
                                        <option value="57">57: Hà Nhì</option>
                                        <option value="60">60: Các DT khác</option>

                                    </select>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="col-md-6">
                    <table style="width: 100%;">
                        <tbody>
                            <tr>
                                <td width="120px">Địa chỉ Th.Trú </td>
                                <td>
                                    <input name="hk_dc" type="text" id="hk_dc" style="width: 100%;">
                                </td>
                            </tr>
                            <tr>
                                <td>Xã</td>
                                <td>
                                    <input name="hk_xa" type="text" id="hk_xa" style="width: 100%;">
                                </td>
                            </tr>
                            <tr>
                                <td>Tỉnh</td>
                                <td>
                                    <select name="hk_ti" onchange="javascript:setTimeout('__doPostBack(\'hk_ti\',\'\')', 0)" id="hk_ti" style="width: 100%;">
                                        <option selected="selected" value=""></option>
                                        <option value="01">01: Tp. Hà Nội</option>
                                        <option value="02">02: Tp. Hồ Chí Minh</option>
                                        <option value="03">03: Tp. Hải Phòng</option>
                                        <option value="04">04: Tp. Đà Nẵng</option>
                                        <option value="05">05: Tỉnh Hà Giang</option>
                                        <option value="06">06: Tỉnh Cao Bằng</option>
                                        <option value="07">07: Tỉnh Điện Biên</option>
                                        <option value="08">08: Tỉnh Lào Cai</option>
                                        <option value="09">09: Tỉnh Tuyên Quang</option>
                                        <option value="10">10: Tỉnh Lạng Sơn</option>
                                        <option value="11">11: Tỉnh Bắc Cạn</option>
                                        <option value="12">12: Tỉnh Thái Nguyên</option>
                                        <option value="13">13: Tỉnh Yên Bái</option>
                                        <option value="14">14: Tỉnh Sơn La</option>
                                        <option value="15">15: Tỉnh Phú Thọ</option>
                                        <option value="16">16: Tỉnh Vĩnh Phúc</option>
                                        <option value="17">17: Tỉnh Quảng Ninh</option>
                                        <option value="18">18: Tỉnh Bắc Giang</option>
                                        <option value="19">19: Tỉnh Bắc Ninh</option>
                                        <option value="20">20: Tỉnh Hà Tây</option>
                                        <option value="21">21: Tỉnh Hải Dương</option>
                                        <option value="22">22: Tỉnh Hưng Yên</option>
                                        <option value="23">23: Tỉnh Hòa Bình</option>
                                        <option value="24">24: Tỉnh Hà Nam</option>
                                        <option value="25">25: Tỉnh Nam Định</option>
                                        <option value="26">26: Tỉnh Thái Bình</option>
                                        <option value="27">27: Tỉnh Ninh Bình</option>
                                        <option value="28">28: Tỉnh Thanh Hóa</option>
                                        <option value="29">29: Tỉnh Nghệ An</option>
                                        <option value="30">30: Tỉnh Hà Tĩnh</option>
                                        <option value="31">31: Tỉnh Quảng Bình</option>
                                        <option value="32">32: Tỉnh Quảng Trị</option>
                                        <option value="33">33: Tỉnh Thừa Thiên Huế</option>
                                        <option value="34">34: Tỉnh Quảng Nam</option>
                                        <option value="35">35: Tỉnh Quảng Ngãi</option>
                                        <option value="36">36: Tỉnh Kon Tum</option>
                                        <option value="37">37: Tỉnh Bình Định</option>
                                        <option value="38">38: Tỉnh Gia Lai</option>
                                        <option value="39">39: Tỉnh Phú Yên</option>
                                        <option value="40">40: Tỉnh Đắk Lắk</option>
                                        <option value="41">41: Tỉnh Khánh Hòa</option>
                                        <option value="42">42: Tỉnh Lâm Đồng</option>
                                        <option value="43">43: Tỉnh Bình Phước</option>
                                        <option value="44">44: Tỉnh Bình Dương</option>
                                        <option value="45">45: Tỉnh Ninh Thuận</option>
                                        <option value="46">46: Tỉnh Tây Ninh</option>
                                        <option value="47">47: Tỉnh Bình Thuận</option>
                                        <option value="48">48: Tỉnh Đồng Nai</option>
                                        <option value="49">49: Tỉnh Long An</option>
                                        <option value="50">50: Tỉnh Đồng Tháp</option>
                                        <option value="51">51: Tỉnh An Giang</option>
                                        <option value="52">52: T. Bà Rịa-VũngTàu</option>
                                        <option value="53">53: Tỉnh Tiền Giang</option>
                                        <option value="54">54: Tỉnh Kiên Giang</option>
                                        <option value="55">55: Tỉnh Cần Thơ</option>
                                        <option value="56">56: Tỉnh Bến Tre</option>
                                        <option value="57">57: Tỉnh Vĩnh Long</option>
                                        <option value="58">58: Tỉnh Trà Vinh</option>
                                        <option value="59">59: Tỉnh Sóc Trăng</option>
                                        <option value="60">60: Tỉnh Bạc Liêu</option>
                                        <option value="61">61: Tỉnh Cà Mau</option>
                                        <option value="62">62: Tỉnh Đăk Nông</option>
                                        <option value="63">63: Tỉnh Hậu Giang</option>
                                        <option value="64">64: Nghệ Tĩnh</option>
                                        <option value="65">65: Tỉnh Lai Châu</option>

                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Huyện</td>
                                <td>
                                    <select name="hk_hu" id="hk_hu" style="width: 100%;">
                                        <option selected="selected" value=""></option>

                                    </select>
                                </td>
                            </tr>

                            <tr>
                                <td>Nguyên quán</td>
                                <td>
                                    <input name="nguyenquan" type="text" id="nguyenquan" style="width: 99%;">
                                </td>
                            </tr>
                            <tr>
                                <td width="70px">Số ĐT</td>
                                <td>
                                    <input name="tel" type="text" maxlength="59" id="tel" style="width: 100%;">
                                </td>
                            </tr>


                            <tr>
                                <td>Địa chỉ liên lạc&nbsp;</td>
                                <td>
                                    <input name="dcll" type="text" id="dcll" style="color: #000099; width: 100%;">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
