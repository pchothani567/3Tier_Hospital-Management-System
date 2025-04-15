using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Project_Hospital
{
    public class RegisterUser
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

        //4.1
        public void insert(string unm, string eml, string pwd ,string deptrole)
        {
            cmd = new SqlCommand("insert into RegistrationTable(Username,Email,Password,DeptRole)values('" + unm + "','" + eml + "','" + pwd + "','"+deptrole+"')", con);
            cmd.ExecuteNonQuery();
        }
    }
}