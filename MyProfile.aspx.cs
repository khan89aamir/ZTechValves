using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] != null)
        {
            Control control = Page.Master.FindControl("pnlProfile");
            control.Visible = true;
            LoadEmail();
        }
    }
    private void LoadEmail()
    {
        clsMySQLCoreApp ObjDAL = new clsMySQLCoreApp();
        DataTable dataTable = ObjDAL.ExecuteSelectStatement("SELECT EmailID FROM ztech.tblUserDetails;");
        if (dataTable!=null && dataTable.Rows.Count > 0)
        {
            txtemail.Value = dataTable.Rows[0]["EmailID"].ToString();
        }
    }
}