using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExpertForum.Views
{
    public partial class AdminHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["FisrtLoginCookie"] != null)
            {
                string cookieVal = Request.Cookies["FisrtLoginCookie"].Value;

                if (String.Equals(cookieVal, "True"))
                {
                    firstLogin.Value = "True";
                }
            }
        }
    }
}