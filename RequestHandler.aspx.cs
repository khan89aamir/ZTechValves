using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RequestHandler : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {// This is the Request hadnler page, it handles ther quest and do the given task
        //and navigate back to the page.

        if (!IsPostBack)
        {
            string action = Request.QueryString["Action"];
          


            if (action == "deleteimg")
            {
                string ID = Request["ImageID"].ToString();
                string ImageName= Request["ImageName"].ToString();
                DeleteImage(ID, ImageName);

            }
            else if (action == "changepass")
            {

                string newpass = Request.Form["txtNewPassword"].ToString();
                ChnagePass(newpass);
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
                Response.Redirect("Admin_Login.aspx");
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
            File.Delete(Server.MapPath("~/Uploads/"+ImageName));
        }
        Response.Redirect("UpdateProductImage.aspx");


    }
    private void ShowMessageBox(string msg)
    {

        lblMessage.InnerText = msg;
        Page.ClientScript.RegisterStartupScript(this.GetType(), "func", "$('#myModal').modal();", true);
    }
    private void ChnagePass(string pass)
    {
        clsMySQLCoreApp ObjDAL = new clsMySQLCoreApp();
        ObjDAL.ExecuteNonQuery("update ztech.tblUserDetails set Password='"+pass+"'");

        ShowMessageBox("Password has been update.");
        Session["Page"] = "MyProfile.aspx";

    }
    private void ChagngeEmail(string mail)
    {
        clsMySQLCoreApp ObjDAL = new clsMySQLCoreApp();
        ObjDAL.ExecuteNonQuery("update ztech.tblUserDetails set EmailID='" + mail + "'");

        ShowMessageBox("Email has been update.");
        Session["Page"] = "MyProfile.aspx";



    }
  
   

    protected void DoPageNavigation_ServerClick(object sender, EventArgs e)
    {
        if ( Session["Page"]!=null)
        {
            Response.Redirect(Session["Page"].ToString());
        }
        else
        {
            Response.Redirect("Home.aspx");
        }
      
    }
}