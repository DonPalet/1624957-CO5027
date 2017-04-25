using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OasisComp1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sendbtn_Click(object sender, EventArgs e)
        {
            SmtpClient smtpclient = new SmtpClient();
            smtpclient.EnableSsl = true;
            smtpclient.UseDefaultCredentials = false;
            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("1624957adi@gmail.com", "12345678aB");
            smtpclient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpclient.Host = "smtp.gmail.com";
            smtpclient.Port = 587;
            smtpclient.Credentials = credentials;


            //MailMessage msg = new MailMessage("1624957adi@gmail.com", emailtb.Text);
            MailMessage msg = new MailMessage();
            msg.To.Add("1624957adi@gmail.com");
            msg.From = new MailAddress("1624957adi@gmail.com");
            msg.Subject = String.Format("Name: " + nametb.Text + "Email: " + emailtb.Text + "Subject: " + subjecttb.Text);
            msg.Body = messagetb.Text;
            msg.IsBodyHtml = true;
            smtpclient.Send(msg);

           
            
        }
    }
}