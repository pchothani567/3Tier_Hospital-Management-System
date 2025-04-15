using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Project_Hospital.Admin
{
    public class AppointmentDetailShow
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

        //Crp...1
        public SqlConnection startcon()
        {
            con = new SqlConnection(s);
            con.Open();
            return con;
        }


        //Select...1.1
        public DataSet filldata()
        {
            da = new SqlDataAdapter("select * from BookAppointment", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        //Delete....1
        public void delete(int id)
        {
            //cmd = new SqlCommand("delete from Emp_tbl where Id='" + id + "'", con);
            cmd = new SqlCommand("delete from BookAppointment where Id=" + id, con);
            cmd.ExecuteNonQuery();
        }

    }
}