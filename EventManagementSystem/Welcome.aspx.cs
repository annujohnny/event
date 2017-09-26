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
    /// <summary>
    /// 
    /// 
    /// </summary>
    public partial class Welcome : System.Web.UI.Page
     {
        private SqlConnection conn = new SqlConnection("Data Source=SuyPC068;Initial Catalog=Event;Persist Security Info=True;User ID=sa;Password=Suyati123");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       

        
        protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
               
                    
                    SqlConnection conn = new SqlConnection("Data Source=Suypc068;Initial Catalog=Event;Persist Security Info=True;User ID=sa;Password=Suyati123");

                //conn.Open();
                //SqlCommand cd = new SqlCommand("GETID", conn);
                //cd.CommandType = CommandType.StoredProcedure;

                //SqlParameter p = new SqlParameter("@eventname", name);
                //cd.Parameters.Add(p);

                //cd.Parameters.Add("@eventid", SqlDbType.Int);
                //cd.Parameters["@eventid"].Direction = ParameterDirection.Output;
                //cd.ExecuteNonQuery();


                //int Id = Convert.ToInt32(cd.Parameters["@eventid"].Value); 
                    int Id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values["EventId"]);

                    conn.Close();
                    SqlCommand cmd = new SqlCommand("DELETE FROM EventDetails WHERE EventId=" + Id + "", conn);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    this.conn.Close();

                

               
            }
            catch (Exception ex)
            {

            }
            finally
            {
                Response.Redirect("Welcome.aspx");
            }

        }

        protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;

        }

        protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                    SqlConnection conn = new SqlConnection("Data Source=Suypc068;Initial Catalog=Event;Persist Security Info=True;User ID=sa;Password=Suyati123");

                    
                    int EventId = Convert.ToInt32( GridView1.DataKeys[e.RowIndex].Values["EventId"]);
                    string EventName = e.NewValues[0].ToString();
                    string Description = e.NewValues[1].ToString();
                    string Date = e.NewValues[2].ToString();
                    string Venue = e.NewValues[3].ToString();
                    string Contact = e.NewValues[4].ToString();
                    conn.Open();
                    SqlCommand cd = new SqlCommand("DELETEEVENT", conn);
                    cd.CommandType = CommandType.StoredProcedure;


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
            }
            finally
            {
                Response.Redirect("Welcome.aspx");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}