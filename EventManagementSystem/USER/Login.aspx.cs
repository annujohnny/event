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

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=Suypc068;Initial Catalog=Event;Persist Security Info=True;User ID=sa;Password=Suyati123");

            conn.Open();
           

            SqlCommand cmd = new SqlCommand("Profile", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p1 = new SqlParameter("username", UserLogin.Text);
            SqlParameter p2 = new SqlParameter("password", PasswordLogin.Text);
            cmd.Parameters.Add(p1);
            cmd.Parameters.Add(p2);
            ////cmd.Parameters.Add("@userid", SqlDbType.Int).Direction = ParameterDirection.Output;
            //cmd.Parameters.Add("@userid", SqlDbType.Int);
            //cmd.Parameters["@userid"].Direction = ParameterDirection.Output;
           

            SqlDataReader ad = cmd.ExecuteReader();

            
            if (ad.Read() == true)
            {
                //string id = cmd.Parameters["@userid"].Value.ToString();
                Session["Name"] = UserLogin.Text;
                Session["id"] = ad[0].ToString();

                FormsAuthentication.RedirectFromLoginPage(UserLogin.Text, true);

            }
            else
            {
                Message.Text = "Invalid credentials. Please try again.";
                Message.Visible=true;
            }
            conn.Close();

        }

       
    }
}