using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class RequestHandler : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //This is the Request hadnler page, it handles the request and do the given task
        //and navigate back to the page.

        if (!IsPostBack)
        {
            string action = Request.QueryString["Action"];
            if (action == "deleteimg")
            {
                string ID = Request["ImageID"].ToString();
                string ImageName = Request["ImageName"].ToString();
                DeleteImage(ID, ImageName);
            }
            else if (action == "changepass")
            {
                string newpass = Request.Form["txtNewPassword"].ToString();
                string oldPass = Request.Form["txtOldPassword"].ToString();
                ChnagePass(newpass, oldPass);
            }
            else if (action == "changeEmail")
            {
                string newmail = Request.Form["txtemail"].ToString();
                ChagngeEmail(newmail);
            }
            else if (action == "logout")
            {
                Session["User"] = null;
                Session.Abandon();

                // replace the way that user should not go back.
                string script = "window.location.replace('Admin_Login.aspx')";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "func2", script, true);
            }
            else if (action == "forgotpass")
            {
                string EmailID = Request.Form["txtMailID"].ToString();
                ForgotPass(EmailID);
            }
            else
            {
                Response.Write("Query string : " + action);
                Response.Write("<br>Can not process your request");
            }
        }
    }

    //[System.Web.Services.WebMethod]
    //private string ForgotPass(string mail)
    private void ForgotPass(string mail)
    {
        string result = "";
        try
        {
            clsMySQLCoreApp ObjDAL = new clsMySQLCoreApp();

            string strpass = string.Empty;

            DataTable dt = ObjDAL.ExecuteSelectStatement("SELECT Password FROM ztech.tblUserDetails WHERE EmailID='" + mail + "';");
            if (dt != null && dt.Rows.Count > 0)
            {
                strpass = dt.Rows[0]["Password"].ToString();
                bool b = SendEmail(mail, strpass);
                NavigationURL.Value = "Admin_Login.aspx";
                if (b)
                {
                    ShowMessageBox("Password has been sent to your mail address.");
                    //result = "Password has been sent to your mail address.";
                }
                else
                {
                    ShowMessageBox("Unable to Send Password to your mail address.", false);
                    //result = "Unable to Send Password to your mail address.";
                }
            }
            else
            {
                NavigationURL.Value = "Admin_Login.aspx";
                ShowMessageBox("Unable to Send Password to your mail address.", false);
                //result = "Unable to Send Password to your mail address.";
            }
            //return result;
        }
        catch(Exception ex)
        {
            NavigationURL.Value = "Admin_Login.aspx";
            ShowMessageBox(ex.ToString(), false);
        }
    }

    private bool SendEmail(string mail, string strpass)
    {
        string bodyHTML = string.Empty;
        bool isSent = false;
        try
        {
            bodyHTML = "<p>Dear ZTECH VALVE,</p>";
            bodyHTML += "<p>We've received a request to reset your password.</p>";
            bodyHTML += "<p>PFB Reset Password for " + mail + ".</p>";
            bodyHTML += @" <html><table width = '300' cellpadding = '0' cellspacing = '0' align = 'left' border = '1' >"
             + "<tr>"
             + "<td align ='center'>"
             + "<tr>"
             + " <td> Email ID </td>"
             + "<td> Password </td>"
             + " </tr>"
             + "<tr>"
             + "<td> " + mail + " </td>"
             + "<td> " + strpass + " </td>"
             + " </tr>"
             + " </td>"
             + " </tr>"
             + " </table>"
             + " </html>";
            CoreApp.SendMail snd = new CoreApp.SendMail();
            //snd.From = stremail;
            snd.Sub = "Forgot Password";
            snd.Body = bodyHTML;
            snd.SendEMail();

            //Contact@ztechvalves.in
            isSent = snd.IsMail;
            return isSent;
        }
        catch (Exception ex)
        {
            ShowMessageBox(ex.ToString(),false);
            return isSent;
        }
    }

    private void DeleteImage(string imgID, string ImageName)
    {
        try
        {
            clsMySQLCoreApp ObjDAL = new clsMySQLCoreApp();
            ObjDAL.ExecuteNonQuery("DELETE FROM ztech.tblImages WHERE ImageID=" + imgID);

            if (File.Exists(Server.MapPath("~/Uploads/" + ImageName)))
            {
                File.Delete(Server.MapPath("~/Uploads/" + ImageName));
            }
            NavigationURL.Value = "UpdateProductImage.aspx";

            ShowMessageBox("Image has been deleted successfully.");
        }
        catch (Exception ex)
        {
            NavigationURL.Value = "UpdateProductImage.aspx";
            ShowMessageBox(ex.Message, false);
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
    }

    private void ChnagePass(string Newpass, string oldPass)
    {
        try
        {
            clsMySQLCoreApp ObjDAL = new clsMySQLCoreApp();

            DataTable dataTable = ObjDAL.ExecuteSelectStatement("SELECT ID,CAST(AES_DECRYPT(Password, 'UserNameEmailID') AS CHAR(255)) Pass FROM ztech.tblUserDetails;");
            if (dataTable != null && dataTable.Rows.Count > 0)
            {
                string strOldPass = dataTable.Rows[0]["Pass"].ToString();
                int pID = Convert.ToInt32(dataTable.Rows[0]["ID"]);
                if (oldPass == strOldPass)
                {
                    ObjDAL.ExecuteNonQuery("UPDATE ztech.tblUserDetails SET Password=AES_ENCRYPT('" + Newpass + "', 'UserNameEmailID'),UpdatedOn=NOW(),UpdatedBy=" + pID + " WHERE 1=1;");
                    NavigationURL.Value = "MyProfile.aspx";
                    ShowMessageBox("Password has been update successfully.");
                }
                else
                {
                    NavigationURL.Value = "MyProfile.aspx";
                    ShowMessageBox("Old password doesn't match with existing old password.", false);
                }
            }
        }
        catch (Exception ex)
        {
            NavigationURL.Value = "MyProfile.aspx";
            ShowMessageBox(ex.Message, false);
        }
    }

    private void ChagngeEmail(string mail)
    {
        int pID = 0;
        if (Session["User"] != null)
        {
            pID = Convert.ToInt32(Session["User"]);

            clsMySQLCoreApp ObjDAL = new clsMySQLCoreApp();
            ObjDAL.ExecuteNonQuery("UPDATE ztech.tblUserDetails SET EmailID='" + mail + "',UpdatedOn=NOW(),UpdatedBy=" + pID + " WHERE 1=1;");

            ShowMessageBox("Email has been update successfully.");
        }
        else
        {
            ShowMessageBox("Unable to Update Email Address.");
        }
        NavigationURL.Value = "MyProfile.aspx";
    }
}