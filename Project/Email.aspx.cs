using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace Project
{
    public partial class Email : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            try
            {
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.Credentials = new NetworkCredential("mahnayon@gmail.com", ("nayon90$"));
                MailMessage msg = new MailMessage();
                msg.To.Add(txtTo.Text);
                msg.From = new MailAddress("mahnayon@gmail.com");
                msg.Subject = txtSubject.Text;
                msg.Body = txtMessage.Text;
                client.Send(msg);
                //Response.Write("Message has Sent");
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Message has been sent Successfully');", true);
            }
            catch (Exception ex)
            {
                Response.Write("Message send Failed" + ex.Message);
            }
        }
    }
}