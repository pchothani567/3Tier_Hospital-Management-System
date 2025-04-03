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
    public partial class Login_Admin : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        Login lga;

        //4
        int i;

        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }

        void getcon()
        {
            lga = new Login();
            lga.startcon();
        }

        //1
        protected void Button1_Click(object sender, EventArgs e)
        {
            //2
            getcon();

            //3
            cmd = new SqlCommand("select count(*) from RegistrationAdmin where Username='" + txtunm.Text + "' and Password='" + txtpwd.Text + "' and DepartmentRole='"+ ddlRole.SelectedValue + "'", lga.startcon());
            i = Convert.ToInt16(cmd.ExecuteScalar());

            //5
            if (i > 0)
            {
                //6
                Session["user"] = txtunm.Text;
                

                ////7
                //Response.Redirect("index.aspx");

                if (ddlRole.SelectedValue == "Admin")
                {
                    Response.Redirect("index.aspx");
                }

                if (ddlRole.SelectedValue == "User")
                {
                    Response.Redirect("/Index.aspx");
                }


            }
        }


    }
}
