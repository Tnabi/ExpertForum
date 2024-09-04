<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Main.Master" AutoEventWireup="true" CodeBehind="UnanswerQManagement.aspx.cs" Inherits="ExpertForum.Views.UnanswerQManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <section class="col-md-9">
                <style>
                    #filters-table {
                        width: 60%;
                        float: left;
                    }

                    fieldset#filters table {
                        border-collapse: collapse;
                    }

                    fieldset#filters tr.filter {
                        height: 2.1em;
                    }

                    table > tr {
                        vertical-align: middle;
                    }

                    fieldset#filters td.field {
                        width: 230px;
                    }

                    fieldset#filters td.operator {
                        width: 130px;
                    }

                    fieldset#filters table td {
                        padding: 0;
                        vertical-align: middle;
                    }

                    fieldset#filters td.values {
                        white-space: nowrap;
                    }
                </style>
                <h1>Danh sách câu hỏi tồn đọng</h1>
                <table id="filters-table">
                    <tr class="filter" id="tr_status_id">
                        <td class="field">
                            <input checked="checked" id="cb_status_id" name="f[]" value="status_id" type="checkbox"><label for="cb_status_id"> Status</label></td>
                        <td class="operator">
                            <select id="operators_status_id" name="op[status_id]" style="">
                                <option value="o">open</option>
                                <option value="=">is</option>
                                <option value="!">is not</option>
                                <option value="ev">has been</option>
                                <option value="!ev">has never been</option>
                                <option value="cf">changed from</option>
                                <option value="c">closed</option>
                                <option value="*">any</option>
                            </select></td>
                        <td class="values"><span style="display: none;">
                            <select class="value" id="values_status_id_1" name="v[status_id][]" disabled="disabled">
                                <option value="7">Open</option>
                                <option value="2">In Progress</option>
                                <option value="8">Translated</option>
                                <option value="29">Confirm OK</option>
                            </select>
                            <span class="toggle-multiselect icon-only icon-toggle-plus">&nbsp;</span></span></td>
                    </tr>
                </table>
                <%--<ul>
                        <li>
                            <button type="button" class="btn btn-primary" href="#" style="border-radius: 4px; transition-duration: .5s; text-decoration: none; padding: 10px 16px; border: 1px solid #e6e6e6;">
                                Tất cả</button></li>
                        <li><a href="#">Lĩnh vực 1</a></li>
                        <li><a href="#">Lĩnh vực 2</a></li>
                        <li><a href="#">Lĩnh vực 3</a></li>
                        <li><a href="#">Lĩnh vực 4</a></li>
                    </ul>--%>
        </div>
        <section class="col-md-12">
            <%--  <ul class="list-group post-list">
                    <li class="list-group-item"><a href="ThreadContent.aspx">Question 1</a>
                        Về hình thức vay vốn....
                    </li>
                    <li class="list-group-item"><a href="ThreadContent.aspx">Question 2</a>
                        Nếu như tôi muốn...
                    </li>
                    <li class="list-group-item"><a href="ThreadContent.aspx">Question 3</a></li>
                    <li class="list-group-item"><a href="ThreadContent.aspx">Question 4</a></li>
                    <li class="list-group-item"><a href="ThreadContent.aspx">Question 5</a></li>
                </ul>--%>

            <style>
                table.list, .table-list {
                    border: 1px solid #e4e4e4;
                    width: 100%;
                    margin-bottom: 4px;
                    border-radius: 3px;
                    border-spacing: 0;
                    overflow: hidden;
                }

                table {
                    display: table;
                    border-collapse: separate;
                    box-sizing: border-box;
                    text-indent: initial;
                    unicode-bidi: isolate;
                    border-spacing: 2px;
                    border-color: gray;
                }

                tr.issue {
                    text-align: center;
                    white-space: nowrap;
                }

                .hascontextmenu {
                    cursor: context-menu;
                }

                table.list:not(.odd-even) tbody tr:nth-child(odd), .odd, #issue-changesets div.changeset:nth-child(odd) {
                    background-color: #f6f7f8;
                }

                tr {
                    display: table-row;
                    vertical-align: inherit;
                    unicode-bidi: isolate;
                }

                thead {
                    display: table-header-group;
                    vertical-align: middle;
                    unicode-bidi: isolate;
                    border-color: inherit;
                }

                table.list th, .table-list-header {
                    background-color: #EEEEEE;
                    padding: 4px;
                    white-space: nowrap;
                    font-weight: bold;
                }

                th {
                    display: table-cell;
                    vertical-align: inherit;
                    font-weight: bold;
                    text-align: center;
                    unicode-bidi: isolate;
                }

                tr.issue td.subject, tr.issue td.parent-subject, tr.issue td.category, td.assigned_to, td.last_updated_by, tr.issue td.string, tr.issue td.text, tr.issue td.list, tr.issue td.relations, tr.issue td.parent {
                    white-space: normal;
                }

                table.list td.name, table.list td.description, table.list td.subject, table.list td.parent-subject, table.list td.comments, table.list td.roles, table.list td.attachments, table.list td.text, table.list td.short_description {
                    text-align: left;
                }

                table td {
                    padding: 2px;
                }

                table.list td {
                    text-align: center;
                    vertical-align: middle;
                    padding-right: 10px;
                }
            </style>
            <table class="list issues odd-even sort-by-id sort-desc">
                <thead>
                    <tr>
                        <th class="id"><a title="Sort by &quot;#&quot;" class="sort desc icon icon-sorted-asc" href="/projects/nourin/issues?c%5B%5D=tracker&amp;c%5B%5D=status&amp;c%5B%5D=priority&amp;c%5B%5D=subject&amp;c%5B%5D=assigned_to&amp;c%5B%5D=start_date&amp;c%5B%5D=due_date&amp;f%5B%5D=status_id&amp;f%5B%5D=tracker_id&amp;f%5B%5D=&amp;group_by=&amp;op%5Bstatus_id%5D=o&amp;op%5Btracker_id%5D=%3D&amp;page=3&amp;per_page=25&amp;set_filter=1&amp;sort=id&amp;t%5B%5D=&amp;utf8=%E2%9C%93&amp;v%5Btracker_id%5D%5B%5D=2">#</a></th>
                        <th class="tracker"><a title="Sort by &quot;Tracker&quot;" href="/projects/nourin/issues?c%5B%5D=tracker&amp;c%5B%5D=status&amp;c%5B%5D=priority&amp;c%5B%5D=subject&amp;c%5B%5D=assigned_to&amp;c%5B%5D=start_date&amp;c%5B%5D=due_date&amp;f%5B%5D=status_id&amp;f%5B%5D=tracker_id&amp;f%5B%5D=&amp;group_by=&amp;op%5Bstatus_id%5D=o&amp;op%5Btracker_id%5D=%3D&amp;page=3&amp;per_page=25&amp;set_filter=1&amp;sort=tracker%2Cid%3Adesc&amp;t%5B%5D=&amp;utf8=%E2%9C%93&amp;v%5Btracker_id%5D%5B%5D=2">Tracker</a></th>
                        <th class="status"><a title="Sort by &quot;Status&quot;" href="/projects/nourin/issues?c%5B%5D=tracker&amp;c%5B%5D=status&amp;c%5B%5D=priority&amp;c%5B%5D=subject&amp;c%5B%5D=assigned_to&amp;c%5B%5D=start_date&amp;c%5B%5D=due_date&amp;f%5B%5D=status_id&amp;f%5B%5D=tracker_id&amp;f%5B%5D=&amp;group_by=&amp;op%5Bstatus_id%5D=o&amp;op%5Btracker_id%5D=%3D&amp;page=3&amp;per_page=25&amp;set_filter=1&amp;sort=status%2Cid%3Adesc&amp;t%5B%5D=&amp;utf8=%E2%9C%93&amp;v%5Btracker_id%5D%5B%5D=2">Status</a></th>
                        <th class="priority"><a title="Sort by &quot;Priority&quot;" href="/projects/nourin/issues?c%5B%5D=tracker&amp;c%5B%5D=status&amp;c%5B%5D=priority&amp;c%5B%5D=subject&amp;c%5B%5D=assigned_to&amp;c%5B%5D=start_date&amp;c%5B%5D=due_date&amp;f%5B%5D=status_id&amp;f%5B%5D=tracker_id&amp;f%5B%5D=&amp;group_by=&amp;op%5Bstatus_id%5D=o&amp;op%5Btracker_id%5D=%3D&amp;page=3&amp;per_page=25&amp;set_filter=1&amp;sort=priority%3Adesc%2Cid%3Adesc&amp;t%5B%5D=&amp;utf8=%E2%9C%93&amp;v%5Btracker_id%5D%5B%5D=2">Priority</a></th>
                        <th class="subject"><a title="Sort by &quot;Subject&quot;" href="/projects/nourin/issues?c%5B%5D=tracker&amp;c%5B%5D=status&amp;c%5B%5D=priority&amp;c%5B%5D=subject&amp;c%5B%5D=assigned_to&amp;c%5B%5D=start_date&amp;c%5B%5D=due_date&amp;f%5B%5D=status_id&amp;f%5B%5D=tracker_id&amp;f%5B%5D=&amp;group_by=&amp;op%5Bstatus_id%5D=o&amp;op%5Btracker_id%5D=%3D&amp;page=3&amp;per_page=25&amp;set_filter=1&amp;sort=subject%2Cid%3Adesc&amp;t%5B%5D=&amp;utf8=%E2%9C%93&amp;v%5Btracker_id%5D%5B%5D=2">Subject</a></th>
                        <th class="assigned_to"><a title="Sort by &quot;Assignee&quot;" href="/projects/nourin/issues?c%5B%5D=tracker&amp;c%5B%5D=status&amp;c%5B%5D=priority&amp;c%5B%5D=subject&amp;c%5B%5D=assigned_to&amp;c%5B%5D=start_date&amp;c%5B%5D=due_date&amp;f%5B%5D=status_id&amp;f%5B%5D=tracker_id&amp;f%5B%5D=&amp;group_by=&amp;op%5Bstatus_id%5D=o&amp;op%5Btracker_id%5D=%3D&amp;page=3&amp;per_page=25&amp;set_filter=1&amp;sort=assigned_to%2Cid%3Adesc&amp;t%5B%5D=&amp;utf8=%E2%9C%93&amp;v%5Btracker_id%5D%5B%5D=2">Assignee</a></th>
                        <th class="start_date"><a title="Sort by &quot;Start date&quot;" href="/projects/nourin/issues?c%5B%5D=tracker&amp;c%5B%5D=status&amp;c%5B%5D=priority&amp;c%5B%5D=subject&amp;c%5B%5D=assigned_to&amp;c%5B%5D=start_date&amp;c%5B%5D=due_date&amp;f%5B%5D=status_id&amp;f%5B%5D=tracker_id&amp;f%5B%5D=&amp;group_by=&amp;op%5Bstatus_id%5D=o&amp;op%5Btracker_id%5D=%3D&amp;page=3&amp;per_page=25&amp;set_filter=1&amp;sort=start_date%2Cid%3Adesc&amp;t%5B%5D=&amp;utf8=%E2%9C%93&amp;v%5Btracker_id%5D%5B%5D=2">Start date</a></th>
                        <th class="due_date"><a title="Sort by &quot;Due date&quot;" href="/projects/nourin/issues?c%5B%5D=tracker&amp;c%5B%5D=status&amp;c%5B%5D=priority&amp;c%5B%5D=subject&amp;c%5B%5D=assigned_to&amp;c%5B%5D=start_date&amp;c%5B%5D=due_date&amp;f%5B%5D=status_id&amp;f%5B%5D=tracker_id&amp;f%5B%5D=&amp;group_by=&amp;op%5Bstatus_id%5D=o&amp;op%5Btracker_id%5D=%3D&amp;page=3&amp;per_page=25&amp;set_filter=1&amp;sort=due_date%2Cid%3Adesc&amp;t%5B%5D=&amp;utf8=%E2%9C%93&amp;v%5Btracker_id%5D%5B%5D=2">Due date</a></th>
                    </tr>
                </thead>
                <tbody>
                    <tr id="issue-2293" class="hascontextmenu odd issue tracker-2 status-9 priority-2 priority-default parent">
                        <td class="id"><a href="/issues/2293">2293</a></td>
                        <td class="tracker">Feature/Screen</td>
                        <td class="status">Rejected</td>
                        <td class="priority">Normal</td>
                        <td class="subject"><a href="/issues/2293">[UT2]EMC_CLASS_B(４９．EMC_CLASS01_画面定義書（新区分反映）.xlsx)</a></td>
                        <td class="assigned_to"><a class="user active" href="/users/59">Nguyen Khanh Hoa</a></td>
                        <td class="start_date">01/05/2024</td>
                        <td class="due_date">01/05/2024</td>
                        <td class="buttons"><a title="Actions" class="icon-only icon-actions js-contextmenu" href="#">Actions</a></td>
                    </tr>
                    <tr id="issue-2281" class="hascontextmenu even issue tracker-2 status-9 priority-2 priority-default parent">
                        <td class="id"><a href="/issues/2281">2281</a></td>
                        <td class="tracker">Feature/Screen</td>
                        <td class="status">Rejected</td>
                        <td class="priority">Normal</td>
                        <td class="subject"><a href="/issues/2281">[UT2]EMA_MASKING_B(４６．EMA_MASKING01_画面定義書（速報・確定結果秘匿） .xlsx)</a></td>
                        <td class="assigned_to"><a class="user active" href="/users/27">Pham Van Phong</a></td>
                        <td class="start_date"></td>
                        <td class="due_date"></td>
                        <td class="buttons"><a title="Actions" class="icon-only icon-actions js-contextmenu" href="#">Actions</a></td>
                    </tr>
                    <tr id="issue-2263" class="hascontextmenu odd issue tracker-2 status-9 priority-2 priority-default parent">
                        <td class="id"><a href="/issues/2263">2263</a></td>
                        <td class="tracker">Feature/Screen</td>
                        <td class="status">Rejected</td>
                        <td class="priority">Normal</td>
                        <td class="subject"><a href="/issues/2263">[UT2]EAG_OUTPUT_C_B(５２．EAG_OUTPUT_C01_画面定義書（調査客体等別検討事項出力）.xlsx)</a></td>
                        <td class="assigned_to"><a class="user active" href="/users/27">Pham Van Phong</a></td>
                        <td class="start_date"></td>
                        <td class="due_date"></td>
                        <td class="buttons"><a title="Actions" class="icon-only icon-actions js-contextmenu" href="#">Actions</a></td>
                    </tr>
                    <tr id="issue-2251" class="hascontextmenu even issue tracker-2 status-9 priority-2 priority-default parent">
                        <td class="id"><a href="/issues/2251">2251</a></td>
                        <td class="tracker">Feature/Screen</td>
                        <td class="status">Rejected</td>
                        <td class="priority">Normal</td>
                        <td class="subject"><a href="/issues/2251">[UT2]EAG_OUTPUT_P02_B(４３．EAG_OUTPUT_P02_画面定義書（地域別検討事項一覧）.xlsx)</a></td>
                        <td class="assigned_to"><a class="user active" href="/users/34">Nguyen Ngoc Nam</a></td>
                        <td class="start_date"></td>
                        <td class="due_date"></td>
                        <td class="buttons"><a title="Actions" class="icon-only icon-actions js-contextmenu" href="#">Actions</a></td>
                    </tr>
                </tbody>
            </table>
        </section>

        <%-- <div class="box filedroplistner">
        <fieldset class="tabular"><legend>Change properties</legend>
        <div id="all_attributes">
        

