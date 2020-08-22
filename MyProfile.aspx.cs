using System;
using System.Collections.Generic;
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
        }

      }
}