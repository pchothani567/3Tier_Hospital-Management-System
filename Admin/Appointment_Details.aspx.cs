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
    public partial class Appointment_Details : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        AppointmentDetailShow Ads;

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

            //2.. Select
            fillgrid();
        }

        void getcon()
        {
            Ads = new AppointmentDetailShow();
            Ads.startcon();
        }

        //1.....Select
        void fillgrid()
        {
            Ads = new AppointmentDetailShow();
            getcon();
            GridView1.DataSource = Ads.filldata(); //filldata() create AppointmenttDetailShow.cs(Admin)
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_dlt") // Ensure "cmd_del" is used in GridView
            {
                int id = Convert.ToInt16(e.CommandArgument); // Get the selected row ID
                ViewState["id"] = id;

                Ads.delete(id); // Call delete method
                fillgrid(); // Refresh the grid after deletion
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
