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
    public partial class Register_User : System.Web.UI.Page
    {

        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        RegisterUser rgu;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }

        void getcon()
        {
            rgu = new RegisterUser();
            rgu.startcon();
        }

        //1
        protected void Button1_Click(object sender, EventArgs e)
        {
            //2
            if (btnRegister.Text == "Register")
            {
                //3
                getcon();

                //4
                rgu.insert(txtunm.Text, txteml.Text, txtpwd.Text, ddlRole.SelectedValue);
                Response.Write("<script LANGUAGE='JavaScript' >alert('User Register Successfully')</script>");
            }
            Response.Redirect("Login_User.aspx");
        }
    }
}