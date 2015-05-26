using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace QIC.App_Start
{
    public class SendEmail
    {
        public string sendContactus(string name,string email,string website,string message)
        {
            try
            {
                string Body = "<h3>Hello Admin!</h3><br/><br/> <b>Website New Contact form submission</b><br/><br/>Name: " + name + "<br/>Email:" + email + "<br/>Website: " + website + "<br/>Message:" + message + "<br/><br/><br/>Thanks<br/>Admin Panel";
                System.Net.Mail.MailMessage MyMailMessage = new System.Net.Mail.MailMessage(ConfigurationManager.AppSettings["email"], ConfigurationManager.AppSettings["tomail"]);
                MyMailMessage.IsBodyHtml = true;
                MyMailMessage.Subject = "QIC: Website Contactus Form Submission";
                MyMailMessage.Body = Convert.ToString(Body);
                System.Net.Mail.Attachment MyAttachment = null;

                string host = ConfigurationManager.AppSettings["host"];
                int port = Convert.ToInt32(ConfigurationManager.AppSettings["port"]);
                System.Net.Mail.SmtpClient mailClient = new System.Net.Mail.SmtpClient(host, port);
                mailClient.EnableSsl = true;
                string from_email = ConfigurationManager.AppSettings["email"];
                string password = ConfigurationManager.AppSettings["password"];
                System.Net.NetworkCredential mailAuthentication = new System.Net.NetworkCredential(from_email, password);
                mailClient.UseDefaultCredentials = false;

                mailClient.Credentials = mailAuthentication;
                mailClient.Send(MyMailMessage);
                MyMailMessage.Dispose();

                // Send emai to Visitor
                System.Net.Mail.MailMessage MyMailMessage2 = new System.Net.Mail.MailMessage(ConfigurationManager.AppSettings["email"], email);
                MyMailMessage2.IsBodyHtml = true;
                Body = "<h3>Hello " + name + "!</h3><br/><br/> <b>Thanks for contact us, we wil get back to you soon.</b><br/><br/><br/>Thanks<br/><h4>Quality Indicator Contracting est.</h4>";
                MyMailMessage2.Body = Convert.ToString(Body);
                MyMailMessage2.Subject = "QIC: Thanks For Contact Us";
                System.Net.Mail.SmtpClient mailClient2 = new System.Net.Mail.SmtpClient(host, port);
                mailClient.EnableSsl = true;
                mailClient2.UseDefaultCredentials = false;

                mailClient2.Credentials = mailAuthentication;
                mailClient2.Send(MyMailMessage2);

                MyMailMessage2.Dispose();
                return "Message send successfully.";
            }
            catch (Exception ex)
            {
                return "Error";
            }
        }
    }
}