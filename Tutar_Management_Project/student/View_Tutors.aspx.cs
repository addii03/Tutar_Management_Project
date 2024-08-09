using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Tutar_Management_Project.student
{
    public partial class View_Tutors : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["student_username"] == null)
            {
                Response.Redirect("~/Student_Login.aspx");

            }

            if (!IsPostBack)
            {
                BindRepeator();
            }
        }
        void BindRepeator()
        {

            SqlConnection con = new SqlConnection(cs);
            string query = "select * from tutor_signup";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            Repeater1.DataSource = data;
            Repeater1.DataBind();



        }

        protected void SearchBtn_ServerClick(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from tutor_signup where [name] like ('%"+SearchTextBox.Text+ "%') or [gender] like ('%"+SearchTextBox.Text+"%') or [country] like ('%"+SearchTextBox.Text+ "%')or [city] like ('%"+SearchTextBox.Text+ "%') or [qualification] like ('%"+SearchTextBox.Text+ "%')or [experience] like ('%"+SearchTextBox.Text+"%')";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            if(data.Rows.Count > 0)
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