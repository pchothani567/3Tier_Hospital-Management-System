using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace Project_Hospital.Admin
{
    public partial class Register_Admin : System.Web.UI.Page
    {

        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        RegisterAdmin rga;

        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }

        void getcon()
        {
            rga = new RegisterAdmin();
            rga.startcon();
        }

        //1
        protected void Button1_Click(object sender, EventArgs e)
        {
            //2
            if(Regbtn.Text== "Register")
            {
               //3
                getcon();

                //4
                rga.insert(txtunm.Text,txteml.Text,txtpwd.Text, ddlRole.SelectedValue);
                Response.Write("<script LANGUAGE='JavaScript' >alert('Register Successfully')</script>");
            }
            Response.Redirect("Login_Admin.aspx");
        }

        
    }
}
