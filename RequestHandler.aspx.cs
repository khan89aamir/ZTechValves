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
        //This is the Request hadnler page, it handles ther quest and do the given task
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
                ChnagePass(newpass,oldPass);
            }
            else if (action == "changeEmail")
            {

                string newmail = Request.Form["ctl00$MainContent$txtemail"].ToString();
                ChagngeEmail(newmail);
            }
            else if (action == "logout")
            {
                Session["User"] = null;
                Session.Abandon();
               
                // replace the way that user should not go back.
               string script= "window.location.replace('Admin_Login.aspx')";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "func2", script, true);



            }
            else
            {
                Response.Write("Query string : " + action);
                Response.Write("<br>Can not process your request");
            }

        }
    }

    private void DeleteImage(string imgID, string ImageName)
    {
        clsMySQLCoreApp ObjDAL = new clsMySQLCoreApp();
        ObjDAL.ExecuteNonQuery("delete from ztech.tblImages where ImageID=" + imgID);

        if (File.Exists(Server.MapPath("~/Uploads/" + ImageName)))
        {
            File.Delete(Server.MapPath("~/Uploads/" + ImageName));
        }

        NavigationURL.Value = "UpdateProductImage.aspx";

        ShowMessageBox("Image has been deleted successfully.");
        


    }
    private void ShowMessageBox(string msg,bool IsSuccess=true)
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
        clsMySQLCoreApp ObjDAL = new clsMySQLCoreApp();
        
        DataTable dataTable = ObjDAL.ExecuteSelectStatement("SELECT * FROM ztech.tblUserDetails;");
        if (dataTable.Rows.Count > 0)
        {
            string strOldPass = dataTable.Rows[0]["Password"].ToString();
            if (oldPass== strOldPass)
            {
                ObjDAL.ExecuteNonQuery("update ztech.tblUserDetails set Password='" + Newpass + "'");
                NavigationURL.Value = "MyProfile.aspx";
                ShowMessageBox("Password has been update successfully.");
               
            }
            else
            {
                NavigationURL.Value = "MyProfile.aspx";
                ShowMessageBox("Old password doesn't match with existing old password.",false);
            }
        
        
        }

    }
    private void ChagngeEmail(string mail)
    {
        clsMySQLCoreApp ObjDAL = new clsMySQLCoreApp();
        ObjDAL.ExecuteNonQuery("update ztech.tblUserDetails set EmailID='" + mail + "'");

        ShowMessageBox("Email has been update successfully.");
        NavigationURL.Value = "MyProfile.aspx";




    }
  
   

   

  
}