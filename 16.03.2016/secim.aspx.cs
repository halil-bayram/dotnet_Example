using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class secim : System.Web.UI.Page
{
   int sayac = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        OleDbConnection cmtvt = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("AppData/bigiler.accdb"));
        cmtvt.Open();
        OleDbCommand cmd = new OleDbCommand("select * from Oturumlar", cmtvt);
        OleDbDataReader rdkullanıcı = cmd.ExecuteReader();
       
    }
}