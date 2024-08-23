<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Main.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="ExpertForum.HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <h2>Các thảo luận gần nhất</h2>
                <ul class="list-group post-list">
                    <li class="list-group-item"><a href="#">Post 1</a>
                        <br />
                        Cái gì đó
                    </li>
                    <li class="list-group-item"><a href="#">Post 2</a>
                        <br />
                        Cái gì đấy
                    </li>
                    <li class="list-group-item"><a href="#">Post 3</a></li>
                    <li class="list-group-item"><a href="#">Post 4</a></li>
                    <li class="list-group-item"><a href="#">Post 5</a></li>
                </ul>
            </div>
            <div class="col-md-3 categories">
                <h2>Danh sách lĩnh vực</h2>
                <ul class="list-group" id="categories-list">
                    <li class="list-group-item" id="category1">Category 1<img src="../Images/arrow.png" height="15" width="15" />
                        <ul class="list-group subcategory" style="display: none">
                            <li class="list-group-item">Subcategory A</li>
                            <li class="list-group-item">Subcategory B</li>
                            <li class="list-group-item">Subcategory C</li>
                        </ul>
                    </li>
                    <li class="list-group-item" id="category2">Category 2<img src="../Images/arrow.png" height="15" width="15" />
                        <ul class="list-group subcategory" style="display: none">
                            <li class="list-group-item">Subcategory A</li>
                            <li class="list-group-item">Subcategory B</li>
                            <li class="list-group-item">Subcategory C</li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <script>
        const categoriesList = document.getElementById('categories-list');

        categoriesList.addEventListener('click', function (event) {
            const target = event.target;
            if (target.classList.contains('list-group-item')) {
                const subcategory = target.querySelector('.subcategory');
                if (subcategory) {
                    if (subcategory.style.display === 'block') {
                        subcategory.style.display = 'none';
                    } else {
                        subcategory.style.display = 'block';
                    }
                }
            }
        });
    </script>
</asp:Content>
