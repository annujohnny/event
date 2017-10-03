using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventManagementSystem
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
           

        }
        /// <summary>
        /// On button click mail will be send.To do function 'SendMail' is called
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Sendmail_Click(object sender, EventArgs e)
        {
            try
            {
                
                SendMail();
                MailSend.Text = "Mail has been sent.Thanks for Supporting...";
                MailSend.Visible = true;
                Subject.Text = "";
                Email.Text = "";
                Name.Text = "";
                Query.Text = "";
            }
            catch (Exception)
            {
                Response.Redirect("~/ErrorPage.aspx");
            }

        }
        /// <summary>
        /// Send mail to company with user's query or feedbcak
        /// </summary>
        public void SendMail()
        {
            // Gmail Address from where you send the mail
            var fromAddress = "eventena12@gmail.com";
            // Gnail address where the email will be sending
            var toAddress = "eventena12@gmail.com";
            //Password of your gmail address
            const string fromPassword = "event123";
            // Passing the values and make a email formate to display
            string subject = Subject.Text.ToString();
            string body = "From: " + Name.Text + "\n";
            body += "Email: " + Email.Text + "\n";
            body += "Subject: " + Subject.Text + "\n";
            body += "Query: \n" + Query.Text + "\n";
            // smtp settings
            var smtp = new System.Net.Mail.SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
                smtp.Timeout = 20000;
            }
            // Passing values to smtp object
            smtp.Send(fromAddress, toAddress, subject, body);

           
        }
    }
}