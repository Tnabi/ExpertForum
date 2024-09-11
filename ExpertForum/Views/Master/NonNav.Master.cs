using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExpertForum.Views.Master
{
    public partial class NonNav : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Session["userId"] as String))
            {
                Response.Redirect("Login.aspx");
                return;
            }
            else
            {                
                lblAdminName1.Text = lblAdminName2.Text = Session["userName"].ToString();
            }
        }
    }
}