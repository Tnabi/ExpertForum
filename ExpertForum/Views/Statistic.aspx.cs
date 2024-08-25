using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExpertForum.Views
{
    public partial class Statistic : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void rbList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rbList.SelectedValue == "custom")
            {
                pnlCustom.Visible = true;
            }
            else
            {
                pnlCustom.Visible = false;
            }
        }
    }


}