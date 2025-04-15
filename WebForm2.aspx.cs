using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Configuration;


namespace Project_Hospital
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        SqlCommand cmd;
        DataSet ds;
        String fnm, s1, s2, s3, s4;

        string s = ConfigurationManager.ConnectionStrings["dbconnect"].ToString();

        String[] sympt = new string[4];

        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            fillgrid(); //select method call
        }

        //Edit
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_edt")
            {
                int id = Convert.ToInt16(e.CommandArgument);

                //1..
                ViewState["id"] = id;
                filltext();
                Button1.Text = "Update";
            }

            //Delete
            else
            {
                cmd = new SqlCommand("delete from RegistrationTable where Id='" + ViewState["id"] + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();
            }
        }


        //3..
        public DataSet select(int id)
        {
            getcon();
            Symptoms();
            da = new SqlDataAdapter("select * from RegistrationTable where Id='" + id + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        //2..
        void filltext()
        {
            //..
            getcon();
            Symptoms(); //update Symptom for call

            ds = new DataSet();
            ds = select(Convert.ToInt16(ViewState["id"]));

            txtFn.Text = ds.Tables[0].Rows[0][1].ToString();
            txtEml.Text = ds.Tables[0].Rows[0][2].ToString();

            //txtPwd.Text = ds.Tables[0].Rows[0][3].ToString();
            //txtConfirmPwd.Text = ds.Tables[0].Rows[0][4].ToString();

            txtPwd.Attributes["value"] = ds.Tables[0].Rows[0]["Password"].ToString();
            txtConfirmPwd.Attributes["value"] = ds.Tables[0].Rows[0]["ConfirmPassword"].ToString();



            txtCity.Text = ds.Tables[0].Rows[0][5].ToString();
            txtPincode.Text = ds.Tables[0].Rows[0][6].ToString();
            txtDate.Text = ds.Tables[0].Rows[0][7].ToString();
            txtTime.Text = ds.Tables[0].Rows[0][8].ToString();
            txtMobileNumber.Text = ds.Tables[0].Rows[0][9].ToString();
            txtAds.Text = ds.Tables[0].Rows[0][10].ToString();

            //dropdownlist
            DropDownListBloodGroup.SelectedValue = ds.Tables[0].Rows[0][11].ToString();

            //radiobuttonlist
            RadioButtonListGnd.Text = ds.Tables[0].Rows[0][12].ToString();


            //CheckBox
            if (ds.Tables[0].Rows[0][13].ToString() == "Fever")
            {
                chkSymptoms.Items[0].Selected = true;
            }
            else
            {
                chkSymptoms.Items[0].Selected = false;
            }

            if (ds.Tables[0].Rows[0][14].ToString() == "Cough")
            {
                chkSymptoms.Items[1].Selected = true;
            }
            else
            {
                chkSymptoms.Items[1].Selected = false;
            }

            if (ds.Tables[0].Rows[0][15].ToString() == "Headache")
            {
                chkSymptoms.Items[2].Selected = true;
            }
            else
            {
                chkSymptoms.Items[2].Selected = false;
            }

            if (ds.Tables[0].Rows[0][16].ToString() == "Fatigue")
            {
                chkSymptoms.Items[3].Selected = true;
            }
            else
            {
                chkSymptoms.Items[3].Selected = false;
            }

        }


        //4..
        //after page refresh data is automatically clear
        void empty()
        {


            txtFn.Text = "";
            txtEml.Text = "";
            txtPwd.Text ="";
            txtConfirmPwd.Text = "";
            txtCity.Text = "";
            txtPincode.Text = "";
            txtDate.Text = "";
            txtTime.Text = "";
            txtMobileNumber.Text = "";
            txtAds.Text = "";

            DropDownListBloodGroup.ClearSelection();

            RadioButtonListGnd.ClearSelection();

            chkSymptoms.ClearSelection();
         
            //fnm="";
            //btimg.Text="upload";

            Button1.Text = "Save";

        }

        //select code
        void fillgrid()
        {
            getcon();
            da = new SqlDataAdapter("select * from RegistrationTable ", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void uploadimg()
        {
            if (fldimg.HasFile)
            {
                fnm = "images/" + fldimg.FileName;
                fldimg.SaveAs(Server.MapPath(fnm));
            }
        }

        void Symptoms()
        {
            for (int i = 0; i < sympt.Length; i++)
            {
                if (chkSymptoms.Items[i].Selected == true)
                {
                    sympt[i] = chkSymptoms.Items[i].Text;
                }
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (Button1.Text == "Save")
            {
                uploadimg();
                Symptoms();
                getcon();

                for (int i = 0; i < 1; i++)
                {
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

                    if (sympt[i] == "Fatigue")
                    {
                        s4 = "Fatigue";

                    }
                    else
                    {
                        s4 = "Null";

                    }
                }

                cmd = new SqlCommand("INSERT INTO RegistrationTable(Name,EmailAddress,Password,ConfirmPassword,City,Pincode,AppointmentDate,AppointmentTime,MobileNumber,Address,BloodGroup,Gender,Fever,Cough,Headache,Fatigue,Image)VALUES('" + txtFn.Text + "','" + txtEml.Text + "','" + txtPwd.Text + "','" + txtConfirmPwd.Text + "','" + txtCity.Text + "','" + txtPincode.Text + "','" + txtDate.Text + "','" + txtTime.Text + "','" + txtMobileNumber.Text + "','" + txtAds.Text + "','" + DropDownListBloodGroup.Text + "','" + RadioButtonListGnd.Text + "','" + s1 + "','" + s2 + "','" + s3 + "','" + s4 + "','" + fnm + "')", con);
                cmd.ExecuteNonQuery();
            }

            //5..
            else
            {
                //update Query
                getcon();
                Symptoms(); //update hobbie
                for (int i = 0; i < 1; i++)
                {
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
                    if (sympt[i] == "Headache")
                    {
                        s3 = "Headache";
                    }
                    else
                    {
                        s3 = "Null";
                    }

                    if (sympt[i] == "Fatigue")
                    {
                        s4 = "Fatigue";
                    }
                    else
                    {
                        s4 = "Null";
                    }
                }
               
                cmd = new SqlCommand("update RegistrationTable set Name='"+txtFn.Text+"',EmailAddress='"+txtEml.Text+"',Password='"+txtPwd.Text+"',ConfirmPassword='"+txtPwd.Text+"',City='"+txtCity.Text+"',Pincode='"+txtPincode.Text+"',AppointmentDate='"+txtDate.Text+"',AppointmentTime='"+txtTime.Text+"',MobileNumber='"+txtMobileNumber.Text+"',Address='"+txtAds.Text+"',BloodGroup='"+DropDownListBloodGroup.SelectedValue+"',Gender='"+RadioButtonListGnd.SelectedValue+"',Fever='"+s1+"',Cough='"+s2+"',Headache='"+s3+"',Fatigue='"+s4+"'  where Id = '" + ViewState["id"] + "' ", con);
                cmd.ExecuteNonQuery();
                empty();
                fillgrid();
            }
        }

    }
}


