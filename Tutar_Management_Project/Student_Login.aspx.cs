﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tutar_Management_Project
{
    public partial class Student_Login : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Student_LoginBtn_Click(object sender, EventArgs e)
        {
            
                SqlConnection con = new SqlConnection(cs);
                string query = "select * from student_signup where username=@username and password=@password";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@username", UsernameTxt.Text);
                cmd.Parameters.AddWithValue("@password", PasswordTxt.Text);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows == true)
                {
                    Response.Write("<script>alert('Login Successgully')</script>");
                    Session["student_username"] = UsernameTxt.Text;
                    Response.Redirect("student/Student_Index.aspx");
                }
                else
                {
                    //Response.Write("<script>alert('Login Failed')</script>");

                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Username Or Password is Incorrect','error')", true);
                }
                con.Close();
            
        }
    }
}