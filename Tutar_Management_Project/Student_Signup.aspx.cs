using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tutar_Management_Project
{
    public partial class Student_Signup : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void ResetControl()
        {
            NameTxt.Text = "";
            FatherTxt.Text = "";
            SurnameTxt.Text = "";
            GenderDropDownList.ClearSelection();
            AgeTxt.Text = "";
            CountryTxt.Text = "";
            AddressTxt.Text = "";
            ClassTxt.Text = "";
            GointToDropDownList.ClearSelection();
            SubjectTxt.Text = "";
            ContactTxt.Text = "";
            TutionTypeDropDownList.ClearSelection();    
            TutorPreferDropDownList.ClearSelection();
            UsernameTxt.Text = "";
            PasswordTxt.Text = "";
            ConfirmPasswordTxt.Text = "";
        }
        protected void StudentSignUpButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            try
            {


                string query = "insert into student_signup values(@name,@fathername,@surname,@gender,@age,@country,@city,@address,@standard,@gointo,@subject,@contact,@tutiontype,@tutorprefer,@username,@password)";
                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@name", NameTxt.Text);
                cmd.Parameters.AddWithValue("@fathername", FatherTxt.Text);
                cmd.Parameters.AddWithValue("@surname", SurnameTxt.Text);
                cmd.Parameters.AddWithValue("@gender", GenderDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@age", AgeTxt.Text);
                cmd.Parameters.AddWithValue("@country", CountryTxt.Text);
                cmd.Parameters.AddWithValue("@city", CityTxt.Text);
                cmd.Parameters.AddWithValue("@address", AddressTxt.Text);
                cmd.Parameters.AddWithValue("@standard", ClassTxt.Text);
                cmd.Parameters.AddWithValue("@gointo", GointToDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@subject", SubjectTxt.Text);
                cmd.Parameters.AddWithValue("@contact", ContactTxt.Text);
                cmd.Parameters.AddWithValue("@tutiontype", TutionTypeDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@tutorprefer", TutorPreferDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@username", UsernameTxt.Text);
                cmd.Parameters.AddWithValue("@password", PasswordTxt.Text);
                con.Open();

                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {
                    //Response.Write("<script>alert('You Have Register Successfully..!!')</script>");

                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Success','You Have Register Successfully..!!','success')", true);
                    ResetControl();
                }
                else
                {
                    //Response.Write("<script>alert('Registraion Failed..!!')</script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Registraion Failed..Try Another Username','error')", true);
                }
            }
            catch (SqlException ex)
            {
                if(ex.Message.Contains("UNIQUE KEY constraint"))
                {

                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Registraion Failed.."+ UsernameTxt.Text+" Already Exist','error')", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Registraion Failed..!!','error')", true);
                }
            }
            finally {
                con.Close();
            }
           
        }

    }
}