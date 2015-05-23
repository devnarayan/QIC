using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.Hosting;

namespace QIC.Areas.En.SendMail
{
    public class SendMail
    {
        public static string SendContactUsMail(string emailId, string name, string message, string Url)
        {
            try
            {
                //u.GetPassword();
                MailMessage email = new MailMessage();
                email.From = new MailAddress(ConfigurationManager.AppSettings["tomail"]);

                email.Subject = "Thanks for contacting us: [ . ]‏";
                email.IsBodyHtml = true;
                StringBuilder Message = new StringBuilder();               

                DateTime dt = DateTime.Now;
                Message.Replace("Name_Token", name);
                Message.Replace("Domain_Token", ConfigurationManager.AppSettings["domain"].ToString());

                email.Body = Convert.ToString(Message);
                string from_email = ConfigurationManager.AppSettings["email"];
                string password = ConfigurationManager.AppSettings["password"];
                string host = ConfigurationManager.AppSettings["host"];
                int port = Convert.ToInt32(ConfigurationManager.AppSettings["port"]);
                SmtpClient smtp = new SmtpClient(host, port);
                smtp.UseDefaultCredentials = false;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                NetworkCredential nc = new NetworkCredential(from_email, password);
                smtp.Credentials = nc;
                smtp.EnableSsl = true;
                email.IsBodyHtml = true;


                email.To.Add(emailId);
                //Attachment attachment = new Attachment(Path.Combine(HostingEnvironment.MapPath("~/Pdfdocs"), model.PdfUrl));
                //email.Attachments.Add(attachment);

                smtp.Send(email);
                return "OK";
            }
            catch (Exception ex)
            {
                Helper helper = new Helper();
                helper.LogException(ex);
                return "Error";
            }
        }
    }
}