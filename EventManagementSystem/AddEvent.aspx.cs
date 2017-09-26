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
    public partial class AddEvent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection("Data Source=Suypc068;Initial Catalog=Event;Persist Security Info=True;User ID=sa;Password=Suyati123");

            conn.Open();
            SqlCommand cmd = new SqlCommand("ADDEVENT", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlParameter p1 = new SqlParameter("eventname", Eventname.Text);
            SqlParameter p2 = new SqlParameter("description", Description.Text);
            SqlParameter p3 = new SqlParameter("date", Date.Text);
            SqlParameter p4 = new SqlParameter("venue", Venue.Text);
            SqlParameter p5 = new SqlParameter("contactperson", Contact.Text);
            SqlParameter p6 = new SqlParameter("userid", Session["id"]);
            cmd.Parameters.Add(p1);
            cmd.Parameters.Add(p2);
            cmd.Parameters.Add(p3);
            cmd.Parameters.Add(p4);
            cmd.Parameters.Add(p5);
            cmd.Parameters.Add(p6);




            SqlDataReader rd = cmd.ExecuteReader();

            if (rd.Read()==true)
            {
                
                EventCreated.Text = "Event Created";
                EventCreated.Visible = true;
                conn.Close();
                Response.Redirect("Welcome.aspx");

            }
            else
            {
                EventCreated.Text = "Event Not Created";
                conn.Close();
            }


        }
    }
}