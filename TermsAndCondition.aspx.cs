using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_Hospital
{
    public partial class TermsAndCondition : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {          

            if (Session["user"] != null)
            {
                lbl_welcome.Text = "WELCOME USER " + Session["user"];
            }
            else
            {
                Response.Redirect("Login_User.aspx");
            }
        }

        protected void logout_btn_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Login_User.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("FeedBackForm.aspx");
        }
    }
}