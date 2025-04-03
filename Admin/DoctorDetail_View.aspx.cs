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
    public partial class DoctorDetail_View : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        DoctorDetailView ddv;

        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();

            //1....
            display();
        }

        void getcon()
        {
            ddv = new DoctorDetailView();
            ddv.startcon();
        }

        //1....
        void display()
        {
            if (Convert.ToInt16(Request.QueryString["pid"]) != 0)
            {
                getcon();
                da = new SqlDataAdapter("select*from Doctors where Id='" + Request.QueryString["pid"] + "'", ddv.startcon());
                ds = new DataSet();
                da.Fill(ds);
                DataList1.DataSource = ds;
                DataList1.DataBind();

            }
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}
