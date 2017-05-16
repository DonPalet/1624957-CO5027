using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text.RegularExpressions;
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
            if (string.IsNullOrWhiteSpace(emailtb.Text))
            {
                succmsg.Text = "Enter all fields";
            }
           else if (   ((!string.IsNullOrWhiteSpace(emailtb.Text) || string.IsNullOrWhiteSpace(emailtb.Text)) &&
                    (!Regex.IsMatch(emailtb.Text,
                    @"^(>("")("",+?(?<!\\)""@)|(([0-9a-z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^'\{\}\|~\w])*)(?<=[0-9a-z])@))" +
                    @"(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-z][-\w]*[0-9a-z]*\.)+[a-z0-9][\-a-z0-9]{0,22}[a-z0-9]))$",
                    RegexOptions.IgnoreCase, TimeSpan.FromMilliseconds(250)))))
                
                
                
                
            {
                succmsg.Text = "Email is invalid";
            }
            else
            {
                try
                {
                    smtpclient.Send(msg);
                    succmsg.Text = "Message Sent";
                }
                catch
                {
                    succmsg.Text = "Error. Message not sent";
                }
            }
        }
    }
}