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
    public partial class Add_Doctor : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        AddDoctor ad;

        //
        int id;

        string fnm; //fnm=image

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

            //Add Department
            // //4
            //filldept();

            //8   //comment 4.. filldept()
            if (!IsPostBack)
            {
                filldept(); //call 4.. Here
            }
        }

        void getcon()
        {
            ad = new AddDoctor();
            ad.startcon();
        }

        void imgupload()
        {
            if(photo.HasFile)
            {
                fnm = "images/" + photo.FileName;
                photo.SaveAs(Server.MapPath(fnm));

            }    
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Ad_doctor_Click(object sender, EventArgs e)
        {
            //10
            getcon();

            if (Ad_doctor.Text == "Add Doctor")
            {
                imgupload();

                //11
                ad.insert(Convert.ToInt16(ViewState["id"]), txtfnm.Text, txteml.Text, DrpDegree.SelectedValue, DrpSpeciality.SelectedValue, DrpGen.SelectedValue, txtDob.Text, txtPhone.Text, fnm);
                Response.Write("<script LANGUAGE='JavaScript' >alert('Admin add doctor Successfully')</script>");
                //ad.insert( txtfnm.Text, txteml.Text, DrpDegree.SelectedValue, DrpSpeciality.SelectedValue, DrpGen.SelectedValue, txtDob.Text, txtPhone.Text, fnm);

                //Select...3
                fillgrid();

                //****//
                empty();
            }

            //Update....5
            else
            {
                ad = new AddDoctor();
                getcon();

                //Update....6               
                ad.update(Convert.ToInt16(ViewState["id"]), txtfnm.Text,txteml.Text,DrpDegree.SelectedValue,DrpSpeciality.SelectedValue,DrpGen.SelectedValue,txtDob.Text,txtPhone.Text);
                fillgrid();

                //Update....8
                empty();
            }          

        }

        //Update....7
        void empty()
        {

            txtfnm.Text = "";
            txteml.Text = "";
            DrpDegree.ClearSelection();
            DrpSpeciality.ClearSelection();
            DrpGen.ClearSelection();
            txtDob.Text = "";
            txtPhone.Text = "";
            Ad_doctor.Text = "Add Doctor";
        }


        //Select....1      
        void fillgrid()
        {
            ad = new AddDoctor();
            getcon();
            GridView1.DataSource = ad.filldata(); //filldata() create AddDoctor.cs(Admin)
            GridView1.DataBind();
        }

        //Add Department

        //1
        void filldept()
        {
            //2
            getcon();

            //3
            da = new SqlDataAdapter("select*from AddDepartment", ad.startcon()); //class file SqlConnecton...
            ds = new DataSet();
            da.Fill(ds);

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                DrpSpeciality.Items.Add(ds.Tables[0].Rows[i][1].ToString());
                //AddDepartment =>0 , 1=> DepartmentName
            }
        }

        //Add Department
        //5    
        //Double click on Department(Dropdownlist)
        protected void DrpSpeciality_SelectedIndexChanged(object sender, EventArgs e)
        {
            //6
            da = new SqlDataAdapter("select * from AddDepartment where DepartmentName='" + DrpSpeciality.SelectedItem.ToString() + "'", ad.startcon());
            ds = new DataSet();
            da.Fill(ds);

            //7
            ViewState["id"] = Convert.ToInt16(ds.Tables[0].Rows[0][0]);
            //Tables 0 = AddDepartment , Rows 0= Id
        }

        //Update....1
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_edt")
            {
                int id = Convert.ToInt16(e.CommandArgument);
                ViewState["id"] = id;
                Ad_doctor.Text = "Update";

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
            ad = new AddDoctor();
            getcon();
            ds = new DataSet();
            ds = ad.select(Convert.ToInt16(ViewState["id"]));


            //Update...4

            // Doc_Dept_Id

            //Name
           //txtfnm.Text = ds.Tables[4].Rows[0][2].ToString();
            txtfnm.Text = ds.Tables["Doctors"].Rows[0]["Name"].ToString();     
            //Email
            txteml.Text = ds.Tables["Doctors"].Rows[0][3].ToString();
            //Degree
            DrpDegree.SelectedValue = ds.Tables["Doctors"].Rows[0][4].ToString();
            //Speciality(Department)
            DrpSpeciality.SelectedValue = ds.Tables["Doctors"].Rows[0][5].ToString();
            //Gender
            DrpGen.SelectedValue= ds.Tables["Doctors"].Rows[0][6].ToString();
            //Dob
            txtDob.Text= ds.Tables["Doctors"].Rows[0][7].ToString();
            //Phone
            txtPhone.Text= ds.Tables["Doctors"].Rows[0][8].ToString();

            //photo
         
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Login_Admin.aspx");
        }
    }
}
