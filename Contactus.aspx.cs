using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public partial class Contactus : System.Web.UI.Page
{
    protected override void OnPreRender(EventArgs e)
    {
        ViewState["update"] = Session["update"];
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) // If page loads for first time
        {
            // Assign the Session["update"] with unique value
            Session["update"] = Server.UrlEncode(System.DateTime.Now.ToString());
        }
    }

    private void ShowMessageBox(string msg, bool IsSuccess = true)
    {
        HtmlGenericControl lblUserVal = (HtmlGenericControl)Page.Master.FindControl("lblMessage");
        lblUserVal.InnerText = msg;
        string script = "";
        if (IsSuccess)
        {
            script = "$('#mdlNormalMessage').modal(); ";
        }
        else
        {
            script = "$('#mdlNormalMessage').modal(); " +
                     "$('#iconMsg').removeClass('fa-check-circle').addClass('fa-times-circle');" +
                     "$('#iconMsg').css('color','red');";
        }
        Page.ClientScript.RegisterStartupScript(this.GetType(), "func", script, true);

        //System.Web.UI.HtmlControls.HtmlGenericControl lblUserVal = (System.Web.UI.HtmlControls.HtmlGenericControl)Page.Master.FindControl("lblMessage");
        //lblUserVal.InnerText = msg;
        //string script = "";
        //if (IsSuccess)
        //{
        //    script = "$('#mdlNormalMessage').modal(); ";
        //}
        //else
        //{
        //    script = "$('#mdlNormalMessage').modal(); " +
        //             "$('#iconMsg').removeClass('fa-check-circle').addClass('fa-times-circle');" +
        //             "$('#iconMsg').css('color','red');";
        //}
        //Page.ClientScript.RegisterStartupScript(this.GetType(), "func", script, true);

        //lblMessage.InnerText = msg;

        //Page.ClientScript.RegisterStartupScript(this.GetType(), "func", "$('#myModal').modal();", true);
    }

    protected void SendEMail(object sender, EventArgs e)
    {
        try
        {
            // If page not Refreshed
            if (Session["update"].ToString() == ViewState["update"].ToString())
            {
                string strname = Request["name"].ToString();
                string strmobileno = Request["mobileno"].ToString();
                string stremail = Request["email"].ToString();
                string strsubject = Request["subject"].ToString();
                string strmessage = Request["message"].ToString();
                string bodyHTML = string.Empty;
                bool isSent = false;

                bodyHTML = "<p>Dear ZTECH VALVE,</p>";
                bodyHTML += "<p>" + strname + " is interested in your business.</p>";
                bodyHTML += "<p>PFB Message From " + strname + ".</p> <p>" + strmessage + " </p>";
                bodyHTML += "<p>PFB Contact Details.</p>";
                bodyHTML += @" <html><table width = '300' cellpadding = '0' cellspacing = '0' align = 'left' border = '1' >"
                 + "<tr>"
                   + "<td align ='center'>"
                        + "<tr>"
                          + "<td> Mobile No. </td>"
                          + " <td> Email ID </td>"
                        + " </tr>"
                         + "<tr>"
                           + "<td> " + strmobileno + " </td>"
                           + "<td> " + stremail + " </td>"
                            + " </tr>"
                        + " </td>"
                      + " </tr>"
                    + " </table>"
                    + " </html>";
                CoreApp.SendMail snd = new CoreApp.SendMail();
                //snd.From = stremail;
                snd.To = "khan89aamir@gmail.com";
                snd.Sub = strsubject;
                snd.Body = bodyHTML;
                snd.SendEMail();

                Session["update"] = Server.UrlEncode(System.DateTime.Now.ToString());

                //Contact@ztechvalves.in
                isSent = snd.IsMail;
                NavigationURL.Value = "Contactus.aspx";
                if (isSent)
                    ShowMessageBox("Email have been sent successfuly.");
                else
                    ShowMessageBox("Unable to Send Email",false);
            }
        }
        catch (Exception ex)
        {
            ShowMessageBox(ex.Message,false);
        }
    }
}