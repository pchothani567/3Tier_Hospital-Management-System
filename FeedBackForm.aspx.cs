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
    public partial class FeedBackForm : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        FeedbackForm fd;

        //insert....2
        string y;
        string[] termAcpt = new string[1];

        //7.1 int id
        int id;
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

            // //4
            //filldept();

            //8   //comment 4.. filldept()
            if (!IsPostBack)
            {
                filldept(); //call 4.. Here

                //Doctor Name.....3
                filldoctorName();
            }
        }

        void getcon()
        {
            fd = new FeedbackForm();
            fd.startcon();
        }



        //Add Department

        //1
        void filldept()
        {
            //2
            getcon();

            //3
            da = new SqlDataAdapter("select*from AddDepartment", fd.startcon()); //class file SqlConnecton...
            ds = new DataSet();
            da.Fill(ds);

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                DrpSpeciality.Items.Add(ds.Tables[0].Rows[i][1].ToString());
                //AddDepartment =>0 , 1=> DepartmentName
            }
        }


        //Doctor Name.....1
        //1
        void filldoctorName()
        {
            //2
            getcon();

            //3
            da = new SqlDataAdapter("select*from Doctors", fd.startcon()); //class file SqlConnecton...
            ds = new DataSet();
            da.Fill(ds);
               
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                drpDoctorName.Items.Add(ds.Tables[0].Rows[i][2].ToString());
               //Doctors=>Table , Name=>2(column)
            }
        }


        //5
        protected void DrpSpeciality_SelectedIndexChanged(object sender, EventArgs e)
        {
            //6
            da = new SqlDataAdapter("select * from AddDepartment where DepartmentName='" + DrpSpeciality.SelectedItem.ToString() + "'", fd.startcon());
            ds = new DataSet();
            da.Fill(ds);

            //7
            ViewState["deptid"] = Convert.ToInt16(ds.Tables[0].Rows[0][0]);
            //Tables 0 = AddDepartment , Rows 0= Id
        }


        //Doctor Name.....2
        //2
        protected void drpDoctorName_SelectedIndexChanged(object sender, EventArgs e)
        {
            //6
            da = new SqlDataAdapter("select * from Doctors where Name='" + drpDoctorName.SelectedItem.ToString() + "'", fd.startcon());
            ds = new DataSet();
            da.Fill(ds);

            //7
            ViewState["doctnmid"] = Convert.ToInt16(ds.Tables[0].Rows[0][0]);
          
        }


        //insert....3
        void AcptCondition()
        {
            for (int i = 0; i < termAcpt.Length; i++)
            {
                if (chkTerms.Items[i].Selected == true)
                {
                    termAcpt[i] = chkTerms.Items[i].Text;
                }
            }
        }

      

        //9
        //Double click on Save button
        //Submit Review
        protected void SubReview_Click(object sender, EventArgs e)
        {

            //10
            getcon();

            //insert....4
            AcptCondition();

            for(int i=0;i<1;i++)
            {
                if(termAcpt[i]=="Yes")
                {
                    y = "Yes";
                    i++;
                }
                else
                {
                    y = "Null";
                    i++;
                }               

            }


            //insert....1
            if (SubReview.Text == "Submit Review")
            {
                fd.insert(Convert.ToInt16(ViewState["deptid"]), Convert.ToInt16(ViewState["doctnmid"]),txtPatientNm.Text,txtEmlAddress.Text,txtPhoneNo.Text,txtDateOfVst.Text,txtAptTime.Text,DrpSpeciality.SelectedValue,RblWatingTm.Text,RblDoctorCommunication.Text,RblHospitCleanliness.Text,RblOvlExp.Text,txtSuggestion.Text,txtAdtCmt.Text,y);

                Response.Write("<script LANGUAGE='JavaScript' >alert('User feedback form submitted successfully.')</script>");

                //Empty....2
                empty();
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("TermsAndCondition.aspx");

        }

        //Empty....1
        void empty()
        {
            txtPatientNm.Text = "";
            txtEmlAddress.Text = "";
            txtPhoneNo.Text = "";
            txtDateOfVst.Text = "";
            txtAptTime.Text = "";
            drpDoctorName.ClearSelection();
            DrpSpeciality.ClearSelection();
            RblWatingTm.ClearSelection();
            RblDoctorCommunication.ClearSelection();
            RblHospitCleanliness.ClearSelection();
            RblOvlExp.ClearSelection();
            txtSuggestion.Text = "";
            txtAdtCmt.Text = "";
            chkTerms.ClearSelection();

            SubReview.Text = "Submit Review";
        }

        protected void logout_btn_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Login_User.aspx");
        }

      
    }
}