<input type="hidden" name="form_update_triggered_by" id="form_update_triggered_by" value="" autocomplete="off">




<p>
  <label for="issue_tracker_id">Tracker<span class="required"> *</span></label><select onchange="updateIssueFrom('/issues/2293/edit.js', this)" title="" name="issue[tracker_id]" id="issue_tracker_id"><option selected="selected" value="2">Feature/Screen</option>
<option value="5">Task</option>
<option value="6">Q&amp;A</option>
<option value="7">Bug review</option>
<option value="8">Bug testing</option>
<option value="9">Bug customer</option>
<option value="13">Nc (Non-Compliance)</option>
<option value="10">Risk</option>
<option value="11">Issue</option>
<option value="12">Opportunity</option></select>
  
</p>
  <script>
//<![CDATA[

  function selectTracker(id) {
    var target = $('#issue_tracker_id');
    target.attr("selected", false);
    target.find('option[value="' + id + '"]').prop('selected', true);
    target.trigger('change');
    hideModal('#trackers_description h3');
  }

//]]>
</script>

<p><label for="issue_subject">Subject<span class="required"> *</span></label><input size="80" maxlength="255" type="text" value="[UT2]EMC_CLASS_B(４９．EMC_CLASS01_画面定義書（新区分反映）.xlsx)" name="issue[subject]" id="issue_subject"></p>

