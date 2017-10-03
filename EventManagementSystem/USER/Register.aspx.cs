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


        /// <summary>
        /// To register a new user 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            try
            {


                SqlConnection conn = new SqlConnection("Data Source=Suypc068;Initial Catalog=Event;Persist Security Info=True;User ID=sa;Password=Suyati123");

                conn.Open();
                SqlCommand cmd = new SqlCommand("Details", conn);// calling stored procedure 'Details' in which  details of new user is added into table'UserProfile'
                cmd.CommandType = CommandType.StoredProcedure;

                /*Adding parameters to stored procedure*/
                SqlParameter p1 = new SqlParameter("username", UserRegister.Text);
                SqlParameter p2 = new SqlParameter("password", PasswordRegister.Text); cmd.Parameters.Add(p1);
                cmd.Parameters.Add(p2);

                
                int outval = Convert.ToInt32(cmd.ExecuteScalar());
                if (outval == 1)                                       // if inserted 
                {
                    
                    MessageCreated.Text = "User Created..Go to LOGIN ";
                    MessageCreated.Visible = true;
                    
                }
                conn.Close();




            }
            catch (Exception ex)
            {
                Response.Redirect("~/ErrorPage.aspx");

            }
            

        }

    /// <summary>
    ///  To check whether username  already exist
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void UserRegister_TextChanged(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection("Data Source=Suypc068;Initial Catalog=Event;Persist Security Info=True;User ID=sa;Password=Suyati123");

                conn.Open();
                SqlCommand cmd = new SqlCommand("Duplicate", conn);//calling stored procedure 'Duplicate' which reads details of particular user if it already exist
                cmd.CommandType = CommandType.StoredProcedure;
                
                /*Adding parameters to stored procedure*/
                SqlParameter p = new SqlParameter("username", UserRegister.Text);
                cmd.Parameters.Add(p);
                SqlDataReader rd = cmd.ExecuteReader();
                
                
                if (rd.HasRows)                                     // checks table to know whether the user is already registered,if yes that message ia dispalyed
                {
                    rd.Read();
                    MessageDuplicate.Text = "User Already Exist.";

                    MessageDuplicate.Visible = true;
                    RegisterButton.Enabled = false;
                }


                conn.Close();
            }

            catch (Exception ex)
            {
                Response.Redirect("ErrorPage.aspx");                // Redirects to error page on exception

            }
        }
    }

}
