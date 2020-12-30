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
        string kategoriTur = Request.QueryString["tur"];
        string vtYol = "Provider=Microsoft.ACE.OLEDB.12.0; Data Source="+Server.MapPath("App_Data\\veri.accdb");
        OleDbConnection cnt_kategoriler = new OleDbConnection(vtYol);
        cnt_kategoriler.Open();
        OleDbCommand cmd_kategoriler = new OleDbCommand();
        cmd_kategoriler.Connection = cnt_kategoriler;
        cmd_kategoriler.CommandText = "select * from Kategori";
        OleDbDataReader dtrd_kategoriler = cmd_kategoriler.ExecuteReader();
        
        while (dtrd_kategoriler.Read())
        {
            Label2.Text += "<a href=Default.aspx?tur="+dtrd_kategoriler[1]+"><li>"+dtrd_kategoriler["turu"]+"</li></a>";
        }
        //cnt_kategoriler.Close();
        dtrd_kategoriler.Close();
        if (kategoriTur!=null)
        {
           // cnt_kategoriler.Open();
            cmd_kategoriler.CommandText = "select * from sinema where turu='"+kategoriTur+"'";
            dtrd_kategoriler = cmd_kategoriler.ExecuteReader();
            if (dtrd_kategoriler.HasRows)
            {
                while (dtrd_kategoriler.Read())
                {
                    Label1.Text += "<div class=haber_cerceve>" +

    "<a href=#><div class=yazi_resim imgsrc=><img src='" + dtrd_kategoriler[5].ToString() + "' width=100px height=100px></div></a>" +

    "<div class=yazi_ozet><a href=#><span class=yazi_baslik>" + dtrd_kategoriler["filmin_adi"] + "</span></a><br />" +

     "" + dtrd_kategoriler["aciklama"].ToString().Substring(0, 250) + "  <a href=film_detay.aspx?ıd="+(dtrd_kategoriler[0])+" > devamı</a><br /><br />" +

     "<span class=yazi_alt><b> Gösterim Tarihi:" + dtrd_kategoriler[3].ToString().Substring(0, 10) + "</b> </span>" +

    "</div><div class=clear></div></div>";
                }
            }
            else
            {
                Label1.Text = "<h1>Film yoktur</h1>";
            }
        }
        else
        {
            dtrd_kategoriler.Close();
            cmd_kategoriler.CommandText = "select * from sinema where onay="+true+"  order by gosterim_tarihi desc";
            dtrd_kategoriler = cmd_kategoriler.ExecuteReader();
           // dtrd_kategoriler.Read();
            while (dtrd_kategoriler.Read())
            {
                Label3.Text += "<marquee direction=up><img height=150 width=150 src=" + dtrd_kategoriler[5] + "><br><br></marquee>";
                 Label1.Text += "<div class=haber_cerceve>" +

    "<a href=#><div class=yazi_resim imgsrc=><img src='" + dtrd_kategoriler[5].ToString() + "' width=100px height=100px></div></a>" +

    "<div class=yazi_ozet><a href=#><span class=yazi_baslik>" + dtrd_kategoriler["filmin_adi"] + "</span></a><br />" +

     "" + dtrd_kategoriler["aciklama"].ToString().Substring(0, 250) + "  <a href=film_detay.aspx?ıd=" + (dtrd_kategoriler[0]) + " > devamı</a><br /><br />" +

     "<span class=yazi_alt><b> Gösterim Tarihi:" + dtrd_kategoriler[3].ToString().Substring(0, 10) + "</b> </span>" +

    "</div><div class=clear></div></div>";
            }
        }
    }
}