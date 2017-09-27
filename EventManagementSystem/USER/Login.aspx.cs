using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventManagementSystem
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        /// <summary>
        /// To login a registered user to his page on button click based on username and password
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button1_Click(object sender, EventArgs e)
        {   try
            {
                SqlConnection conn = new SqlConnection("Data Source=Suypc068;Initial Catalog=Event;Persist Security Info=True;User ID=sa;Password=Suyati123");
                conn.Open();
                SqlCommand cmd = new SqlCommand("Profile", conn);// calling stored procedure 'Profile' which select username and password from table UserProfile in that database
                cmd.CommandType = CommandType.StoredProcedure;
                /*Addoing parameters to stored procedure*/
                SqlParameter p1 = new SqlParameter("username", UserLogin.Text);
                SqlParameter p2 = new SqlParameter("password", PasswordLogin.Text);
                cmd.Parameters.Add(p1);
                cmd.Parameters.Add(p2);
                SqlDataReader ad = cmd.ExecuteReader();

                if (ad.Read() == true)
                {

                    Session["Name"] = UserLogin.Text;
                    Session["id"] = ad[0].ToString();

                    FormsAuthentication.RedirectFromLoginPage(UserLogin.Text, true);//Redirects to home page of logged user

                }
                else
                {
                    Message.Text = "Invalid credentials. Please try again.";//
                    Message.Visible = true;
                }
                conn.Close();
            }
            catch(Exception ex)
            {
                Response.Redirect("ErrorPage.aspx");//if exception occured redirect to error page
            }
            
        }

       
    }
}