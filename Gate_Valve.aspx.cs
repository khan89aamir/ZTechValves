using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Gate_Valve : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            LoadData();
            LoadCarouselRepeater();
        }
    }
    private void LoadData()
    {
        clsMySQLCoreApp ObjDAL = new clsMySQLCoreApp();

        // dont write db_name.dbo.viewname, it doesn't work in my sq. 1 is hardcode for gate which is fixed

        DataTable dtProduct= ObjDAL.ExecuteSelectStatement("select * from View_ProductDetails where ProductID=1");
        if (dtProduct.Rows.Count>0)
        {
          string [] constFeature=   dtProduct.Rows[0]["ConstFeatures"].ToString().Split('\n');
            string[] sizeDetails = dtProduct.Rows[0]["SizeDetails"].ToString().Split('\n');

            Repeater1.DataSource = constFeature;
            Repeater1.DataBind();

            Repeater2.DataSource = sizeDetails;
            Repeater2.DataBind();
        }

    }
    private void LoadCarouselRepeater()
    {
        clsMySQLCoreApp ObjDAL = new clsMySQLCoreApp();

        // dont write db_name.dbo.viewname, it doesn't work in my sq. 1 is hardcode for gate which is fixed

        DataTable dtProduct = ObjDAL.ExecuteSelectStatement("select Path from tblImages where ProductID=1 AND flag=0");
        if (dtProduct.Rows.Count > 0)
        {
            CarouselRepeater.DataSource = dtProduct;
            CarouselRepeater.DataBind();

        }

    }
}