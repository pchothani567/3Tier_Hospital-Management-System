using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Project_Hospital
{
    public partial class Index : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        IndexDataList ids;

        //2....DataList 
        PagedDataSource pg;
        int pid, row; //3....DataList 

        //Pagination...1.1
        int p;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                lbl_welcome.Text = "WELCOME USER  " + Session["user"];
            }
            else
            {
                Response.Redirect("Login_User.aspx");
            }


            getcon();
            //4....DataList 
            display();

            LinkButton4.Enabled = true;
        }

        void getcon()
        {
            ids = new IndexDataList();
            ids.startcon();

            //Pagination...3
            LinkButton3.Enabled = false;

        }

        //1....DataList 
        //Do comment public void startcon() ...IndexDataList.cs
        void display()
        {
            da = new SqlDataAdapter("select*from Doctors", ids.startcon());
            ds = new DataSet();
            da.Fill(ds);

            //5....DataList 

            row = ds.Tables[0].Rows.Count;
            pg = new PagedDataSource();
            pg.AllowPaging = true;
            pg.PageSize = 5;

            //Pagination...4
            pg.CurrentPageIndex = Convert.ToInt16(ViewState["pid"]);

            pg.DataSource = ds.Tables[0].DefaultView;
            DataList1.DataSource = pg;
            DataList1.DataBind();
        }

        //Previous
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            //Pagination...2

            LinkButton3.Enabled = true;
            p += Convert.ToInt32(ViewState["pid"]) - 1;
            ViewState["pid"] = Convert.ToInt32(p);

            if (p == 0)
            {
                LinkButton3.Enabled = false;
            }
            display();
        }


        //1...DataList
        //Datalist-----ItemCommand
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {           
              if (e.CommandName == "cmd_detailv")
              {
                  int id = Convert.ToInt32(e.CommandArgument);
                  Response.Redirect("DoctorDetail_View.aspx?pid=" + id);
              }          
        }

        //Next
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            //Pagination...1

            LinkButton3.Enabled = true;
            p += Convert.ToInt32(ViewState["pid"]) + 1;
            ViewState["pid"] = Convert.ToInt32(p);
            int temp = row / pg.PageSize;

            if (p == temp)
            {
                //Pagination...2

                LinkButton4.Enabled = false;
            }
            display();
        }
    }
}
