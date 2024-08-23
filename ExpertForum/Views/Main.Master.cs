using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExpertForum
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsLoggedIn())
            {
                Session["LoggedIn"] = true;
            }
        }

        protected String RenderLoginLogoutLink()
        {
            if (IsLoggedIn())
            {
                return "<a href='Logout.aspx'><img src=\"../Images/exit.png\" height=\"20\" width=\"20\" />Đăng xuất</a>";
            }
            else
            {
                return "<a href='Login.aspx'><img src=\"../Images/login.png\" height=\"20\" width=\"20\" />Đăng nhập</a>";
            }
        }

        protected String RenderRegisterExpertAccount()
        {
            if (IsUserLoggedIn())
            {

            }
            return "";
        }

        protected bool IsLoggedIn()
        {
            return (Session["LoggedIn"] != null && (bool)Session["LoggedIn"]);
        }

        protected bool IsUserLoggedIn()
        {
            return (Session["LoggedIn"] != null && Convert.ToInt32(Session["UserRole"]) == 4);
        }

        protected bool IsAdminLoggedIn()
        {
            return (Session["LoggedIn"] != null && Convert.ToInt32(Session["UserRole"]) == 1);
        }

        protected bool IsExpertLoggedIn()
        {
            return (Session["LoggedIn"] != null && Convert.ToInt32(Session["UserRole"]) == 3);
        }

        protected bool IsStaffLoggedIn()
        {
            return (Session["LoggedIn"] != null && Convert.ToInt32(Session["UserRole"]) == 2);
        }
    }
}