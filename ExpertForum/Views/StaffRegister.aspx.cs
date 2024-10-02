using ExpertForum.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExpertForum
{
    public partial class StaffRegister : System.Web.UI.Page
    {
        string name, userName, password;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            name = TxtName.Text;
            userName = TxtUserName.Text;
            password = TxtPassword.Text;

            if (String.IsNullOrEmpty(name) || String.IsNullOrEmpty(userName) || String.IsNullOrEmpty(password))
            {
                LblMessage.Text = "Hãy nhập đủ thông tin!";
            }
            else
            {
                LblMessage.Text = "";
                string hashPw = Common.ComputeSha256Hash(password);


            }
        }
    }
}