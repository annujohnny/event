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
        /// <summary>
        /// To add event on button click
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (String.IsNullOrEmpty(Eventname.Text))                 //checks whether event name is empty,if yes message is given to the user to inform that
                {
                    Emptymessage.Text = "Event name cannot be empty";
                    Emptymessage.Visible = true;

                }
                else                                                     //check whether event name empty ,if not event added 
                {


                    SqlConnection conn = new SqlConnection("Data Source=Suypc068;Initial Catalog=Event;Persist Security Info=True;User ID=sa;Password=Suyati123");

                    conn.Open();
                    SqlCommand cmd = new SqlCommand("ADDEVENT", conn);// calling stored procedure'ADDEVENT' that add event details to table EventDetails in sql server database
                    cmd.CommandType = CommandType.StoredProcedure;

                    /*Adding parameters to stored procedure*/

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



                    int returnval = Convert.ToInt32(cmd.ExecuteScalar()); //Executes the query, and returns the first column of the first row in the result set returned by the query

                    if (returnval == 1)                                    // if true event created message is given 
                    {

                        EventCreated.Text = "Event Created";
                        EventCreated.Visible = true;
                        Response.AddHeader("REFRESH", "2;URL=AddEvent.aspx");//refresh the page  after 2 seconds to add more events


                    }
                    conn.Close();

                }
            }

            catch (Exception ex)
            {
                Response.Redirect("ErrorPage.aspx");   //// Redirects to error page on exception
            }
            
        }

        
    }
}