<p>
  <label for="issue_description">Description</label>
  <a href="#" onclick="$(this).hide(); $(&quot;#issue_description_and_toolbar&quot;).show(); return false;"><span class="icon icon-edit">Edit</span></a>
  <span id="issue_description_and_toolbar" style="display:none">
    <div class="jstBlock"><div class="jstTabs tabs"><ul><li><a href="#" class="tab-edit selected">Edit</a></li><li><a href="#" class="tab-preview" data-url="/issues/preview?issue_id=2293&amp;project_id=nourin">Preview</a></li><li class="tab-elements"><div class="jstElements"><button type="button" tabindex="200" class="jstb_strong" title="Strong (Ctrl+B)"><span>Strong (Ctrl+B)</span></button><button type="button" tabindex="200" class="jstb_em" title="Italic (Ctrl+I)"><span>Italic (Ctrl+I)</span></button><button type="button" tabindex="200" class="jstb_ins" title="Underline (Ctrl+U)"><span>Underline (Ctrl+U)</span></button><button type="button" tabindex="200" class="jstb_del" title="Deleted"><span>Deleted</span></button><button type="button" tabindex="200" class="jstb_code" title="Inline Code"><span>Inline Code</span></button><span id="space1" class="jstSpacer">&nbsp;</span><button type="button" tabindex="200" class="jstb_h1" title="Heading 1"><span>Heading 1</span></button><button type="button" tabindex="200" class="jstb_h2" title="Heading 2"><span>Heading 2</span></button><button type="button" tabindex="200" class="jstb_h3" title="Heading 3"><span>Heading 3</span></button><span id="space2" class="jstSpacer">&nbsp;</span><button type="button" tabindex="200" class="jstb_ul" title="Unordered list"><span>Unordered list</span></button><button type="button" tabindex="200" class="jstb_ol" title="Ordered list"><span>Ordered list</span></button><span id="space3" class="jstSpacer">&nbsp;</span><button type="button" tabindex="200" class="jstb_bq" title="Quote"><span>Quote</span></button><button type="button" tabindex="200" class="jstb_unbq" title="Remove Quote"><span>Remove Quote</span></button><button type="button" tabindex="200" class="jstb_table" title="Table"><span>Table</span></button><button type="button" tabindex="200" class="jstb_pre" title="Preformatted text"><span>Preformatted text</span></button><button type="button" tabindex="200" class="jstb_precode" title="Highlighted code"><span>Highlighted code</span></button><span id="space4" class="jstSpacer">&nbsp;</span><button type="button" tabindex="200" class="jstb_link" title="Link to a Wiki page"><span>Link to a Wiki page</span></button><button type="button" tabindex="200" class="jstb_img" title="Image"><span>Image</span></button><span id="space5" class="jstSpacer">&nbsp;</span><button type="button" tabindex="200" class="jstb_help" title="Help"><span>Help</span></button></div></li></ul></div><div class="jstEditor"><textarea cols="60" class="wiki-edit" rows="10" data-auto-complete="true" name="issue[description]" id="issue_description"></textarea><div class="wiki wiki-preview hidden" id="preview_issue_description"></div></div></div>
