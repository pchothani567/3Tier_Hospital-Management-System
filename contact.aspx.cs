using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Project_Hospital
{
    public partial class contact : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        Contact ct;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                lbl_welcome.Text = "WELCOME USER  " + Session["user"];
            }
            else
            {
                Response.Redirect("Login_User.aspx");
            }

            getcon();
        }

        void getcon()
        {
            ct = new Contact();
            ct.startcon();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(Button1.Text== "Send Message")
            {
                getcon();
                ct.insert(txtfnm.Text,txteml.Text,txtsub.Text,txtmsg.Text);
                Response.Write("<script LANGUAGE='JavaScript' >alert('User contact information submitted successfully.')</script>");
            }

            //Empty...2
            empty();
        }

        //Empty...1
        void empty()
        {
            txtfnm.Text = "";
            txteml.Text = "";
            txtsub.Text = "";
            txtmsg.Text = "";

            Button1.Text = "Send Message";
        }

        protected void logout_btn_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Login_User.aspx");
        }
    }
}