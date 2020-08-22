using System;
using System.Activities;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UpdateProductImage : System.Web.UI.Page
{
    public string ImageName { get; set; }
    public string ProductName { get; set; }

    public int ProductID { get; set; }
    protected override void OnPreRender(EventArgs e)
    {
        ViewState["update"] = Session["update"];
    }
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack) // If page loads for first time
        {
            // Assign the Session["update"] with unique value
            Session["update"] = Server.UrlEncode(System.DateTime.Now.ToString());
            //=============== Page load code =========================

            Control control = Page.Master.FindControl("pnlProfile");
            control.Visible = true;


            //============== End of Page load code ===================
        }
        if (Session["ProductName"] != null)
        {
            ProductName = Session["ProductName"].ToString();
        }
        if (Session["ProductID"] != null)
        {
            ProductID = Convert.ToInt32(Session["ProductID"]);
        }
        if (!Page.IsPostBack)
        {
            LoadImages();
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        // If page not Refreshed
        if (Session["update"].ToString() == ViewState["update"].ToString())
        {
            //=============== On click event code ========================= 

            if (ctrUploadFile.HasFile)
            {
                HttpFileCollection _HttpFileCollection = Request.Files;
                for (int i = 0; i < _HttpFileCollection.Count; i++)
                {
                    HttpPostedFile _HttpPostedFile = _HttpFileCollection[i];
                    if (_HttpPostedFile.ContentLength > 0)
                    {
                        if (File.Exists(Server.MapPath("~/Uploads/" + System.IO.Path.GetFileName(_HttpPostedFile.FileName))))
                        {
                            try
                            {
                                File.Delete(Server.MapPath("~/Uploads/" + System.IO.Path.GetFileName(_HttpPostedFile.FileName)));
                            }
                            catch 
                            {

                             
                            }
                           
                        }
                        _HttpPostedFile.SaveAs(Server.MapPath("~/Uploads/" + System.IO.Path.GetFileName(_HttpPostedFile.FileName)));

                        string Path = "Uploads/" + _HttpPostedFile.FileName;
                        int flag = 0;


                        if (chkSetMainImage.Checked)
                        {
                            flag = 1;
                        }

                        SaveDataIntoDB(_HttpPostedFile.FileName, Path, flag);
                    }
                       

                }




                if (chkSetMainImage.Checked && _HttpFileCollection.Count > 1)
                {
                    chkwarning.Visible = true;
                    return;
                }
                else
                {
                    chkwarning.Visible = false;
                }


                if (_HttpFileCollection.Count > 1)
                {
                    ShowMessageBox("Images have been saved successfully.");
                }
                else
                {
                    ShowMessageBox("Image has been saved successfully.");

                }

                LoadImages();


            }

            //=============== End of On click event code ==================

            // After the event/ method, again update the session 

            Session["update"] = Server.UrlEncode(System.DateTime.Now.ToString());
        }
        else // If Page Refreshed
        {
            // Do nothing 
        }
       
    }
    
    private void ShowMessageBox(string msg)
    {

        lblMessage.InnerText=msg;
        Page.ClientScript.RegisterStartupScript(this.GetType(), "func", "$('#myModal').modal();", true);
    }
    private void SaveDataIntoDB(string strName, string path, int flag)
    {


        clsMySQLCoreApp ObjDAL = new clsMySQLCoreApp();
        ObjDAL.SetStoreProcedureData("ParmPID", MySql.Data.MySqlClient.MySqlDbType.Int32, ProductID);
        ObjDAL.SetStoreProcedureData("ParmPath ", MySql.Data.MySqlClient.MySqlDbType.VarChar, path);
        ObjDAL.SetStoreProcedureData("ParmFileName  ", MySql.Data.MySqlClient.MySqlDbType.VarChar, strName);
        ObjDAL.SetStoreProcedureData("ParmFlag", MySql.Data.MySqlClient.MySqlDbType.Int32, flag);
        ObjDAL.ExecuteStoreProcedure_DML("spr_InsertProductImages");
        

    }

    private void LoadImages()
    {
        clsMySQLCoreApp ObjDAL = new clsMySQLCoreApp();
        DataTable dtProductImages= ObjDAL.ExecuteSelectStatement("select * from ztech.tblImages where ProductID=" + ProductID);
        if (dtProductImages != null && dtProductImages.Rows.Count>0)
        {
            Repeater2.DataSource = dtProductImages;
            Repeater2.DataBind();
        }

    }

   

   
}