</span></p>
<script>
//<![CDATA[
var wikiToolbar = new jsToolBar(document.getElementById('issue_description')); wikiToolbar.setHelpLink('/help/en/wiki_syntax_textile.html'); wikiToolbar.setPreviewUrl('/issues/preview?issue_id=2293&project_id=nourin'); wikiToolbar.draw();
//]]>
</script>

<div id="attributes" class="attributes">
  

<div class="splitcontent">
<div class="splitcontentleft">
<p>
  <label for="issue_status_id">Status<span class="required"> *</span></label><select onchange="updateIssueFrom('/issues/2293/edit.js', this)" title="" name="issue[status_id]" id="issue_status_id"><option value="2">In Progress</option>
<option value="8">Translated</option>
<option selected="selected" value="9">Rejected</option>
<option value="15">Pending</option>
<option value="23">Fixed</option></select>
  
</p>
<script>
//<![CDATA[

  function selectIssueStatus(id) {
    var target = $('#issue_status_id');
    target.attr("selected", false);
    target.find('option[value="' + id + '"]').prop('selected', true);
    target.trigger('change');
    hideModal('#issue_statuses_description h3');
  }

//]]>
</script>


<p><label for="issue_priority_id">Priority<span class="required"> *</span></label><select name="issue[priority_id]" id="issue_priority_id"><option value="1">Low</option>
<option selected="selected" value="2">Normal</option>
<option value="3">High</option>
<option value="4">Urgent</option>
<option value="5">Immediate</option></select></p>

