<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Main.Master" AutoEventWireup="true" CodeBehind="Statistic.aspx.cs" Inherits="ExpertForum.Views.Statistic" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <table width="100%">
                <tbody>
                    <tr>
                        <td width="50%" valign="top">


                            <div style="padding-top: 6px; padding-bottom: 6px">

                                <span id="Label2" style="font-weight: bold;">Chọn kỳ thống kê:</span>

                            </div>
                            <%--<div style="padding-left: 30px">
                                <table style="width: 100%;">
                                    <tbody>
                                        <tr>
                                            <td width="190px" style="border-bottom-style: dotted; border-width: 1px; border-color: #CCCCCC">
                                                <input id="chonky1_R1" type="radio" name="chonky1$GK" value="R1" onclick="javascript:setTimeout('__doPostBack(\'chonky1$R1\',\'\')', 0)"><label for="chonky1_R1">Trong ngày</label>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td style="border-bottom-style: dotted; border-width: 1px; border-color: #CCCCCC">
                                                <input id="chonky1_R2" type="radio" name="chonky1$GK" value="R2" onclick="javascript:setTimeout('__doPostBack(\'chonky1$R2\',\'\')', 0)"><label for="chonky1_R2">Trong tháng</label>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td style="border-bottom-style: dotted; border-width: 1px; border-color: #CCCCCC">
                                                <input id="chonky1_R3" type="radio" name="chonky1$GK" value="R3" onclick="javascript:setTimeout('__doPostBack(\'chonky1$R3\',\'\')', 0)"><label for="chonky1_R3">Trong quý</label>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td style="border-bottom-style: dotted; border-width: 1px; border-color: #CCCCCC">
                                                <input id="chonky1_R4" type="radio" name="chonky1$GK" value="R4" onclick="javascript:setTimeout('__doPostBack(\'chonky1$R4\',\'\')', 0)"><label for="chonky1_R4">6 tháng đầu năm</label>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td style="border-bottom-style: dotted; border-width: 1px; border-color: #CCCCCC">
                                                <input id="chonky1_R5" type="radio" name="chonky1$GK" value="R5" onclick="javascript:setTimeout('__doPostBack(\'chonky1$R5\',\'\')', 0)"><label for="chonky1_R5">6 tháng cuối năm</label>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td style="border-bottom-style: dotted; border-width: 1px; border-color: #CCCCCC">
                                                <input id="chonky1_R6" type="radio" name="chonky1$GK" value="R6" onclick="javascript:setTimeout('__doPostBack(\'chonky1$R6\',\'\')', 0)"><label for="chonky1_R6">Cả năm</label>
                                            </td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td style="border-bottom-style: dotted; border-width: 1px; border-color: #CCCCCC">
                                                <input id="chonky1_R7" type="radio" name="chonky1$GK" value="R7" checked="checked"><label for="chonky1_R7">Tùy chỉnh</label>
                                            </td>
                                            <td>
                                                <div id="chonky1_chonky_div7">
                                                    <input name="chonky1$tu" type="text" value="01/08/2024" id="chonky1_tu" class="DATE" style="font-weight: bold; width: 120px;">
                                                    <input name="chonky1$den" type="text" value="24/08/2024" id="chonky1_den" class="DATE" style="font-weight: bold; width: 120px;">
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>



                            </div>--%>
                            <div style="padding-top: 6px; padding-bottom: 6px">

                                <span id="Label3" style="font-weight: bold;">Chọn lĩnh vực thống kê:</span>

                            </div>
                            <div style="padding-left: 30px">
                                <asp:RadioButtonList ID="rbList" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rbList_SelectedIndexChanged">
                                    <asp:ListItem Text="Tất cả" Value="all"></asp:ListItem>
                                    <asp:ListItem Text="Tùy chọn" Value="custom"></asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div style="padding-top: 6px; padding-bottom: 6px">

                                <span id="Label5" style="font-weight: bold;">Lựa chọn khác:</span>

                                &nbsp;&nbsp;&nbsp;
                            </div>
                            <div style="padding-left: 30px">
                                <input id="dongin" type="checkbox" name="dongin" checked="checked"><label for="dongin"> Chỉ in các dòng khác rỗng</label>
                            </div>
                            <hr>
                            <div align="center" style="padding-top: 6px">


                                <input type="submit" name="Button1" value="In thống kê" onclick="dsprun(this);" id="Button1" style="width: 120px;">
                                <input type="submit" name="Button2" value="In DS Ra" onclick="dsprun(this);" id="Button2" style="width: 90px;">

                                <input type="submit" name="Button3" value="In DS Vào" onclick="dsprun(this);" id="Button3" style="width: 90px;">

                                <input type="submit" name="Button5" value="In DS Hiện có" onclick="dsprun(this);" id="Button5" style="width: 120px;">
                            </div>
                            <div align="center" style="padding-top: 16px; padding-bottom: 16px">

                                <a id="lb_tai" href="javascript:__doPostBack('lb_tai','')" style="font-weight: bold;"></a>

                            </div>
                        </td>
                        <td valign="top" style="border-left-style: solid; border-width: 2px; border-color: #996600; padding-left: 10px">
                            <div style="padding-top: 10px; padding-bottom: 10px">
                                <span id="Label6" style="font-weight: bold;">Thống kê liên tục:</span>
                            </div>
                            <table style="width: 100%;">
                                <tbody>
                                    <tr>
                                        <td width="90px">Từ tháng</td>
                                        <td width="50px">
                                            <select name="dthg1" id="dthg1" style="font-weight: bold; width: 60px;">
                                                <option selected="selected" value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                                <option value="7">7</option>
                                                <option value="8">8</option>
                                                <option value="9">9</option>
                                                <option value="10">10</option>
                                                <option value="11">11</option>
                                                <option value="12">12</option>

                                            </select>
                                        </td>
                                        <td>
                                            <select name="dnam1" id="dnam1" style="font-weight: bold; width: 80px;">
                                                <option selected="selected" value="2024">2024</option>
                                                <option value="2023">2023</option>
                                                <option value="2022">2022</option>
                                                <option value="2021">2021</option>
                                                <option value="2020">2020</option>
                                                <option value="2019">2019</option>
                                                <option value="2018">2018</option>
                                                <option value="2017">2017</option>
                                                <option value="2016">2016</option>
                                                <option value="2015">2015</option>
                                                <option value="2014">2014</option>
                                                <option value="2013">2013</option>
                                                <option value="2012">2012</option>
                                                <option value="2011">2011</option>

                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Đến tháng</td>
                                        <td>
                                            <select name="dthg2" id="dthg2" style="font-weight: bold; width: 60px;">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                                <option value="7">7</option>
                                                <option selected="selected" value="8">8</option>
                                                <option value="9">9</option>
                                                <option value="10">10</option>
                                                <option value="11">11</option>
                                                <option value="12">12</option>

                                            </select>
                                        </td>
                                        <td>
                                            <select name="dnam2" id="dnam2" style="font-weight: bold; width: 80px;">
                                                <option selected="selected" value="2024">2024</option>
                                                <option value="2023">2023</option>
                                                <option value="2022">2022</option>
                                                <option value="2021">2021</option>
                                                <option value="2020">2020</option>
                                                <option value="2019">2019</option>
                                                <option value="2018">2018</option>
                                                <option value="2017">2017</option>
                                                <option value="2016">2016</option>
                                                <option value="2015">2015</option>
                                                <option value="2014">2014</option>
                                                <option value="2013">2013</option>
                                                <option value="2012">2012</option>
                                                <option value="2011">2011</option>

                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>Cấp TK</td>
                                        <td colspan="2">
                                            <table id="cap1" border="0">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <input id="cap1_0" type="radio" name="cap1" value="1" checked="checked"><label for="cap1_0">Theo các phòng giao dịch</label></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <input id="cap1_1" type="radio" name="cap1" value="2"><label for="cap1_1">Theo các cụm</label></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <div align="center" style="padding: 10px">
                                <input type="submit" name="Button4" value="Bắt đầu thống kê" id="Button4" style="width: 200px;">
                            </div>
                            <div align="center" style="padding: 10px">

                                <a id="lb_tai1" href="javascript:__doPostBack('lb_tai1','')" style="font-weight: bold;"></a>

                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="50%" valign="top">&nbsp;</td>
                        <td valign="top" style="border-left-style: solid; border-width: 2px; border-color: #996600; padding-left: 10px">&nbsp;</td>
                    </tr>
                </tbody>
            </table>

            <asp:Panel ID="pnlCustom" runat="server" Style="display: none;">
                <asp:DropDownList ID="ddlCustomOptions" runat="server">
                    <asp:ListItem Text="Tài chính" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Hôn nhân" Value="2"></asp:ListItem>
                </asp:DropDownList>
            </asp:Panel>
        </div>
        <script type="text/javascript">
            document.addEventListener('DOMContentLoaded', function () {
                var rbList = document.getElementById('rbList');
                var pnlCustom = document.getElementById('pnlCustom');

                rbList.addEventListener('change', function () {
                    if (rbList.value === "custom") {
                        pnlCustom.style.display = 'block';
                    } else {
                        pnlCustom.style.display = 'none';
                    }
                });
            });
        </script>
    </div>
</asp:Content>
