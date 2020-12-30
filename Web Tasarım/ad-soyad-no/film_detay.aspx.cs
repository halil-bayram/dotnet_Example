using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class film_detay2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string ıd = (Request.QueryString["ıd"]);
        string vtYol = "Provider=Microsoft.ACE.OLEDB.12.0; Data Source=" + Server.MapPath("App_Data\\veri.accdb");
        OleDbConnection cnt_kategoriler = new OleDbConnection(vtYol);
        cnt_kategoriler.Open();
        OleDbCommand cmd_kategoriler = new OleDbCommand();
        cmd_kategoriler.Connection = cnt_kategoriler;
        cmd_kategoriler.CommandText = "select * from sinema where id="+(ıd)+"";
        OleDbDataReader dtrd_kategoriler = cmd_kategoriler.ExecuteReader();
        while (dtrd_kategoriler.Read())
        {
            Label1.Text += "<div class=haber_cerceve style=width:600px >"+

"<a href=#><div class=yazi_resim><img src='" + dtrd_kategoriler[5].ToString() + "' width=100px height=100px></div></a>" +

"<div class=yazi_ozet style=width:550px;margin-top:35px ><a href=#><span class=yazi_baslik>" + dtrd_kategoriler["filmin_adi"] + "</span></a><br />" +

 "<span class=yazi_alt><b> Gösterim Tarihi:" + dtrd_kategoriler[3].ToString().Substring(0, 10) + "</b> </span><br />Türü:"+dtrd_kategoriler[2]+"<br><br>Açıklama:" + dtrd_kategoriler["aciklama"].ToString() + "</div><div class=clear></div></div>";
        }
    }
}