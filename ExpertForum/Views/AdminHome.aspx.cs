using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExpertForum.Views
{
    public partial class AdminHome : System.Web.UI.Page
    {
        string newPassword;
        string confirmPassword;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["FisrtLoginCookie"] != null)
            {
                string cookieVal = Request.Cookies["FisrtLoginCookie"].Value;

                if (String.Equals(cookieVal, "True"))
                {
                    firstLogin.Value = "True";
                }
                int todayVisitor = Convert.ToInt32(Application["Visitors"]);

                TodayVisitors.Text = todayVisitor.ToString();

                string connectionString = ConfigurationManager.ConnectionStrings["cnnStr"].ConnectionString;

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    StringBuilder userInfoQuery = new StringBuilder();
                    userInfoQuery.Append("SELECT ");
                    userInfoQuery.Append("    SUM(visitor_count) AS COUNT_ALL, ");
                    userInfoQuery.Append("    SUM(CASE WHEN DATEPART(MONTH, date) = DATEPART(MONTH, GETDATE()) THEN visitor_count ELSE 0 END) AS MONTHLY_VISITORS, ");
                    userInfoQuery.Append("    SUM(CASE WHEN DATEPART(WEEK, date) = DATEPART(WEEK, GETDATE()) THEN visitor_count ELSE 0 END) AS WEEKLY_VISITORS ");
                    userInfoQuery.Append("FROM dbo.[visitors]; ");

                    SqlCommand command = new SqlCommand(userInfoQuery.ToString(), connection);

                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        WeeklyVisitors.Text = (reader.GetInt32(reader.GetOrdinal("WEEKLY_VISITORS")) + todayVisitor ).ToString();
                        MonthlyVisitors.Text = (reader.GetInt32(reader.GetOrdinal("MONTHLY_VISITORS")) + todayVisitor ).ToString();
                        AllVisitors.Text = (reader.GetInt32(reader.GetOrdinal("COUNT_ALL")) + todayVisitor ).ToString();
                    }

                    connection.Close();
                }
            }
        }

        protected void btnChange_Click(object sender, EventArgs e)
        {
            newPassword = passwordChange.Text;
            confirmPassword = passwordConfirm.Text;
            if (String.IsNullOrEmpty(newPassword) || String.IsNullOrEmpty(confirmPassword))
            {
                lblMessage.Text = "Vui lòng nhập đủ thông tin!";
            }
            else if (!String.Equals(newPassword, confirmPassword))
            {
                lblMessage.Text = "Mật khẩu không giống nhau!";
            }
            else
            {
                string connectionString = ConfigurationManager.ConnectionStrings["cnnStr"].ConnectionString;

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    StringBuilder userInfoQuery = new StringBuilder();
                    userInfoQuery.Append("UPDATE dbo.[user] ");
                    userInfoQuery.Append("SET password = @Password, ");
                    userInfoQuery.Append("    change_pw_flg = 1, ");
                    userInfoQuery.Append("    last_login = CURRENT_TIMESTAMP, ");
                    userInfoQuery.Append("    updated_id = @UserId, ");
                    userInfoQuery.Append("    updated_at = CURRENT_TIMESTAMP ");
                    userInfoQuery.Append("WHERE user_id = @UserId ");
                    userInfoQuery.Append("AND user_name = @Username; ");

                    SqlCommand command = new SqlCommand(userInfoQuery.ToString(), connection);
                    command.Parameters.AddWithValue("@Username", Session["userName"]);
                    command.Parameters.AddWithValue("@UserId", Session["userId"]);
                    command.Parameters.AddWithValue("@Password", newPassword);

                    connection.Open();
                    command.ExecuteNonQuery();
                    connection.Close();
                }
                firstLogin.Value = "False";
            }

            return;
        }
    }
}