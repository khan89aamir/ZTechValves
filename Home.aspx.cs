using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            LoadCarouselRepeater();
        }
    }
    public string ProductName { get; set; }
    private void LoadCarouselRepeater()
    {
        clsMySQLCoreApp ObjDAL = new clsMySQLCoreApp();

        // dont write db_name.dbo.viewname,  hardcode for gate which is fixed

        DataTable dtProduct = ObjDAL.ExecuteSelectStatement("select * from View_MainSliderDetails");
        if (dtProduct.Rows.Count > 0)
        {
            CarouselRepeater.DataSource = dtProduct;
            CarouselRepeater.DataBind();

        }

    }
}