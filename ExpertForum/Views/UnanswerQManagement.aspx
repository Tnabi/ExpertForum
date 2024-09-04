<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Main.Master" AutoEventWireup="true" CodeBehind="UnanswerQManagement.aspx.cs" Inherits="ExpertForum.Views.UnanswerQManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <section class="col-md-12">
                <style>
                    .post-category {
                       /* margin-top: 40px;
                        margin-bottom: 60px;*/
                        text-align: center;                 
                        border-top: 1px solid #e6e6e6;
                        /*padding-bottom: 24px;*/
                    }

                        .post-category h3,
                        .post-category ul {
                            padding: 5px;
                            display: inline-block;
                        }

                        .post-category h3 {
                            font-size: 16px;
                        }

                        .post-category li {
                            display: inline-block;
                            list-style-type: none;
                            height: 50px;
                            margin: 0 4px;
                        }

                            .post-category li a {
                                padding: 10px 16px;
                                border: 1px solid #e6e6e6;
                                border-radius: 4px;
                                transition-duration: .5s;
                                text-decoration: none;
                            }

                                .post-category li a:hover {
                                    background-color: #78909c;
                                    border: 1px solid #78909c;
                                    color: #fff;
                                }
                </style>                
                <h1>Danh sách câu hỏi tồn đọng</h1>
                <div class="post-category">
                    <h3>Lĩnh vực：</h3>
                    <ul>
                        <li><a href="#">Lĩnh vực 1</a></li>
                        <li><a href="#">Lĩnh vực 2</a></li>
                        <li><a href="#">Lĩnh vực 3</a></li>
                        <li><a href="#">Lĩnh vực 4</a></li>
                    </ul>
                </div>
            </section>
            <section class="col-md-12">
                <ul class="list-group post-list">
                    <li class="list-group-item"><a href="ThreadContent.aspx">Question 1</a>
                        Về hình thức vay vốn....
                    </li>
                    <li class="list-group-item"><a href="ThreadContent.aspx">Question 2</a>
                        Nếu như tôi muốn...
                    </li>
                    <li class="list-group-item"><a href="ThreadContent.aspx">Question 3</a></li>
                    <li class="list-group-item"><a href="ThreadContent.aspx">Question 4</a></li>
                    <li class="list-group-item"><a href="ThreadContent.aspx">Question 5</a></li>
                </ul>
            </section>
        </div>
    </div>
</asp:Content>
