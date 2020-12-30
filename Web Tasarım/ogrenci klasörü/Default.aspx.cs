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

        string sınıfadı = Request.QueryString["sınıfadı"];
        string vtYol = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("App_Data/siniflisteleri.accdb");
        OleDbConnection cnt_kategoriler = new OleDbConnection(vtYol);
        cnt_kategoriler.Open();

        if (sınıfadı != null)
        {
            OleDbCommand cmd_sınıfgoster = new OleDbCommand();
            cmd_sınıfgoster.CommandText = "select * from sinifListeleri where sinifAd='" + sınıfadı + "'";
            cmd_sınıfgoster.Connection = cnt_kategoriler;
            OleDbDataReader dtrd_sınıfgöster = cmd_sınıfgoster.ExecuteReader();
            lbl_oturmaPlani.Text += "<div class='baslik'>" + sınıfadı + " SINIFI OTURMA PLANI</div>";
            while (dtrd_sınıfgöster.Read())
            {

                if (dtrd_sınıfgöster[5].ToString() == "Erkek")
                {
                    lbl_oturmaPlani.Text += "<div class='ogrenciDetay'><div class='ogrenciResim'><img src=img/erkekicon.png></div>";
                }
                else
                {
                    lbl_oturmaPlani.Text += "<div class='ogrenciDetay'><div class='ogrenciResim'><img src=img/bayanicon.png></div>";
                }

                lbl_oturmaPlani.Text += "<div class='ogrenciBilgi'>" + dtrd_sınıfgöster[2] + "</div>";
                lbl_oturmaPlani.Text += "<div class='ogrenciBilgi' style='margin:0px;'>" + dtrd_sınıfgöster[3] + "</br>" + dtrd_sınıfgöster[4] + "</div>";
                lbl_oturmaPlani.Text += " </div>";
            }
        }
        OleDbCommand cmd_kategoriler = new OleDbCommand();
        cmd_kategoriler.Connection = cnt_kategoriler;
        cmd_kategoriler.CommandText = "select * from okulTurleri";
        OleDbDataReader dtrd_kategoriler = cmd_kategoriler.ExecuteReader();
        while (dtrd_kategoriler.Read())
        {
            lbl_okulTurleri.Text += "<section class='accordion'> <a href=#" + dtrd_kategoriler[0] + ">" + dtrd_kategoriler[1].ToString() + "</a>";
            lbl_okulTurleri.Text += "<article id=" + dtrd_kategoriler[0] + ">";
            OleDbCommand cmd_sınıflar = new OleDbCommand();
            cmd_sınıflar.CommandText = "select * from siniflar where okulTur='" + dtrd_kategoriler[2] + "'";
            cmd_sınıflar.Connection = cnt_kategoriler;
            OleDbDataReader dtrd_sınıflar = cmd_sınıflar.ExecuteReader();

            while (dtrd_sınıflar.Read())
            {
                lbl_okulTurleri.Text += "<h3><a href=Default.aspx?sınıfadı=" + dtrd_sınıflar[1] + ">" + dtrd_sınıflar[1].ToString() + "</a></h3>";
            }
            lbl_okulTurleri.Text += "</article>";
            lbl_okulTurleri.Text += "</section>";



        }

    }
}