<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Main.Master" AutoEventWireup="true" CodeBehind="QuestionEstimate.aspx.cs" Inherits="ExpertForum.Views.QuestionEstimate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .splitcontent {
            overflow: auto;
            display: flex;
            flex-wrap: wrap;
        }

        .splitcontentleft {
            flex: 1;
            margin-right: 5px;
        }

        div.issue .attributes .attribute {
            padding-left: 180px;
            clear: left;
            min-height: 1.8em;
        }

        div.issue .attribute .value {
            overflow: auto;
            text-overflow: ellipsis;
        }

        div.issue .attributes .attribute .label {
            width: 170px;
            margin-left: -180px;
            font-weight: bold;
            float: left;
            overflow: clip visible;
            text-overflow: ellipsis;
        }
    </style>
    <div class="splitcontent">
        <div class="splitcontentleft">
            <div class="status attribute">
                <div class="label">Status:</div>
                <div class="value">Closed</div>
            </div>
            <div class="priority attribute">
                <div class="label">Priority:</div>
                <div class="value">Normal</div>
            </div>
            <div class="assigned-to attribute">
                <div class="label">Assignee:</div>
                <div class="value"><a class="user active" href="/users/21">Tieu Cong Hoa</a></div>
            </div>
            <div class="category attribute">
                <div class="label">Category:</div>
                <div class="value">07. Kiểm thử ST</div>
            </div>
            <div class="fixed-version attribute">
                <div class="label">Target version:</div>
                <div class="value"><a href="/versions/12">ST</a></div>
            </div>
        </div>
        <div class="splitcontentleft">
            <div class="start-date attribute">
                <div class="label">Start date:</div>
                <div class="value">07/08/2024</div>
            </div>
            <div class="due-date attribute">
                <div class="label">Due date:</div>
                <div class="value">07/08/2024</div>
            </div>
            <div class="progress attribute">
                <div class="label">% Done:</div>
                <div class="value">
                    <table class="progress progress-100">
                        <tbody>
                            <tr>
                                <td style="width: 100%;" class="closed" title="100%"></td>
                            </tr>
                        </tbody>
                    </table>
                    <p class="percent">100%</p>
                </div>
            </div>
            <div class="estimated-hours attribute">
                <div class="label">Estimated time:</div>
                <div class="value">(Total: 1.50 h)</div>
            </div>
        </div>
    </div>
</asp:Content>
