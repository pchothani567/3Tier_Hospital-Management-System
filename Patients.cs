using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Project_Hospital.Admin
{
    public class Patients
    {
        string s = ConfigurationManager.ConnectionStrings["db"].ConnectionString;

        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        public void startcon()
        {
            con = new SqlConnection(s);
            con.Open();
        } 

        public void insert(string nm,string eml,string dob,string BloodGroup,string PhoneNo,string Gender,string Mstatus,string Address,string InsCompany,string InsId)
        {
            cmd = new SqlCommand("insert into Patients(Name,Email,Dob,BloodGroup,PhoneNo,Gender,Mstatus,Address,InsCompany,InsId)values('"+nm+"','"+eml+"','"+dob+"','"+BloodGroup+"','"+PhoneNo+"','"+Gender+"','"+Mstatus+"','"+Address+"','"+InsCompany+"','"+InsId+"')", con);
            cmd.ExecuteNonQuery();
        }
        
    }
}