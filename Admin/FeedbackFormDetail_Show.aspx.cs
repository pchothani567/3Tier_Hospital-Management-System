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
    public partial class FeedbackFormDetail : System.Web.UI.Page
    {

        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        FeedbackFormDetailShow ads;

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
            ads = new FeedbackFormDetailShow();
            ads.startcon();
        }


        //1.....Select
        void fillgrid()
        {
            ads = new FeedbackFormDetailShow();
            getcon();
            GridView1.DataSource = ads.filldata();
            GridView1.DataBind();
        }


        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_dlt") 
            {
                int id = Convert.ToInt16(e.CommandArgument); 
                ViewState["id"] = id;

                ads.delete(id); 
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
