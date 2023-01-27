using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Net.Configuration;
using System.Configuration;

namespace WebApplication1
{
    public partial class aboutus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Send(object sender, EventArgs e)
        {
            SmtpSection smtpSection = (SmtpSection)ConfigurationManager.GetSection("system.net/mailSettings/smtp");
            using (MailMessage mm = new MailMessage(smtpSection.From, "supriya_pandey_mca21@jimsindia.org"))
            {
                mm.Subject = txtSubject.Text.Trim();
                mm.Body = "Name: " + txtName.Text + "<br /><br />Email: " + txtEmail.Text + "<br />" + txtBody.Text;
                mm.IsBodyHtml = true;
                if (FileUpload1.HasFile)
                {
                    string fileName = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
                    mm.Attachments.Add(new Attachment(FileUpload1.PostedFile.InputStream, fileName));
                }
                SmtpClient smtp = new SmtpClient();
                smtp.Host = smtpSection.Network.Host;
                smtp.EnableSsl = smtpSection.Network.EnableSsl;
                NetworkCredential networkCred = new NetworkCredential(smtpSection.Network.UserName, smtpSection.Network.Password);
               smtp.UseDefaultCredentials = smtpSection.Network.DefaultCredentials;
                smtp.Credentials = networkCred;
                smtp.Port = smtpSection.Network.Port;
                smtp.Send(mm);
            }
        }
    }
}