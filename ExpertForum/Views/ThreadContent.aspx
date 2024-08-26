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
            <div class="col-md-12 mx-auto">
                <div class="thworks">
                    <div class="discussion">
                        <div class="discussion-body">
                            <div class="thread">
                                <div class="thread-header">
                                    <div class="reliability-meter">
                                        <div class="engagement-bar-height" style="background: linear-gradient(to right, red, red, red, lawngreen, lawngreen, lawngreen, lawngreen, lawngreen, lawngreen, lawngreen);"></div>
                                    </div>

                                    <div class="thread-info">
                                        <div class="thread-author-image">
                                            <img src="https://us-central1-tutor-738.cloudfunctions.net/profileImage?user=Ek9FvqZtAnUowXcnBLLgujPVr142" />
                                        </div>
                                        <div class="thread-author-info">
                                            <div class="thread-author">
                                                <div class="thread-author-name">Sandeep Mishra</div>
                                                <div class="dot-separator">&middot;</div>
                                                <div class="thread-timestamp">8 days ago</div>
                                            </div>
                                            <div class="thread-domain">
                                                <div class="thread-domain-icon"><i class="fa fa-globe"></i></div>
                                                <div class="dot-separator">&middot;</div>
                                                <div class="thread-domain-name">Mentor</div>
                                            </div>
                                        </div>
                                        <div class="thread-control">
                                            <div class="thread-control-dropdown"><i class="fa fa-ellipsis-h"></i></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="thread-body">
                                    <div class="thread-title">Adviser to Emirates With Ties to Trump Aides Is Cooperating With Special Counsel</div>
                                    <div class="thread-content">
                                        An adviser to the United Arab Emirates with ties to current and former aides to President Trump is cooperating with the special counsel, Robert S. Mueller III, and gave testimony last week to a grand jury, according to two people familiar with
            the matter. Mr. Mueller appears to be examining the influence of foreign money on Mr. Trump’s political activities and has asked witnesses about the possibility that the adviser, George Nader, funneled money from the Emirates to the president’s
            political efforts. It is illegal for foreign entities to contribute to campaigns or for Americans to knowingly accept foreign money for political races. Mr. Nader, a Lebanese-American businessman who advises Crown Prince Mohammed bin Zayed
            Al-Nahyan, the effective ruler of the Emirates, also attended a January 2017 meeting in the Seychelles that Mr. Mueller’s investigators have examined.
                                    </div>
                                </div>
                                <div class="thread-footer">
                                    <div class="thread-article">
                                        <div class="thread-create">
                                            <div class="thread-editor"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="article">
                                <div class="article-body">
                                    <div class="article-image">
                                        <div class="thread-author-image">
                                            <img src="https://us-central1-tutor-738.cloudfunctions.net/profileImage?user=Ek9FvqZtAnUowXcnBLLgujPVr142" /></div>
                                    </div>
                                    <div class="article-content">
                                        <div class="article-author-info">
                                            <div class="article-author">
                                                <div class="article-author-name">Sandeep Mishra</div>
                                                <div class="dot-separator">&middot;</div>
                                                <div class="article-timestamp">8 days ago</div>
                                            </div>
                                        </div>
                                        This is my first post in this group, Currently i am woking in production support Banking domain, I want to switch my job and looking for devlopment profile.I have updated my Cv in naukri but didnt get any oppertunity. Please help me and let me know if
              there is any opening. i am waiting for your positive response.
                                    </div>
                                    <div class="article-control">
                                        <div class="article-control">
                                            <div class="article-control-dropdown"><i class="fa fa-ellipsis-h"></i></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="article-footer"></div>
                            </div>

                            <div class="article">
                                <div class="article-body">
                                    <div class="article-image">
                                        <div class="thread-author-image">
                                            <img src="https://us-central1-tutor-738.cloudfunctions.net/profileImage?user=Ek9FvqZtAnUowXcnBLLgujPVr142" /></div>
                                    </div>
                                    <div class="article-content">
                                        <div class="article-author-info">
                                            <div class="article-author">
                                                <div class="article-author-name">Sandeep Mishra</div>
                                                <div class="dot-separator">&middot;</div>
                                                <div class="article-timestamp">8 days ago</div>
                                            </div>
                                        </div>
                                        This is my first post in this group, Currently i am woking in production support Banking domain, I want to switch my job and looking for devlopment profile.I have updated my Cv in naukri but didnt get any oppertunity. Please help me and let me know if
              there is any opening. i am waiting for your positive response.
                                    </div>
                                    <div class="article-control">
                                        <div class="article-control">
                                            <div class="article-control-dropdown"><i class="fa fa-ellipsis-h"></i></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="article-footer"></div>
                            </div>

                        </div>
                    </div>
                </div>
        </div>
    </div>
</asp:Content>
