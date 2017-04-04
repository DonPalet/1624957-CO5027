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
            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("adim1339v2@gmail.com", "561339a9");
            smtpclient.Host = "smtp.gmail.com";
            smtpclient.Port = 587;


            MailMessage msg = new MailMessage("adim1339v2@gmail.com", emailtb.Text);
            msg.Subject = "Name: " + nametb.Text + "Subject: " + subjecttb.Text;
            msg.Body = messagetb.Text;
            smtpclient.Send(msg);
        }
    }
}