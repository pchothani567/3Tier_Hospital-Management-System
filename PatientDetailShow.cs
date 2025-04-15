using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace Project_Hospital.Admin
{
    public class PatientDetailShow
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

        //Select...1.1
        public DataSet filldata()
        {
            da = new SqlDataAdapter("select * from Patients", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        //Delete....1
        public void delete(int id)
        {
            //cmd = new SqlCommand("delete from Emp_tbl where Id='" + id + "'", con);
            cmd = new SqlCommand("delete from Patients where Id=" + id, con);
            cmd.ExecuteNonQuery();
        }


    }
}