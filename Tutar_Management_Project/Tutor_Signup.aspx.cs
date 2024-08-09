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
    public partial class Tutor_Signup : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void ResetControl()
        {
            NameTxt.Text = "";
            SurnameTxt.Text = "";
            GenderDropDownList.ClearSelection();
            AgeTxt.Text = "";
            EmailTxt.Text = "";
            MaritalStatusDropDownList.ClearSelection();
            CountryTxt.Text = "";
            CityTxt.Text = "";
            AddressTxt.Text = "";
            QualificationDropDownList.ClearSelection();        
            DegreeTxt.Text = "";
            ExperienceDropDownList.ClearSelection();
            ContactTxt.Text = "";
            UsernameTxt.Text = "";
            PasswordTxt.Text = "";
            ConfirmPasswordTxt.Text = "";
        }
        protected void TutorSignUpButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            try
            {


                string query = "insert into tutor_signup values(@name,@surname,@gender,@age,@email,@marital_status,@country,@city,@address,@qualification,@degree ,@experience,@contact_no,@username,@password)";
                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@name", NameTxt.Text);
                cmd.Parameters.AddWithValue("@surname", SurnameTxt.Text);
                cmd.Parameters.AddWithValue("@gender", GenderDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@age", AgeTxt.Text);
                cmd.Parameters.AddWithValue("@email", EmailTxt.Text);
                cmd.Parameters.AddWithValue("@marital_status", MaritalStatusDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@country", CountryTxt.Text);
                cmd.Parameters.AddWithValue("@city", CityTxt.Text);
                cmd.Parameters.AddWithValue("@address", AddressTxt.Text);
                cmd.Parameters.AddWithValue("@qualification", QualificationDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@degree", DegreeTxt.Text);
                cmd.Parameters.AddWithValue("@experience", ExperienceDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@contact_no", ContactTxt.Text);
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
                if (ex.Message.Contains("UNIQUE KEY constraint"))
                {

                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Registraion Failed.." + UsernameTxt.Text + " Already Exist','error')", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Registraion Failed..!!','error')", true);
                }
            }
            finally
            {
                con.Close();
            }


        }
    }
}