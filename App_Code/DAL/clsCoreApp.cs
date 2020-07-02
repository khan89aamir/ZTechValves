using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

/// <summary>
/// Summary description for clsCoreApp
/// </summary>
public class clsCoreApp
{
    public clsCoreApp()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public DataTable ExecuteSelectStatement(string query)
    {
        DataTable dtTable = new DataTable();

        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (MySqlConnection con = new MySqlConnection(constr))
        {
            using (MySqlCommand cmd = new MySqlCommand(query))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                   
                        sda.Fill(dtTable);
                       
                    
                }
            }
        }
        return dtTable;
    }
}