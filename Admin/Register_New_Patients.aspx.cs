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
    public partial class Register_New_Patients : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        Patients pt;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                lbl_welcome.Text = "WELCOME  " + Session["user"];
            }
            else
            {
                Response.Redirect("Login_Admin.aspx");
            }

            getcon();
        }

        void getcon()
        {
            pt = new Patients();
            pt.startcon();
        }

        protected void regi_patients_Click(object sender, EventArgs e)
        {            

            if(regi_patients.Text== "Register")
            {
                getcon();

                pt.insert(txtfnm.Text,txteml.Text,date.Text,DropDownListBloodGroup.SelectedValue,txtphone.Text,drpgen.Text,drpmrgsts.SelectedValue,txtaddress.Text,txtinsucompny.Text,txtinsuId.Text);
                Response.Write("<script LANGUAGE='JavaScript' >alert('Patient Appointment Registered Successfully !!')</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Login_Admin.aspx");
        }
    }
}
