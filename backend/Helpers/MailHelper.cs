using System;
using System.Threading.Tasks;
using SendGrid;
using SendGrid.Helpers.Mail;

namespace backend.Helpers
{
    public class MailHelper
    {
        public async Task SendSignupMail(string Reciever, DateTime? AppointmentDate, string Location)
        {
            var ApiKey = Environment.GetEnvironmentVariable("SENDGRID_APIKEY");
            var Client = new SendGridClient(ApiKey);
            var msg = new SendGridMessage
            {
                From = new EmailAddress("TaxModel@noreply.com", "TaxModel"),
                Subject = "You signed up for an appointment!",
                PlainTextContent = "You have signed yourself up for an appointment at " + Location + " at " +
                                   AppointmentDate
            };
            msg.AddTo(new EmailAddress(Reciever));
            var response = await Client.SendEmailAsync(msg);
        }
    }
}