<p>
  <label for="issue_assigned_to_id">Assignee</label><select name="issue[assigned_to_id]" id="issue_assigned_to_id"><option value="">&nbsp;</option>
<option value="23">&lt;&lt; me &gt;&gt;</option><option value="23">Bui Tuan Anh</option><option value="65">Dao Thi Quy</option><option value="26">Khong Ngoc Tram</option><option value="42">Le Thi Hue</option><option value="22">Luu Dang Han</option><option value="59" selected="selected">Nguyen Khanh Hoa</option><option value="20">Nguyen Minh Anh</option><option value="24">Nguyen Quang Ngoc</option><option value="52">Pham Thi Thanh Nga</option><option value="21">Tieu Cong Hoa</option><option value="48">To Thanh Luong</option></select>
    <a class="assign-to-me-link" href="#" data-id="23">Assign to me</a>
</p>

<p><label for="issue_category_id">Category</label><select name="issue[category_id]" id="issue_category_id"><option value="">&nbsp;</option>
<option value="31">00. Project Management</option>
<option value="32">01. Phân tích yêu cầu</option>
<option value="33">02. Thiết kế cơ bản</option>
<option value="34">03. Thiết kế chi tiết</option>
<option value="35">04. Lập trình</option>
<option selected="selected" value="36">05. Kiểm thử FT</option>
<option value="37">06. Kiểm thử IT</option>
<option value="38">07. Kiểm thử ST</option>
<option value="39">08. FT Evidence</option>
<option value="40">09. IT Evidence</option>
<option value="41">10. ST Evidence</option>
<option value="42">11. Điều tra</option>
<option value="43">12. Nộp hàng</option>
<option value="44">13. UAT</option>
<option value="45">14. Khác</option></select>
</p>

<p><label for="issue_fixed_version_id">Target version</label><select name="issue[fixed_version_id]" id="issue_fixed_version_id"><option value="">&nbsp;</option>
<option value="4">UT1</option>
<option selected="selected" value="3">UT2</option>
<option value="5">ChangeDB</option>
<option value="8">Confirm Bug IT</option>
<option value="7">IT</option>
<option value="11">Phân loại Bug KH gửi</option>
<option value="12">ST</option>
<option value="9">Test  bất thường</option>
<option value="6">Training</option>
<option value="10">tạo data test hiệu năng</option></select>

</p>
</div>

<div class="splitcontentright">
<p id="parent_issue"><label for="issue_parent_issue_id">Parent task</label><input size="10" onchange="updateIssueFrom('/issues/2293/edit.js', this)" type="text" name="issue[parent_issue_id]" id="issue_parent_issue_id" class="ui-autocomplete-input autocomplete" autocomplete="off"></p>
<script>
//<![CDATA[
observeAutocompleteField('issue_parent_issue_id', '/issues/auto_complete?issue_id=2293&project_id=nourin&scope=tree&status=o')
//]]>
</script>

<p id="start_date_area">
  <label for="issue_start_date">Start date<span class="required"> *</span></label><input max="9999-12-31" size="10" type="date" name="issue[start_date]" id="issue_start_date" class="date">
  <script>
//<![CDATA[
$(function() { $('#issue_start_date').addClass('date').datepickerFallback(datepickerOptions); });
//]]>
</script>
</p>

<p id="due_date_area">
  <label for="issue_due_date">Due date<span class="required"> *</span></label><input max="9999-12-31" size="10" type="date" name="issue[due_date]" id="issue_due_date" class="date">
  <script>
//<![CDATA[
$(function() { $('#issue_due_date').addClass('date').datepickerFallback(datepickerOptions); });
//]]>
</script>
</p>

<p><label for="issue_estimated_hours">Estimated time</label><input size="3" value="" type="text" name="issue[estimated_hours]" id="issue_estimated_hours"> Hours</p>

