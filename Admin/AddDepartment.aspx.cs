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
    public partial class AddDepartment : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        Adddepartment ad;

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

            //2....Select
            fillgrid();
        }

        void getcon()
        {
            ad = new Adddepartment();
            ad.startcon();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if(Button2.Text== "Add Department")
            {
                getcon();
                ad.insert(txtDeptNm.Text);

                Response.Write("<script LANGUAGE='JavaScript' >alert('Department added successfully.')</script>");

                fillgrid();
            }
            //Update.....5
            else
            {
                ad = new Adddepartment();
                getcon();

                //Update....6
                ad.update(Convert.ToInt16(ViewState["id"]),txtDeptNm.Text);               
                fillgrid();

                
            }
            //Update...8
            empty();
        }

        //Update....7
        void empty()
        {
            txtDeptNm.Text = "";
            Button2.Text = "Add Department";
        }


        //1....Select

        void fillgrid()
        {
            ad = new Adddepartment();
            getcon();
            GridView1.DataSource = ad.filldata();
            GridView1.DataBind();
        }

        //Update....1
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName=="cmd_edt")
            {
                int id = Convert.ToInt16(e.CommandArgument);
                ViewState["id"] = id;
                Button2.Text = "Update";

                //Update....3
                filltext();//paring

            }
            //Delete....1
            //Delete

            //else
            //{
            //    ad.delete(Convert.ToInt16(ViewState["id"]));
            //    fillgrid();
            //}

            if (e.CommandName == "cmd_dlt")
            {
                int id = Convert.ToInt16(e.CommandArgument);
                ViewState["id"] = id;

                ad.delete(id);
                fillgrid();
            }
        }



        //Update....2
        void filltext()
        {
            ad = new Adddepartment();
            getcon();
            ds = new DataSet();
            ds = ad.select(Convert.ToInt16(ViewState["id"]));

            //Update...4
           txtDeptNm.Text = ds.Tables[0].Rows[0][1].ToString();
           // txtDeptNm.Text = ds.Tables["AddDepartment"].Rows[1]["DepartmentName"].ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Login_Admin.aspx");
        }

        //CrystalReport Button
        protected void Button3_Click(object sender, EventArgs e)
        {
            //Crp...3

            da = new SqlDataAdapter("select * from AddDepartment", ad.startcon());
            ds = new DataSet();
            da.Fill(ds); 

            //Change path
            string xml = Crypath = @"C:/Users/Admin/source/repos/Project_Hospital/Project_Hospital/data.xml"; ;
            ds.WriteXmlSchema(xml);


            //Crp...4

            //change path and report name
            Crypath = @"C:/Users/Admin/source/repos/Project_Hospital/Project_Hospital/Admin/AddDepartmentCrystalReport.rpt";
           
            cr.Load(Crypath);
            cr.SetDataSource(ds);
            cr.Database.Tables[0].SetDataSource(ds);
            cr.Refresh();
            CrystalReportViewer1.ReportSource = cr;
            cr.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, true, "Department Detail Report");
        }

       

    }
}