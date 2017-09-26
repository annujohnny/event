using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventManagementSystem
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] != null)

                userlabel.Text = "Welcome:: " + Session["Name"].ToString();

            ////else

            ////    Response.Redirect("Login.aspx");
        }
    }
}