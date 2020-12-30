using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnonay_Click(object sender, EventArgs e)
    {
        string ad, sifre;
        ad = txtkuladı.Text;
        sifre = txtkulsifre.Text;
        string vtYol = "Provider=Microsoft.ACE.OLEDB.12.0; Data Source=" + Server.MapPath("AppData//Bilgiler.accdb");
        OleDbConnection cnt_kategoriler = new OleDbConnection(vtYol);
        cnt_kategoriler.Open();
        OleDbCommand cmd_kategoriler = new OleDbCommand();
        cmd_kategoriler.Connection = cnt_kategoriler;
        cmd_kategoriler.CommandText = "select * from kullanici where adı='"+ad+"' and sifre='"+sifre+"'";
        OleDbDataReader dtrd_kategoriler = cmd_kategoriler.ExecuteReader();
        while (dtrd_kategoriler.Read())
        {
            Response.Redirect("Default.aspx?ıd="+dtrd_kategoriler[0].ToString()+"?ad="+dtrd_kategoriler[1].ToString()+"?soyad="+dtrd_kategoriler[2].ToString()+"?bakiye="+dtrd_kategoriler[5].ToString()+"");
   
        }
    }
}