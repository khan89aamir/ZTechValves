﻿using System;
using System.Collections.Generic;
using System.Text;
using System.Net.Mail;
using System.Net;
using System.Threading;

namespace CoreApp
{
    /// <summary>
    /// SendMail class for sending an email.
    /// </summary>
    public class SendMail
    {
        /// <summary>
        /// set the receiver email id with comma seprated.
        /// </summary>
        public string To = string.Empty;

        /// <summary>
        /// set the subject of email.
        /// </summary>
        public string Sub = string.Empty;

        /// <summary>
        /// set the main message.
        /// </summary>
        public string Body = string.Empty;

        /// <summary>
        /// Sender email id.
        /// </summary>
        public string From = "mat.test1989@gmail.com";

        /// <summary>
        /// Sender email pass.
        /// </summary>
        public string Password = "mattest1989";

        /// <summary>
        /// set the whether email is sent or not.
        /// </summary>
        public bool IsMail = false;

        /// <summary>
        /// set the pass of email.
        /// </summary>
        public string pass = string.Empty;

        /// <summary>
        /// SendEmail function to send email.
        /// </summary>
        //public bool SendEMail(string strTo, string strSubject, string strBody, string strFrom, string strpass)
        public void SendEMail()
        {
            try
            {
                var smtp = new System.Net.Mail.SmtpClient();
                {
                    To = System.Configuration.ConfigurationManager.AppSettings["To"];
                    MailMessage message = new MailMessage();
                    message.From = new MailAddress(From);
                    message.To.Add(To);
                    message.Subject = Sub;
                    message.IsBodyHtml = true;
                    message.Body = Body;

                    smtp.Host = System.Configuration.ConfigurationManager.AppSettings["HostName"];
                    smtp.Port = Convert.ToInt32(System.Configuration.ConfigurationManager.AppSettings["Port"]);
                    smtp.EnableSsl = true;
                    smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                    smtp.Credentials = new NetworkCredential(From, Password);
                    smtp.Timeout = 20000;
                    smtp.Send(message);
                }
                // Passing values to smtp object
                //smtp.Send(From, To, Sub, Body);
                IsMail = true;
                //return true;
            }
            catch (Exception ex)
            {
                IsMail = false;
                //return false;
            }
        }
    }
}