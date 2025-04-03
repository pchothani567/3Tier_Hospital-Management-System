using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Project_Hospital.Admin
{
    public class Adddepartment
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

        //Add Department Name ....AddDepartment.aspx.cs
        public void insert(string dptnm)
        {
            cmd = new SqlCommand("insert into AddDepartment(DepartmentName)values('"+dptnm+"') ",con);
            cmd.ExecuteNonQuery();
        }

        //select...1.1
        public DataSet filldata()
        {
            da = new SqlDataAdapter("select * from AddDepartment", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        //update...1

        public DataSet select(int id)
        {
            da = new SqlDataAdapter("select*from AddDepartment where Id='" + id + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        //update...2 (4.1...)

        public void update(int id, string deptnm)
        {
            cmd = new SqlCommand("update AddDepartment set DepartmentName='"+ deptnm+"' where Id='" + id + "'", con);
            cmd.ExecuteNonQuery();
        }

        //Delete....1
        public void delete(int id)
        {
            //cmd = new SqlCommand("delete from Emp_tbl where Id='" + id + "'", con);
            cmd = new SqlCommand("delete from AddDepartment where Id=" + id, con);
            cmd.ExecuteNonQuery();
        }
    }
}
