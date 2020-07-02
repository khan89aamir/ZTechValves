using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Manager : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"]!=null)
        {
          Control control =Page.Master.FindControl("pnlProfile");
            control.Visible = true;



        }
    }

    protected void btnGetDetails_Click(object sender, EventArgs e)
    {
        pnlDetails.Style.Add("display", "block");
        pnlUpdateProduct.Style.Add("display", "none");
    }

    protected void btnUpdateProduct_Click(object sender, EventArgs e)
    {
        pnlDetails.Style.Add("display", "none");
        pnlUpdateProduct.Style.Add("display", "block");
    }
}