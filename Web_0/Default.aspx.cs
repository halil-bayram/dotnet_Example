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
        int sinav1, sinav2, temrin, sözlü, dönemnotu, durum;
        string vtYol = "Provider=Microsoft.ACE.OLEDB.12.0; Data Source=" + Server.MapPath("App_Data\\Bilgiler.accdb");
        OleDbConnection cnt_kategoriler = new OleDbConnection(vtYol);
        cnt_kategoriler.Open();
        OleDbCommand cmd_kategoriler = new OleDbCommand();
        cmd_kategoriler.Connection = cnt_kategoriler;
        cmd_kategoriler.CommandText = "select * from kayıtlar";
        OleDbDataReader dtrd_kategoriler = cmd_kategoriler.ExecuteReader();
        while (dtrd_kategoriler.Read())
        {
           sinav1=Convert.ToInt16( dtrd_kategoriler[2].ToString());
           sinav2=Convert.ToInt16( dtrd_kategoriler[3].ToString());
           temrin=Convert.ToInt16( dtrd_kategoriler[4].ToString());
           sözlü=Convert.ToInt16( dtrd_kategoriler[5].ToString());
           dönemnotu = (sinav1+sinav2+temrin+sözlü)/4;
Label1.Text += "<div class='ogrencibilgiler'>"+
        "<div class='deger'>"+2+"</div>"+
        "<div class='deger'>" + dtrd_kategoriler[1].ToString()+"</div>" +
           "<div class='deger'>" + dtrd_kategoriler[2].ToString() + "</div>" +
           "<div class='deger'>" + dtrd_kategoriler[3].ToString() + "</div>" +
           "<div class='deger'>" + dtrd_kategoriler[4].ToString() + "</div>" +
           "<div class='deger'>" + dtrd_kategoriler[5].ToString() + "</div>" +
           "<div class='deger'>" + dtrd_kategoriler[2].ToString() + "</div>" +
           "<div class='deger'>" + dtrd_kategoriler[2].ToString() + "</div>" +
           "<div class='deger'>" + dtrd_kategoriler[2].ToString() + "</div>" +
           "<div class='deger'>" + dtrd_kategoriler[2].ToString() + "</div>" +
           "</div>";
        }
        
    }
}