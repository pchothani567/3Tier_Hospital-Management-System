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
        }

        protected void logout_btn_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Login_User.aspx");
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

                ba.insert(txtfnm.Text, txteml.Text, date.Text, time.Text, s1, s2, s3, s4, s5, DropDownListBloodGroup.SelectedValue, txtphone.Text);
                Response.Write("<script LANGUAGE='JavaScript' >alert('User Appointment book Successfully !!')</script>");

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
