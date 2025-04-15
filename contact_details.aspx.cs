using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
//Crp....1
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;

namespace Project_Hospital.Admin
{
    public partial class contact_details : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        ContactDetailShow cds;

        //Crp...2
        private CrystalDecisions.CrystalReports.Engine.ReportDocument cr = new CrystalDecisions.CrystalReports.Engine.ReportDocument();
        static string Crypath = "";

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

            //2..Select
            fillgrid();
        }

        void getcon()
        {
            cds = new ContactDetailShow();
            cds.startcon();
        }

        //Select....1      
        void fillgrid()
        {
            cds = new ContactDetailShow();
            getcon();
            GridView1.DataSource = cds.filldata(); //filldata() create ContactDetailShow.cs(Admin)
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        //Delete....1
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //cds.delete(Convert.ToInt16(ViewState["id"]));
            //fillgrid();

          
            if (e.CommandName == "cmd_dlt") // Ensure "cmd_del" is used in GridView
            {
                int id = Convert.ToInt16(e.CommandArgument); // Get the selected row ID
                ViewState["id"] = id;

                cds.delete(id); // Call delete method

                Response.Write("<script>alert('Deleted ID: " + id + "');</script>");

                fillgrid(); // Refresh the grid after deletion
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Login_Admin.aspx");
        }

        //CrystalReport Button
        protected void Button2_Click(object sender, EventArgs e)
        {
            //Crp...3

            da = new SqlDataAdapter("select * from Contact", cds.startcon());
            ds = new DataSet();
            da.Fill(ds);

            //Change path
            string xml = Crypath = @"C:/Users/Admin/source/repos/Project_Hospital/Project_Hospital/data.xml"; ;
            ds.WriteXmlSchema(xml);


            //Crp...4

            //change path and report name
            Crypath = @"C:/Users/Admin/source/repos/Project_Hospital/Project_Hospital/Admin/ContactDetailCrystalReport1.rpt";

            cr.Load(Crypath);
            cr.SetDataSource(ds);
            cr.Database.Tables[0].SetDataSource(ds);
            cr.Refresh();
            CrystalReportViewer1.ReportSource = cr;
            cr.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, true, "Contact Detail Report");
        }
    }
}