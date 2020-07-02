using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Login : System.Web.UI.Page
{
    clsCoreApp ObjCon = new clsCoreApp();
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string userName = val_UserName.Value;
        string password= val_Password.Value;
      DataTable dtuser=   ObjCon.ExecuteSelectStatement("select * from tblUserDetails where UserName='" + userName + "' AND Password='" + password + "'");
        if (dtuser.Rows.Count>0)
        {
            Session["User"] = userName;
            Response.Redirect("/Admin_Manager.aspx");
           

        }
        else
        {
            Control control = Page.Master.FindControl("pnlProfile");
            control.Visible = false;
            Response.Write("<script>alert('Incorrect User Name or passworde');</script>");



        }

    }
}