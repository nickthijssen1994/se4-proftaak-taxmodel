using System;
using System.Configuration;
using System.Threading.Tasks;
using Microsoft.Extensions.Configuration;
using SendGrid;
using SendGrid.Helpers.Mail;

namespace backend.Helpers
{
    public class MailHelper : IMailHelper
    {
        readonly IConfiguration config;
        public MailHelper(IConfiguration configuration)
        {
            config = configuration;
        }
        public async Task SetUpRegisterReminderMail(string recieverEmail, DateTime? appointmentDate, string location)
        {
            int minutesBeforeMailSent = 59;
            string apiKey = config.GetValue<string>("SENDGRID_APIKEY");
            DateTimeOffset dateTimeOff = new DateTimeOffset(appointmentDate.Value).Subtract(TimeSpan.FromMinutes(minutesBeforeMailSent));
            long timeToSend = dateTimeOff.ToUnixTimeSeconds();
            
            SendGridClient client = new SendGridClient(apiKey);
            SendGridMessage msg = new SendGridMessage
            {
                From = new EmailAddress("TaxModel@noreply.com", "TaxModel"),
                Subject = "Reminder: appointment at" + location,
                PlainTextContent = "You have signed yourself up for an appointment at " + location + " at " +
                                   appointmentDate,
                SendAt = timeToSend
            };
            msg.AddTo(new EmailAddress(recieverEmail));

            var response = await client.SendEmailAsync(msg);
        }

        public async Task SetUpReservationReminderMail(string organiserEmail, DateTime? appointmentDate, string location)
        {
            int daysBeforeMailSent = 1;
            string apiKey = config.GetValue<string>("SENDGRID_APIKEY");
            DateTimeOffset ef = new DateTimeOffset(appointmentDate.Value).Subtract(TimeSpan.FromDays(daysBeforeMailSent));
            long timeToSend = ef.ToUnixTimeSeconds();

            SendGridClient client = new SendGridClient(apiKey);
            SendGridMessage msg = new SendGridMessage
            {
                From = new EmailAddress("TaxModel@noreply.com", "TaxModel"),
                Subject = "Reminder: appointment at" + location,
                PlainTextContent = "You have signed yourself up for an appointment at " + location + " at " +
                                   appointmentDate,
                SendAt = timeToSend
            };
            msg.AddTo(new EmailAddress(organiserEmail));

            var response = await client.SendEmailAsync(msg);
        }
    }
}