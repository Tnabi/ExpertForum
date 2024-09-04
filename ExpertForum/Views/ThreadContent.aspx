<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Main.Master" AutoEventWireup="true" CodeBehind="ThreadContent.aspx.cs" Inherits="ExpertForum.Views.ThreadContent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        @import url('https://fonts.googleapis.com/css?family=Roboto');

        $font-stack: 'Roboto', sans-serif;
        $primary-color: #333;
        $base_font_size: 14px;
        $base_margin: 10px;
        $base_padding: 10px;
        $base_background: #e9ebee;
        $base_background: white;
        $base_border_color: #dddfe2;
        $base_border_radius: 5px;
        $color_mute : #90949c;

        body {
            font: 100% $font-stack;
            color: $primary-color;
            max-width: 600px;
            background: #f6f6f6;
        }

        .position-relative {
            position: relative
        }

        .position-absolute {
            position: absolute
        }

        .flex-box {
            display: flex;
        }

        .flex-one {
            flex: 1;
        }

        .flex-start {
            align-items: flex-start;
        }

        .flex-center {
            align-items: center;
            justify-content: center;
        }

        .flex-grow {
            flex-grow: 1;
        }

        .flex-auto {
            flex: 1 0 auto;
        }

        .flex-full {
            flex: 1 1 100%;
        }

        .flex-zero-auto {
            flex: 0 0 auto;
        }

        .flex-zero-one-auto {
            flex: 0 1 auto;
        }

        .flex-one-one-auto {
            flex: 1 1 auto;
        }

        .padding-4-0 {
            padding: 4px 0;
        }

        .engagement-bar-height {
            height: 3px;
        }

        .thworks .reliability-meter {
            margin-bottom: 10px
        }

        .thworks .dot-separator {
            display: inline-block;
            margin: 0 2px;
        }

        .thworks .discussion {
            padding: $base_padding;
            background-color: $base_background;
            border-radius: $base_border_radius;
            border: 1px solid $base_border_color;
            font-size: $base_font_size;
        }

            .thworks .discussion .discussion-body {
                background-color: white
            }

        .thworks .thread-author-image {
            padding-right: 10px;
        }

            .thworks .thread-author-image img {
                width: 40px;
                height: 40px;
                margin-top: 2px;
                border-radius: 50%;
                margin-bottom: 2px;
                margin-right: 2px;
            }

        .thworks .thread-header {
            margin-bottom: 10px
        }

        .thworks .thread-info {
            display: flex;
            line-height: 20px;
        }

        .thworks .thread-author {
            line-height: 20px;
        }

        .thworks .thread-author-image {
            display: flex;
        }

        .thworks .thread-author-info {
            width: 100%;
            display: block
        }

        .thworks .thread-author-name {
            font-weight: bold;
            display: inline-block;
        }

        .thworks .thread-timestamp {
            display: inline-block;
            color: $color_mute;
            font-size: $base_font_size - 2
        }

        .thworks .thread-domain {
            line-height: 20px;
            width: 100%;
            display: block;
            color: $color_mute;
            font-size: $base_font_size - 1
        }

        .thworks .thread-domain-icon {
            display: inline-block;
        }

        .thworks .thread-domain-name {
            display: inline-block;
        }

        .thworks .thread-control {
            display: flex;
            justify-content: flex-end !important;
            flex: 0 0 auto;
            width: 20px;
        }

            .thworks .thread-control .thread-control-dropdown {
                color: $color_mute;
                font-size: 16px;
                padding: 2px 2px;
                cursor: pointer;
            }

        .thworks .thread-body {
            line-height: 20px;
            margin-bottom: 10px;
        }

        .thworks .thread-content {
            padding-right: 5px;
        }

        .thworks .thread-title {
            font-size: $base_font_size + 4;
            margin-bottom: 10px;
            font-weight: 600;
            line-height: 24px;
        }

        .thworks .thread-footer {
        }

        .thworks .thread-article {
            display: flex
        }

            .thworks .thread-article .thread-create {
                flex: 1 1;
                width: 0;
            }

        .thread-editor {
            height: 40px;
            border: 1px solid #dddfe2;
        }

        .thworks .article {
            padding-top: 10px
        }

        .thworks .article-body {
            display: flex;
            line-height: 20px;
        }

        .thworks .article .article-image {
            display: flex;
        }

        .thworks .article .article-content {
            width: 100%;
            display: block;
            padding-right: 5px;
        }

        .thworks .article .article-control {
            display: flex;
            justify-content: flex-end !important;
            flex: 0 0 auto;
            width: 20px;
        }

            .thworks .article .article-control .article-control-dropdown {
                color: $color_mute;
                font-size: 16px;
                padding: 2px 2px;
                cursor: pointer;
            }

        .thworks .article-author-info {
            width: 100%;
            display: block
        }

        .thworks .article-author-name {
            font-weight: bold;
            display: inline-block;
        }

        .thworks .article-timestamp {
            display: inline-block;
            color: $color_mute;
            font-size: $base_font_size - 2
        }

        .engagement-action-item {
            height: 18px;
            justify-content: center;
            margin: 0;
            padding: 0;
            white-space: nowrap;
            width: 100%;
            font-size: 12px
        }

        .action-item-text {
            padding-left: 2px;
            display: none
        }

        .engagement-border {
        }

            .engagement-border:first-child {
                border-left: 1px solid #dddfe2;
            }

        .engagement-action-item {
            display: block
        }

        .action-item-text {
            display: block
        }
    </style>
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <div class="thworks">
                    <div class="discussion">
                        <div class="discussion-body">
                            <div class="thread">
                                <div class="thread-header">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h1>Tiêu đề</h1>
                                        </div>
                                        <div class="panel-body">
                                            <div class="thread-info">
                                                <div class="thread-control-dropdown"><i class="fa fa-ellipsis-h"></i></div>
                                                <div class="thread-author-image">
                                                    <img src="../Images/user.png" />
                                                </div>
                                                <div class="thread-author-info">
                                                    <div class="thread-author">
                                                        <div class="thread-author-name">Nguyễn A</div>
                                                        <div class="dot-separator">&middot;</div>
                                                        <div class="thread-domain-name">Chuyên gia</div>
                                                    </div>
                                                    <div class="thread-domain">
                                                        <div class="thread-domain-icon"><i class="fa fa-globe"></i></div>
                                                        <div class="thread-timestamp">8 days ago</div>
                                                    </div>
                                                </div>
                                            </div>
                                            Nội dung trả lời
                                        </div>
                                    </div>
                                </div>
                                <div class="thread-body">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 categories">
                <ul class="media-list">
                    <li class="media">
                        <div class="media-body">
                            <h3 class="media-heading">Các vấn đề liên quan</h3>
                            <!-- Nested media object -->
                            <div class="media">
                                <div class="media-left">
                                    <a href="#">
                                        <img class="media-object" data-src="holder.js/64x64" alt="64x64" style="width: 64px; height: 64px;" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iNjQiIGhlaWdodD0iNjQiIHZpZXdCb3g9IjAgMCA2NCA2NCIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+PCEtLQpTb3VyY2UgVVJMOiBob2xkZXIuanMvNjR4NjQKQ3JlYXRlZCB3aXRoIEhvbGRlci5qcyAyLjYuMC4KTGVhcm4gbW9yZSBhdCBodHRwOi8vaG9sZGVyanMuY29tCihjKSAyMDEyLTIwMTUgSXZhbiBNYWxvcGluc2t5IC0gaHR0cDovL2ltc2t5LmNvCi0tPjxkZWZzPjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+PCFbQ0RBVEFbI2hvbGRlcl8xOTFiYWMwNmQxOSB0ZXh0IHsgZmlsbDojQUFBQUFBO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1mYW1pbHk6QXJpYWwsIEhlbHZldGljYSwgT3BlbiBTYW5zLCBzYW5zLXNlcmlmLCBtb25vc3BhY2U7Zm9udC1zaXplOjEwcHQgfSBdXT48L3N0eWxlPjwvZGVmcz48ZyBpZD0iaG9sZGVyXzE5MWJhYzA2ZDE5Ij48cmVjdCB3aWR0aD0iNjQiIGhlaWdodD0iNjQiIGZpbGw9IiNFRUVFRUUiLz48Zz48dGV4dCB4PSIxMy4xNzMwMDQxNTAzOTA2MjUiIHk9IjM2LjUiPjY0eDY0PC90ZXh0PjwvZz48L2c+PC9zdmc+" data-holder-rendered="true">
                                    </a>
                                </div>
                                <div class="media-body">
                                    <h4 class="media-heading">Vấn đề 1</h4>
                                    ...
          
                                </div>
                            </div>
                            <!-- Nested media object -->
                            <div class="media">
                                <div class="media-left">
                                    <a href="#">
                                        <img class="media-object" data-src="holder.js/64x64" alt="64x64" style="width: 64px; height: 64px;" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iNjQiIGhlaWdodD0iNjQiIHZpZXdCb3g9IjAgMCA2NCA2NCIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+PCEtLQpTb3VyY2UgVVJMOiBob2xkZXIuanMvNjR4NjQKQ3JlYXRlZCB3aXRoIEhvbGRlci5qcyAyLjYuMC4KTGVhcm4gbW9yZSBhdCBodHRwOi8vaG9sZGVyanMuY29tCihjKSAyMDEyLTIwMTUgSXZhbiBNYWxvcGluc2t5IC0gaHR0cDovL2ltc2t5LmNvCi0tPjxkZWZzPjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+PCFbQ0RBVEFbI2hvbGRlcl8xOTFiYWMwNTkyMSB0ZXh0IHsgZmlsbDojQUFBQUFBO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1mYW1pbHk6QXJpYWwsIEhlbHZldGljYSwgT3BlbiBTYW5zLCBzYW5zLXNlcmlmLCBtb25vc3BhY2U7Zm9udC1zaXplOjEwcHQgfSBdXT48L3N0eWxlPjwvZGVmcz48ZyBpZD0iaG9sZGVyXzE5MWJhYzA1OTIxIj48cmVjdCB3aWR0aD0iNjQiIGhlaWdodD0iNjQiIGZpbGw9IiNFRUVFRUUiLz48Zz48dGV4dCB4PSIxMy4xNzMwMDQxNTAzOTA2MjUiIHk9IjM2LjUiPjY0eDY0PC90ZXh0PjwvZz48L2c+PC9zdmc+" data-holder-rendered="true">
                                    </a>
                                </div>
                                <div class="media-body">
                                    <h4 class="media-heading">Vấn đề 2</h4>
                                    ...
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
