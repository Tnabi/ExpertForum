using ExpertForum.Utils;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExpertForum.Views
{
    public partial class LoginPage : System.Web.UI.Page
    {
        int roleId;
        string userName;
        string password;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["cnnStr"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                lblMessage.Text = "";

                userName = floatingInput.Text;
                password = floatingPassword.Text;
                floatingPassword.Text = "";

                if (String.IsNullOrEmpty(userName) || String.IsNullOrEmpty(password))
                {
                    lblMessage.Text = "Hãy nhập tên tài khoản và mật khẩu";
                }
                else
                {
                    connection.Open();
                    string query = "SELECT user_id, role_id FROM dbo.[user] WHERE user_name = @Username AND Password = @Password";
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@Username", userName);
                    command.Parameters.AddWithValue("@Password", password);
                    using (var reader = command.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                Session["userId"] = reader["user_id"];
                                Session["userName"] = userName;
                                Session["roleId"] = roleId = reader.GetInt32(1);
                            }

                            if (roleId == ((int)Common.Role.Admin))
                            {
                                Response.Redirect("AdminHome.aspx");
                            }
                        }
                        else
                        {
                            lblMessage.Text = "Sai tên đăng nhập hoặc mật khẩu!";
                        }
                    }
                    connection.Close();
                }
            }
        }

        protected void rememberMeFunc(string userName, string Password, string userId, string roleId)
        {
            var userCookie = new HttpCookie("LoggedUser")
            {
                Expires = DateTime.Now.AddDays(30),
                SameSite = SameSiteMode.None,
                HttpOnly = true,
                Secure = true
            }; 
            Response.Cookies.Add(userCookie);
        }
    }
}