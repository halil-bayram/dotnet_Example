using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        OleDbConnection cncct = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("vtb_veritabanı.accdb"));
        string sorgu = "select * from diller";
        OleDbDataAdapter da = new OleDbDataAdapter(sorgu, cncct);
        DataTable dt = new DataTable();
        da.Fill(dt);
        List<string> diller = new List<string>();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            CheckBoxList1.Items.Add(dt.Rows[i][0].ToString());
        }
       

       
    }
}