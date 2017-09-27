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
    
    public partial class Welcome : System.Web.UI.Page
     {
        private SqlConnection conn = new SqlConnection("Data Source=SuyPC068;Initial Catalog=Event;Persist Security Info=True;User ID=sa;Password=Suyati123");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       

        /// <summary>
        /// To delete Grid View
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                    SqlConnection conn = new SqlConnection("Data Source=Suypc068;Initial Catalog=Event;Persist Security Info=True;User ID=sa;Password=Suyati123");
                    int Id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values["EventId"]);//getting id from grid

                    conn.Close();
                    SqlCommand cmd = new SqlCommand("DELETE FROM EventDetails WHERE EventId=" + Id + "", conn);//deleting from database
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();

             }
            catch (Exception ex)
            {
                Response.Redirect("UserError.aspx");
            }
            finally
            {
                Response.Redirect("Welcome.aspx");
            }

        }
        /// <summary>
        /// To get the index of grid row to be edited
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;

        }
        /// <summary>
        /// To update the grid
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                    SqlConnection conn = new SqlConnection("Data Source=Suypc068;Initial Catalog=Event;Persist Security Info=True;User ID=sa;Password=Suyati123");

                    
                    int EventId = Convert.ToInt32( GridView1.DataKeys[e.RowIndex].Values["EventId"]);// getting event id of event row to be edited
                    /*Storing new values of each column into different variables */
                    string EventName = e.NewValues[0].ToString(); 
                    string Description = e.NewValues[1].ToString();
                    string Date = e.NewValues[2].ToString();
                    string Venue = e.NewValues[3].ToString();
                    string Contact = e.NewValues[4].ToString();
                    conn.Open();
                    SqlCommand cd = new SqlCommand("UPDATEEVENT", conn);// Using stored procedure'UPDATEEVENT' grid editing is done
                    cd.CommandType = CommandType.StoredProcedure;
                    
                    /* Inserting parameters to stored procedure*/

                    SqlParameter p0 = new SqlParameter("@eventid",  EventId);
                    cd.Parameters.Add(p0);
                    SqlParameter p1 = new SqlParameter("@eventname", EventName);
                    cd.Parameters.Add(p1);

                    SqlParameter p2 = new SqlParameter("@description", Description);
                    cd.Parameters.Add(p2);

                    SqlParameter p3 = new SqlParameter("@date", Date);
                    cd.Parameters.Add(p3);

                    SqlParameter p4 = new SqlParameter("@venue", Venue);
                    cd.Parameters.Add(p4);

                    SqlParameter p5 = new SqlParameter("@contact", Contact);
                    cd.Parameters.Add(p5);

                    cd.ExecuteNonQuery();
                    
                    conn.Close();
             
                
            }
            catch (Exception ex)
            {
                
                Response.Redirect("UserError.aspx");            //To redirect to custom error page on exception
            }
            finally
            {
                Response.Redirect("Welcome.aspx");
            }
        }

        
    }
}