</div>
</div>


<div class="splitcontent">
<div class="splitcontentleft">
  <p><label for="issue_custom_field_values_38"><span>Phân loại yêu cầu</span> <span class="required">*</span></label><select name="issue[custom_field_values][38]" id="issue_custom_field_values_38" class="list_cf cf_38" placeholder=""><option value="">--- Please select ---</option><option value="Chuyển đổi ngôn ngữ">Chuyển đổi ngôn ngữ</option>
<option selected="selected" value="UT2">UT2</option>
<option value="IT">IT</option>
<option value="ST">ST</option></select></p>
  <p><label for="issue_custom_field_values_19"><span>Size tài liệu yêu cầu (page)</span></label><input type="text" name="issue[custom_field_values][19]" id="issue_custom_field_values_19" value="" class="int_cf cf_19" placeholder=""></p>
  <p><label for="issue_custom_field_values_22"><span>Size source code (LOC)</span></label><input type="text" name="issue[custom_field_values][22]" id="issue_custom_field_values_22" value="55" class="int_cf cf_22" placeholder=""></p>
  <p><label for="issue_custom_field_values_23"><span>Size UT (test case)</span></label><input type="text" name="issue[custom_field_values][23]" id="issue_custom_field_values_23" value="2" class="int_cf cf_23" placeholder=""></p>
  <p><label for="issue_custom_field_values_26"><span>Case đã test UT</span></label><input type="text" name="issue[custom_field_values][26]" id="issue_custom_field_values_26" value="2" class="int_cf cf_26" placeholder=""></p>
  <p><label for="issue_custom_field_values_13"><span>Phân loại lỗi</span></label><select name="issue[custom_field_values][13]" id="issue_custom_field_values_13" class="list_cf cf_13" placeholder=""><option value="">&nbsp;</option><option value="Chưa phân loại">Chưa phân loại</option>
<option value="[Code] Code sai logic">[Code] Code sai logic</option>
<option value="[Code] Code sai thiết kế">[Code] Code sai thiết kế</option>
<option value="[Code] Code thiếu">[Code] Code thiếu</option>
<option value="[Code] Code không thống nhất/ sai convention">[Code] Code không thống nhất/ sai convention</option>
<option value="[Code] Logic không tối ưu">[Code] Logic không tối ưu</option>
<option value="[Code] Sửa code nhưng sinh ra lỗi mới">[Code] Sửa code nhưng sinh ra lỗi mới</option>
<option value="[Code] Lỗi khác">[Code] Lỗi khác</option>
<option value="[Design] Thiết kế sai">[Design] Thiết kế sai</option>
<option value="[Design] Thiết kế thiếu">[Design] Thiết kế thiếu</option>
<option value="[Design] Thiết kế thừa">[Design] Thiết kế thừa</option>
<option value="[Design] Format, trình bày sai">[Design] Format, trình bày sai</option>
<option value="[Design] Lỗi khác">[Design] Lỗi khác</option>
<option value="[Requirement] Requirement sai">[Requirement] Requirement sai</option>
<option value="[Requirement] Requirement thiếu">[Requirement] Requirement thiếu</option>
<option value="[Requirement] Requirement thừa">[Requirement] Requirement thừa</option>
<option value="[Requirement] Requirement mâu thuẫn">[Requirement] Requirement mâu thuẫn</option>
<option value="[Requirement] Format, trình bày sai">[Requirement] Format, trình bày sai</option>
<option value="[Requirement] Lỗi khác">[Requirement] Lỗi khác</option>
<option value="[Testcase] Format, trình bày sai">[Testcase] Format, trình bày sai</option>
<option value="[Testcase] Testcase sai">[Testcase] Testcase sai</option>
<option value="[Testcase] Thiếu case">[Testcase] Thiếu case</option>
<option value="[Testcase] Thừa/ lặp case">[Testcase] Thừa/ lặp case</option>
<option value="[TestEvidence] Thiếu evidence">[TestEvidence] Thiếu evidence</option>
<option value="[TestEvidence] Evidence không chính xác">[TestEvidence] Evidence không chính xác</option>
<option value="[TestEvidence] Không phải lỗi">[TestEvidence] Không phải lỗi</option>
<option value="[Testing] Không phải lỗi">[Testing] Không phải lỗi</option>
<option value="Request">Request</option></select></p>
  <p><label><span>Nguyên nhân gốc (Bug)</span></label><span class="list_cf cf_14 check_box_group" placeholder=""><label><input type="radio" name="issue[custom_field_values][14]" value="" checked="checked"> (none)</label><label><input type="radio" name="issue[custom_field_values][14]" value="Hiểu sai yêu cầu/rule"> Hiểu sai yêu cầu/rule</label><label><input type="radio" name="issue[custom_field_values][14]" value="Sử dụng sai input"> Sử dụng sai input</label><label><input type="radio" name="issue[custom_field_values][14]" value="Vượt năng lực"> Vượt năng lực</label><label><input type="radio" name="issue[custom_field_values][14]" value="Không cẩn thận"> Không cẩn thận</label><label><input type="radio" name="issue[custom_field_values][14]" value="Sai quy trình"> Sai quy trình</label><label><input type="radio" name="issue[custom_field_values][14]" value="Khác"> Khác</label><label><input type="radio" name="issue[custom_field_values][14]" value="Request"> Request</label></span></p>
  <p><label for="issue_custom_field_values_49"><span>Nội dung nộp hàng JP</span></label><textarea name="issue[custom_field_values][49]" id="issue_custom_field_values_49" class="text_cf cf_49" placeholder="" rows="8"></textarea></p>
  <p><label for="issue_custom_field_values_51"><span>Nội dung nộp hàng VN</span></label><textarea name="issue[custom_field_values][51]" id="issue_custom_field_values_51" class="text_cf cf_51" placeholder="" rows="8"></textarea></p>
