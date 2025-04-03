using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Project_Hospital
{
    public class FeedbackForm
    {
        string s = ConfigurationManager.ConnectionStrings["db"].ConnectionString;

        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        //public void startcon()
        //{
        //    con = new SqlConnection(s);
        //    con.Open();
        //}

        public SqlConnection startcon()
        {
            con = new SqlConnection(s);
            con.Open();
            return con;
        }

       
        //public void insert(int id, string nm, string eml, string degree, string speciality, string gender, string dob, string phone, string photo)
        //{
        //    cmd = new SqlCommand("insert into Doctors(Doc_Dept_Id,Name,Email,Degree,Speciality,Gender,Dob,Phone,Photo)values('" + id + "','" + nm + "','" + eml + "','" + degree + "','" + speciality + "','" + gender + "','" + dob + "','" + phone + "','" + photo + "')", con);
        //    cmd.ExecuteNonQuery();
        //}

       //Insert... FeedbackForm
        public void insert(int deptid,int doctnmid, string patnm,string eml,string phno,string dtofvst,string tmofvst,string spt,string wt,string dtfnl,string hspCln,string ovlexp,string sgt,string adtcmt, string y)
        {
           cmd = new SqlCommand("insert into Reviews(Doc_Dept_Id,Doctor_Name_Id,PatientName,EmailAddress,PhoneNo,DateOfVisit,TimeOfAppointment,Speciality,WaitingTime,DoctorFriendliness,HospitalCleanliness,OverallExperience,Suggestion,AdditionalComments,AcceptTerm)values('" + deptid+"','"+doctnmid+"','"+patnm +"','"+eml+"','"+phno+"','"+dtofvst+"','"+tmofvst+"','"+spt+"','"+wt+"','"+dtfnl+"','"+hspCln+"','"+ovlexp+"','"+sgt+"','"+adtcmt+"','"+y+"')",con);
           cmd.ExecuteNonQuery();
        }
                                                                                                                                                                                                                                                                                                                                                                                                                            
    }
}
