using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ShowMessageBox("dfsssdf");
    }
    private void ShowMessageBox(string msg)
    {

      
        Page.ClientScript.RegisterStartupScript(this.GetType(), "func", "$('#loadingBox').modal();", true);
    }
}