</div><div class="splitcontentright">
  <p><label for="issue_custom_field_values_52"><span>Số lần not pass</span></label><input type="text" name="issue[custom_field_values][52]" id="issue_custom_field_values_52" class="int_cf cf_52" placeholder=""></p>
  <p><label><span>[Đã deploy trên MTKH]</span></label><span class="list_cf cf_53 check_box_group" placeholder=""><label><input type="radio" name="issue[custom_field_values][53]" value="" checked="checked"> (none)</label><label><input type="radio" name="issue[custom_field_values][53]" value="Yes"> Yes</label><label><input type="radio" name="issue[custom_field_values][53]" value="No"> No</label></span></p>
  <p><label for="issue_custom_field_values_54"><span>Phạm vi Bug</span></label><select name="issue[custom_field_values][54]" id="issue_custom_field_values_54" class="list_cf cf_54" placeholder=""><option value="">&nbsp;</option><option value="Luv code">Luv code</option>
<option value="Khách hàng Code">Khách hàng Code</option></select></p>
  <p><label for="issue_custom_field_values_55"><span>Giai đoạn phát sinh Bug</span></label><select name="issue[custom_field_values][55]" id="issue_custom_field_values_55" class="list_cf cf_55" placeholder=""><option value="">&nbsp;</option><option value="CD/UT">CD/UT</option>
<option value="IT">IT</option></select></p>
  <p><label for="issue_custom_field_values_56"><span>Start date (thực tế)</span> <span class="required">*</span></label><input type="date" name="issue[custom_field_values][56]" id="issue_custom_field_values_56" max="9999-12-31" class="date_cf cf_56 date" placeholder="" size="10"><script>
//<![CDATA[
$(function() { $('#issue_custom_field_values_56').addClass('date').datepickerFallback(datepickerOptions); });
//]]>
</script></p>
  <p><label for="issue_custom_field_values_57"><span>Due date (thực tế)</span></label><input type="date" name="issue[custom_field_values][57]" id="issue_custom_field_values_57" max="9999-12-31" class="date_cf cf_57 date" placeholder="" size="10"><script>
//<![CDATA[
$(function() { $('#issue_custom_field_values_57').addClass('date').datepickerFallback(datepickerOptions); });
//]]>
</script></p>
  <p><label for="issue_custom_field_values_58"><span>Số lần re-open bởi KH</span></label><input type="text" name="issue[custom_field_values][58]" id="issue_custom_field_values_58" class="int_cf cf_58" placeholder=""></p>
  <p><label for="issue_custom_field_values_59"><span>Chức năng</span></label><textarea name="issue[custom_field_values][59]" id="issue_custom_field_values_59" class="text_cf cf_59" placeholder="" rows="8"></textarea></p>
</div>
</div>





</div>





<script>
//<![CDATA[
rm = window.rm || {};rm.AutoComplete = rm.AutoComplete || {};rm.AutoComplete.dataSources = JSON.parse('{"issues":"/issues/auto_complete?project_id=nourin\u0026q=","wiki_pages":"/wiki_pages/auto_complete?project_id=nourin\u0026q="}');
//]]>
</script>

  <script>
//<![CDATA[
rm.AutoComplete.dataSources = Object.assign(rm.AutoComplete.dataSources, JSON.parse('{"users":"/watchers/autocomplete_for_mention?object_id=2293\u0026object_type=issue\u0026project_id=nourin\u0026q="}'));
//]]>
</script>

<script>
//<![CDATA[

$(document).ready(function(){
  $("#issue_tracker_id, #issue_status_id").each(function(){
    $(this).val($(this).find("option[selected=selected]").val());
  });
  $(".assign-to-me-link").click(function(event){
    event.preventDefault();
    var element = $(event.target);
    $('#issue_assigned_to_id').val(element.data('id'));
    element.hide();
  });
  $('#issue_assigned_to_id').change(function(event){
    var assign_to_me_link = $(".assign-to-me-link");

    if (assign_to_me_link.length > 0) {
      var user_id = $(event.target).val();
      var current_user_id = assign_to_me_link.data('id');

      if (user_id == current_user_id) {
        assign_to_me_link.hide();
      } else {
        assign_to_me_link.show();
      }
    }
  });
});

