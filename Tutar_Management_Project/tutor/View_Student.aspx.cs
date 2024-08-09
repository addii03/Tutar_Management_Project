using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Tutar_Management_Project.tutor
{
    public partial class View_Student : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["tutor_username"] == null)
            {
                Response.Redirect("~/Tutor_Login.aspx");

            }

            if (!IsPostBack)
            {
                BindRepeator();
            }
        }
        void BindRepeator()
        {

            SqlConnection con = new SqlConnection(cs);
            string query = "select * from student_signup";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            Repeater1.DataSource = data;
            Repeater1.DataBind();



        }

        protected void SearchBtn_ServerClick(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(cs);
            string query = "select * from student_signup  where [name] like ('%" + SearchTextBox.Text + "%') or [gender] like ('%" + SearchTextBox.Text + "%') or [country] like ('%" + SearchTextBox.Text + "%')or [city] like ('%" + SearchTextBox.Text + "%') or [surname] like ('%" + SearchTextBox.Text + "%')or [standard] like ('%" + SearchTextBox.Text + "%') or [goingto] like ('%" + SearchTextBox.Text + "%')or [subject] like ('%" + SearchTextBox.Text + "%')or [tutiontype] like ('%" + SearchTextBox.Text + "%')or [tutorprefer] like ('%" + SearchTextBox.Text + "%')";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            if (data.Rows.Count > 0)
            {
                Repeater1.DataSource = data;
                Repeater1.DataBind();
            }
            else
            {
                Response.Write("<script> alert(' No Records Found..!!') </script>");
                Repeater1.DataSource = null;
                Repeater1.DataBind();
            }
        }
    }
}