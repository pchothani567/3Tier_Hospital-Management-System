using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Project_Hospital.Admin
{
    public class AddDoctor
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


        //Add department user throgh (AddDepartment=> Table)
        public void insert(int id,string nm,string eml,string degree,string speciality,string gender,string dob,string phone,string photo)
        {
            cmd = new SqlCommand("insert into Doctors(Doc_Dept_Id,Name,Email,Degree,Speciality,Gender,Dob,Phone,Photo)values('"+id+"','"+nm+"','"+eml+"','"+degree+"','"+speciality+"','"+gender+"','"+dob+"','"+phone+"','"+photo+"')",con);
            cmd.ExecuteNonQuery();
        }

        //Select...1.1
        public DataSet filldata()
        {
            da = new SqlDataAdapter("select * from Doctors", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }


        //update...1

        public DataSet select(int id)
        {
            da = new SqlDataAdapter("select*from Doctors where Id='" + id + "'", con);
            ds = new DataSet();
            //da.Fill(ds);
            da.Fill(ds, "Doctors"); // This names the table "Doctors"
            return ds;
        }

        //update...2 (4.1...)

        public void update(int id, string nm,string eml,string degree,string dept,string gnd,string dob,string phone)
        {
            cmd = new SqlCommand("update Doctors set Name='"+nm+"',Email='"+eml+"',Degree='"+degree+"',Speciality='"+dept+"',Gender='"+gnd+"',Dob='"+dob+"',Phone='"+phone+"' where Id='" + id + "'", con);
            cmd.ExecuteNonQuery();
        }

        //Delete....1
        public void delete(int id)
        {
            //cmd = new SqlCommand("delete from Emp_tbl where Id='" + id + "'", con);
            cmd = new SqlCommand("delete from Doctors where Id=" + id, con);
            cmd.ExecuteNonQuery();
        }
    }
}
