using ExpertForum.Utils;
using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExpertForum
{
    public partial class login : System.Web.UI.Page
    {
        int roleId;
        string userName;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["cnnStr"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                lblMessage.Text = "";

                userName = txtUsername.Text;

                connection.Open();
                string query = "SELECT user_id, role_id FROM dbo.[user] WHERE user_name = @Username AND Password = @Password";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Username", userName);
                command.Parameters.AddWithValue("@Password", txtPassword.Text);
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
}