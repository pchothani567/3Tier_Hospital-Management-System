using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace Project_Hospital.Admin
{
    public class Login
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

        //4.1
        public SqlConnection startcon()
        {
            con = new SqlConnection(s);
            con.Open();
            //6.2
            return con;
        }
    }
}
