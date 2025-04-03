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
    public partial class AddDepartment : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        Adddepartment ad;

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
    }
}
