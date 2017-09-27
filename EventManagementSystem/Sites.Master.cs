using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventManagementSystem
{
    public partial class Sites : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["Name"] != null)
                {

                    Label userlabel1 = (Label)(LoginView1.FindControl("userlabel1"));

                    userlabel1.Text = "Welcome:: " + Session["Name"].ToString();// displaying username on  header page
                }

            }
            catch(Exception ex)
            {
                Response.Redirect("ErrorPage.aspx");                           // To redirect on exception
            }
            
        }

       
        /// <summary>
        /// To enable logout
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void logoutbtn_Click1(object sender, EventArgs e)
        {   

            FormsAuthentication.SignOut();                                               //Sign out for authenticated user
            Session.Abandon();                                                           //clear session
            HttpCookie cookie1 = new HttpCookie(FormsAuthentication.FormsCookieName, "");// clear authentication cookie
            cookie1.Expires = DateTime.Now.AddYears(-1);
            Response.Cookies.Add(cookie1);

            FormsAuthentication.RedirectToLoginPage();                                   //To redirect to login page 

        }
    }
}