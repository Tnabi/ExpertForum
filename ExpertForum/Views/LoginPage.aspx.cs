using ExpertForum.Utils;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
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
                    StringBuilder query = new StringBuilder();
                    query.Append("SELECT user_id,");
                    query.Append("       role_id,");
                    query.Append("       change_pw_flg,");
                    query.Append("       CAST(");
                    query.Append("             CASE");
                    query.Append("                  WHEN last_login is null and updated_at is null");
                    query.Append("                     THEN 1");
                    query.Append("                  ELSE 0");
                    query.Append("             END AS bit) as first_login ");
                    query.Append("FROM dbo.[user] ");
                    query.Append("WHERE user_name = @Username ");
                    query.Append("AND Password = @Password ");
                    query.Append("AND delete_flg = 0;");

                    SqlCommand command = new SqlCommand(query.ToString(), connection);
                    command.Parameters.AddWithValue("@Username", userName);
                    command.Parameters.AddWithValue("@Password", password);
                    using (var reader = command.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            string userId;
                            bool firstLogin = false;
                            while (reader.Read())
                            {
                                Session["userId"] = userId = reader["user_id"].ToString();
                                Session["userName"] = userName;
                                Session["roleId"] = roleId = reader.GetInt32(1);
                                firstLogin = (bool)reader["first_login"];
                            }

                            HttpCookie cookie = new HttpCookie("FisrtLoginCookie", firstLogin.ToString());
                            Response.Cookies.Add(cookie);

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

        protected void rememberMeFunc(string userId)
        {
            var userCookie = new HttpCookie("LoggedUser")
            {
                Expires = DateTime.Now.AddDays(30),
                SameSite = SameSiteMode.None,
                HttpOnly = true,
                Secure = true
            };
            userCookie["UserId"] = userId;
            Response.Cookies.Add(userCookie);
        }
    }
}