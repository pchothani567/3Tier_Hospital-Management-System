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
    public partial class DoctorDetail_View : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        DoctorDetailView ddv1;

        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();

            if (Session["user"] != null)
            {
                lbl_welcome.Text = "WELCOME USER  " + Session["user"];
            }
            else
            {
                Response.Redirect("Login_User.aspx");
            }

            //1....
            display();
        }

        void getcon()
        {
            ddv1 = new DoctorDetailView();
            ddv1.startcon();
        }

        //1....
        void display()
        {
            if (Convert.ToInt16(Request.QueryString["pid"]) != 0)
            {
                getcon();
                da = new SqlDataAdapter("select*from Doctors where Id='" + Request.QueryString["pid"] + "'", ddv1.startcon());
                ds = new DataSet();
                da.Fill(ds);
                DataList1.DataSource = ds;
                DataList1.DataBind();

            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }

        protected void logout_btn_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Login_User.aspx");
        }

       
    }
}