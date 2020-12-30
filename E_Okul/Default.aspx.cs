using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int sınav1, sınav2, temrin, sözlü,dönemnotu;
        string vtYol = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("AppData\\Bilgiler.accdb");
        OleDbConnection cnt_kategoriler = new OleDbConnection(vtYol);
        cnt_kategoriler.Open();
        OleDbCommand cmd_kategoriler = new OleDbCommand();
        cmd_kategoriler.Connection = cnt_kategoriler;
        cmd_kategoriler.CommandText = "select * from ogrenciler";
        OleDbDataReader dtrd_kategoriler = cmd_kategoriler.ExecuteReader();
        while (dtrd_kategoriler.Read())
        {

            sınav1 = Convert.ToInt16(dtrd_kategoriler[4].ToString());
            sınav2 = Convert.ToInt16(dtrd_kategoriler[5].ToString());
            temrin = Convert.ToInt16(dtrd_kategoriler[6].ToString());
            sözlü = Convert.ToInt16(dtrd_kategoriler[7].ToString());
            dönemnotu = (sınav1 + sınav2 + temrin + sözlü)/4;

        }
        Label1.Text += "<div class='ogrencibilgiler'></div>";

    }
}