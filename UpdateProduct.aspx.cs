using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UpdateProduct : System.Web.UI.Page
{
    protected string ProductName { get; set; }
    protected string ProductID { get; set; }
    protected string Description { get; set; }
    protected string ConstFeatures { get; set; }
    protected string SizeDetails { get; set; }
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ProductName"] != null)
        {
            ProductName = Session["ProductName"].ToString();
        }
        if (Session["ProductID"] != null)
        {
            ProductID = Session["ProductID"].ToString();
        }

        if (!Page.IsPostBack)
        {
            LoadProductDetails();
        }
                  
    }
  
    protected void btnCancel_Click(object sender, EventArgs e)
    {
       
    }

    private void UpdateProductData()
    {
       

         ProductName = Request["txtProductName"].ToString();
        string strProdDesc = Request["txtProdDesc"].ToString();
        string strConsFeature = Request["txtConsFeature"].ToString();
        string strSizeDetails = Request["txtSizeDetails"].ToString();
        string strProductName = "";
        int ProductID = 0;

        if (Session["ProductName"] != null)
        {
            strProductName = Session["ProductName"].ToString();
        }
        else
        {
            strProductName = "NA";
        }

        if (Session["ProductID"] != null)
        {
            ProductID = Convert.ToInt32(Session["ProductID"]);
        }
       
        clsMySQLCoreApp ObjDAL = new clsMySQLCoreApp();

        
          ObjDAL.SetStoreProcedureData("ProductName", MySql.Data.MySqlClient.MySqlDbType.VarChar, ProductName);
        ObjDAL.SetStoreProcedureData("PID", MySql.Data.MySqlClient.MySqlDbType.Int32, ProductID);
        ObjDAL.SetStoreProcedureData("Description", MySql.Data.MySqlClient.MySqlDbType.LongText, strProdDesc);
        ObjDAL.SetStoreProcedureData("ConstFeatures", MySql.Data.MySqlClient.MySqlDbType.LongText, strConsFeature);
        ObjDAL.SetStoreProcedureData("SizeDetails", MySql.Data.MySqlClient.MySqlDbType.LongText, strSizeDetails);
        bool result = ObjDAL.ExecuteStoreProcedure_DML("spr_InsUpdateProductDetails");
        if (!result)
        {
            Response.Write(ObjDAL.strErrorText);
        }
        else
        {
            Session["UpdateStatus"] = "1";
            Response.Redirect("Admin_Manager.aspx");
           
        }
    }
    private void LoadProductDetails()
    {

        clsMySQLCoreApp ObjDAL = new clsMySQLCoreApp();
       DataTable dtProductDetails= ObjDAL.ExecuteSelectStatement("select * from View_ProductDetails where ProductID="+ ProductID);
        if (dtProductDetails!=null && dtProductDetails.Rows.Count>0)
        {
            ProductID = dtProductDetails.Rows[0]["ProductID"].ToString();
            Description= dtProductDetails.Rows[0]["Description"].ToString();
            ConstFeatures= dtProductDetails.Rows[0]["ConstFeatures"].ToString();
            ProductName = dtProductDetails.Rows[0]["ProductName"].ToString();
            SizeDetails = dtProductDetails.Rows[0]["SizeDetails"].ToString();
        }
           

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        UpdateProductData();

    }
    
}