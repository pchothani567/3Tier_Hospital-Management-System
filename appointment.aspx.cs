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
    public partial class appointment : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        BookAppointment ba;
        string s1, s2, s3, s4, s5;//s1=Fever,s2=Cough,s3=Headache,s4=Fatigue,s5=Other

       
        string[] sympt = new string[5];

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

        protected void logout_btn_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Login_User.aspx");
        }


        //Add Department

        //1
        void filldept()
        {
            //2
            getcon();

            //3
            da = new SqlDataAdapter("select*from AddDepartment", ba.startcon()); //class file SqlConnecton...
            ds = new DataSet();
            da.Fill(ds);

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                DrpSpeciality.Items.Add(ds.Tables[0].Rows[i][1].ToString());
                //AddDepartment =>0 , 1=> DepartmentName



            }
        }

        //5
        protected void DrpSpeciality_SelectedIndexChanged(object sender, EventArgs e)
        {
            //6
            da = new SqlDataAdapter("select * from AddDepartment where DepartmentName='" + DrpSpeciality.SelectedItem.ToString() + "'", ba.startcon());
            ds = new DataSet();
            da.Fill(ds);

            //7
            ViewState["deptid"] = Convert.ToInt16(ds.Tables[0].Rows[0][0]);
            //Tables 0 = AddDepartment , Rows 0= Id

        

        }

        

         //Doctor Name.....1
        //1
        void filldoctorName()
        {
            //2
            getcon();

            //3
            da = new SqlDataAdapter("select*from Doctors", ba.startcon()); //class file SqlConnecton...
            ds = new DataSet();
            da.Fill(ds);
               
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                drpDoctorName.Items.Add(ds.Tables[0].Rows[i][2].ToString());
               //Doctors=>Table , Name=>2(column)
            }
        }


        //Doctor Name.....2
        //2
        protected void drpDoctorName_SelectedIndexChanged(object sender, EventArgs e)
        {
            //6
            da = new SqlDataAdapter("select * from Doctors where Name='" + drpDoctorName.SelectedItem.ToString() + "'", ba.startcon());
            ds = new DataSet();
            da.Fill(ds);

            //7
            ViewState["doctnmid"] = Convert.ToInt16(ds.Tables[0].Rows[0][0]);
        }



        void getcon()
        {
            ba = new BookAppointment();
            ba.startcon();
        }

        void Symptoms() //Fever,Cough,Headache,Fatigue,Other
        {
            for (int i = 0; i < sympt.Length; i++)
            {
                if (chkSympt.Items[i].Selected == true)
                {
                    sympt[i] = chkSympt.Items[i].Text;
                }
            }
        }

        protected void btn_apoointment_Click(object sender, EventArgs e)
        {
            if (btn_apoointment.Text == "BOOK AN APPOINTMENT")
            {
                getcon();
                Symptoms();

                for (int i = 0; i < 1; i++)
                {
                    //Fever
                    if (sympt[i] == "Fever")
                    {
                        s1 = "Fever";
                        i++;
                    }
                    else
                    {
                        s1 = "Null";
                        i++;
                    }

                    //Cough
                    if (sympt[i] == "Cough")
                    {
                        s2 = "Cough";
                        i++;
                    }
                    else
                    {
                        s2 = "Null";
                        i++;
                    }

                    //Headache
                    if (sympt[i] == "Headache")
                    {
                        s3 = "Headache";
                        i++;
                    }
                    else
                    {
                        s3 = "Null";
                        i++;
                    }

                    //Fatigue
                    if (sympt[i] == "Fatigue")
                    {
                        s4 = "Fatigue";
                        i++;
                    }
                    else
                    {
                        s4 = "Null";
                        i++;
                    }

                    //Other
                    if (sympt[i] == "Other")
                    {
                        s5 = "Other";
                        i++;
                    }
                    else
                    {
                        s5 = "Null";
                        i++;
                    }
                }

                ba.insert(Convert.ToInt16(ViewState["deptid"]), Convert.ToInt16(ViewState["doctnmid"]),txtfnm.Text, txteml.Text, date.Text, time.Text, s1, s2, s3, s4, s5, DropDownListBloodGroup.SelectedValue, txtphone.Text);
             
                Response.Write("<script LANGUAGE='JavaScript' >alert('User appointment booked successfully!')</script>");
            }

            //Empty...2
            empty();
        }

        //Empty...1
        void empty()
        {
            txtfnm.Text = "";
            txteml.Text = "";
            date.Text = "";
            time.Text = "";

            chkSympt.ClearSelection();
            DropDownListBloodGroup.ClearSelection();
            txtphone.Text = "";


            btn_apoointment.Text = "BOOK AN APPOINTMENT";
        }
    }
}