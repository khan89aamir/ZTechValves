using System;
using System.Collections.Generic;
using System.Data;
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
            if (!Page.IsPostBack)
            {
                LoadProdcuts();
            }

            if (Session["UpdateStatus"]!=null && Session["UpdateStatus"].ToString() == "1")
            {
                ShowMessageBox("Product Details Updated Successfully.");
                Session["UpdateStatus"] = "0";
            }
        }
    }
    private void ShowMessageBox(string msg)
    {
        lblMessage.InnerText = msg;

        Page.ClientScript.RegisterStartupScript(this.GetType(), "func", "$('#myModal').modal();", true);
    }
    protected void btnGetDetails_Click(object sender, EventArgs e)
    {
        //pnlDetails.Style.Add("display", "block");
      //  pnlUpdateProduct.Style.Add("display", "none");
    }
    private void LoadProdcuts()
    {
        clsMySQLCoreApp ObjDAL = new clsMySQLCoreApp();
       DataTable dtProducts= ObjDAL.ExecuteSelectStatement("SELECT * FROM ztech.tblProductMaster");
        if (dtProducts!=null && dtProducts.Rows.Count>0)
        {
            cmbProduct.DataSource = dtProducts;
            cmbProduct.DataBind();

            cmbProduct.DataTextField = "ProductName";
            cmbProduct.DataValueField = "ProductID";
            cmbProduct.DataBind();


            //Add a default item at first position.
            cmbProduct.Items.Insert(0, new ListItem("Please select", ""));

            //Set the default item as selected.
            cmbProduct.Items[0].Selected = true;

            //Disable the default item.
            cmbProduct.Items[0].Attributes["disabled"] = "disabled";


        }


           

    }
    protected void btnUpdateProduct_Click(object sender, EventArgs e)
    {
        //pnlDetails.Style.Add("display", "none");


        Session["ProductID"] = cmbProduct.SelectedValue;
        if (cmbProduct.SelectedItem!=null)
        {
         
            Session["ProductName"] = cmbProduct.SelectedItem.ToString();
            Response.Redirect("UpdateProduct.aspx");
        }
        else
        {

        }
       


       

       // pnlUpdateProduct.Style.Add("display", "block");
    }
    protected void btnUpdateImage_Click(object sender, EventArgs e)
    {
       
        if (cmbProduct.SelectedItem != null)
        {
            Session["ProductName"] = cmbProduct.SelectedItem.ToString();
            Session["ProductID"] = cmbProduct.SelectedValue;
            Response.Redirect("UpdateProductImage.aspx");
        }
        else
        {

        }


        

        // pnlUpdateProduct.Style.Add("display", "block");
    }
    
}