//]]>
</script>
        </div>
        </fieldset>
        <fieldset class="tabular" id="log_time"><legend>Log time</legend>
        
        <div class="splitcontent">
        <div class="splitcontentleft">
        <p><label for="time_entry_hours">Spent time</label><input size="6" value="" type="text" name="time_entry[hours]" id="time_entry_hours"> Hours</p>
        </div>
        <div class="splitcontentright">
        <p><label for="time_entry_activity_id">Activity</label><select name="time_entry[activity_id]" id="time_entry_activity_id"><option selected="selected" value="">--- Please select ---</option>
<option value="10">Create</option>
<option value="11">Review</option>
<option value="12">Correct</option>
<option value="15">Excecute</option>
<option value="13">Training</option>
<option value="14">Translate</option></select></p>
        </div>
        </div>
        <p><label for="time_entry_comments">Comment</label><input size="60" type="text" name="time_entry[comments]" id="time_entry_comments"></p>
    </fieldset>
      <fieldset id="add_notes"><legend>Notes</legend>
      <div class="jstBlock"><div class="jstTabs tabs"><ul><li><a href="#" class="tab-edit selected">Edit</a></li><li><a href="#" class="tab-preview" data-url="/issues/preview?issue_id=2293&amp;project_id=nourin">Preview</a></li><li class="tab-elements"><div class="jstElements"><button type="button" tabindex="200" class="jstb_strong" title="Strong (Ctrl+B)"><span>Strong (Ctrl+B)</span></button><button type="button" tabindex="200" class="jstb_em" title="Italic (Ctrl+I)"><span>Italic (Ctrl+I)</span></button><button type="button" tabindex="200" class="jstb_ins" title="Underline (Ctrl+U)"><span>Underline (Ctrl+U)</span></button><button type="button" tabindex="200" class="jstb_del" title="Deleted"><span>Deleted</span></button><button type="button" tabindex="200" class="jstb_code" title="Inline Code"><span>Inline Code</span></button><span id="space1" class="jstSpacer">&nbsp;</span><button type="button" tabindex="200" class="jstb_h1" title="Heading 1"><span>Heading 1</span></button><button type="button" tabindex="200" class="jstb_h2" title="Heading 2"><span>Heading 2</span></button><button type="button" tabindex="200" class="jstb_h3" title="Heading 3"><span>Heading 3</span></button><span id="space2" class="jstSpacer">&nbsp;</span><button type="button" tabindex="200" class="jstb_ul" title="Unordered list"><span>Unordered list</span></button><button type="button" tabindex="200" class="jstb_ol" title="Ordered list"><span>Ordered list</span></button><span id="space3" class="jstSpacer">&nbsp;</span><button type="button" tabindex="200" class="jstb_bq" title="Quote"><span>Quote</span></button><button type="button" tabindex="200" class="jstb_unbq" title="Remove Quote"><span>Remove Quote</span></button><button type="button" tabindex="200" class="jstb_table" title="Table"><span>Table</span></button><button type="button" tabindex="200" class="jstb_pre" title="Preformatted text"><span>Preformatted text</span></button><button type="button" tabindex="200" class="jstb_precode" title="Highlighted code"><span>Highlighted code</span></button><span id="space4" class="jstSpacer">&nbsp;</span><button type="button" tabindex="200" class="jstb_link" title="Link to a Wiki page"><span>Link to a Wiki page</span></button><button type="button" tabindex="200" class="jstb_img" title="Image"><span>Image</span></button><span id="space5" class="jstSpacer">&nbsp;</span><button type="button" tabindex="200" class="jstb_help" title="Help"><span>Help</span></button></div></li></ul></div><div class="jstEditor"><textarea cols="60" rows="10" class="wiki-edit" data-auto-complete="true" name="issue[notes]" id="issue_notes" data-tribute="true"></textarea><div class="wiki wiki-preview hidden" id="preview_issue_notes" style="min-height: 154px;">  <p class="empty-preview">Nothing to preview</p>
</div></div></div>
      <script>
//<![CDATA[
var wikiToolbar = new jsToolBar(document.getElementById('issue_notes')); wikiToolbar.setHelpLink('/help/en/wiki_syntax_textile.html'); wikiToolbar.setPreviewUrl('/issues/preview?issue_id=2293&project_id=nourin'); wikiToolbar.draw();
//]]>
</script>


      
      </fieldset>
      <fieldset id="add_attachments"><legend>Files</legend>

        <div id="new-attachments" style="display:inline-block;">
          
<span class="attachments_form">
  <span class="attachments_fields">
  </span>
  <span class="add_attachment" style="">
    <input type="file" name="attachments[dummy][file]" class="file_selector filedrop" multiple="multiple" onchange="addInputFiles(this);" data-max-number-of-files-message="This file cannot be uploaded because it exceeds the maximum number of files that can be attached simultaneously (10)" data-max-file-size="5242880" data-max-file-size-message="This file cannot be uploaded because it exceeds the maximum allowed file size (5 MB)" data-max-concurrent-uploads="2" data-upload-path="/uploads.js" data-param="attachments" data-description="true" data-description-placeholder="Optional description">
    (Maximum size: 5 MB)
  </span>
</span>


        </div>
      </fieldset>
    </div> --%>
    </div>
    <script>
        
    </script>
</asp:Content>
