﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tutar_Management_Project
{
    public partial class Contact : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void ResetContact()
        {
            NameTextBox.Text = "";
            EmailTextBox.Text = "";
            SubjectDropDownList.ClearSelection();
            MessageTextBox.Text = "";

        }
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string sp = "sp_Contact_Insert";
            SqlCommand cmd = new SqlCommand(sp, con);

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@name", NameTextBox.Text);
            cmd.Parameters.AddWithValue("@email", EmailTextBox.Text);
            cmd.Parameters.AddWithValue("@subject", SubjectDropDownList.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@message", MessageTextBox.Text);

            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {

                //Response.Write("<script>alert('Form has been successfully Submited')</script>");
                //Response.Write("<script>SuccessContact();</script>");
               ScriptManager.RegisterStartupScript(this,GetType(),"Popup", "SuccessContact();", true);
                ResetContact();
            }
            else
            {
                //Response.Write("<script>alert('Form Insertion Failed')</script>");
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "ErrotContact();", true);
            }
            con.Close();
        }
    }
}