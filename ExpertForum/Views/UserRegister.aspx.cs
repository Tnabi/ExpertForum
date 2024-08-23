using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExpertForum
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["edit"] == "true")
                {
                    // Code to populate user data for editing
                    PopulateUserDataForEdit();
                }
            }

        }

        protected void PopulateUserDataForEdit()
        {
            // Code to retrieve and populate user data for editing
            string username = "User123"; // Example: Retrieve username from database
            // Set the username in the input field for editing
            taikhoan.Text = username;
            taikhoan.ReadOnly = true;
            taikhoan.BorderColor = System.Drawing.Color.Transparent;

            matkhau.Visible = false;
            matkhaucu.Visible = true;
            matkhaumoi.Visible = true;
            matkhauxacnhan.Visible = true;
            // Display the password fields for editing
            //oldPasswordDiv.Visible = true;
            //newPasswordDiv.Visible = true;
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["edit"] == "true")
            {
                // Code to handle updating user information
                UpdateUserInfo();
            }
            else
            {
                // Code to handle registering a new user
                RegisterNewUser();
            }
        }

        protected void UpdateUserInfo()
        {
            // Code to update user information in the database
            string username = taikhoan.Text;
            //string oldPassword = oldPasswordTextbox.Value;
            //string newPassword = newPasswordTextbox.Value;

            // Update user information
        }

        protected void RegisterNewUser()
        {
            // Code to register a new user
            string username = taikhoan.Text;
            //string password = passwordTextbox.Value;

            // Register the new user
        }
    }
}