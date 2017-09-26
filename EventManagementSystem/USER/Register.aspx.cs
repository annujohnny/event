using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventManagementSystem
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
       

        protected void RegisterButton_Click(object sender, EventArgs e)
        {  
            SqlConnection conn = new SqlConnection("Data Source=Suypc068;Initial Catalog=Event;Persist Security Info=True;User ID=sa;Password=Suyati123");

            conn.Open();
            SqlCommand cmd = new SqlCommand("Details", conn);
            cmd.CommandType = CommandType.StoredProcedure;
           
            SqlParameter p1 = new SqlParameter("username", UserRegister.Text);
            SqlParameter p2 = new SqlParameter("password", PasswordRegister.Text);
        
            cmd.Parameters.Add(p1);
            cmd.Parameters.Add(p2);
           
            SqlDataReader rd = cmd.ExecuteReader();

            if (rd.HasRows)
            {
                rd.Read();
                MessageCreated.Text = "User Created";
                MessageCreated.Visible = true;
                conn.Close();
                Response.Redirect("Login.aspx");

            }
            else
            {
                MessageCreated.Text = "User Not Created";
                conn.Close();
            }
           
           
        }

        protected void UserRegister_TextChanged(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=Suypc068;Initial Catalog=Event;Persist Security Info=True;User ID=sa;Password=Suyati123");

            conn.Open();
            SqlCommand cmd = new SqlCommand("Duplicate", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlParameter p = new SqlParameter("username", UserRegister.Text);
            cmd.Parameters.Add(p);
            SqlDataReader rd = cmd.ExecuteReader();

            if (rd.HasRows)
            {
                rd.Read();
                MessageDuplicate.Text = "User Already Exist.";

                MessageDuplicate.Visible = true;
                RegisterButton.Enabled = false;
            }
            
            
            conn.Close();
        }
    }
}