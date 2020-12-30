using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string kulıd = Request.QueryString["ıd"];
        string kulad = Request.QueryString["ad"];
        string kulsoyad = Request.QueryString["soyad"];
        string bakiye = Request.QueryString["bakiye"];
        string vtYol = "Provider=Microsoft.ACE.OLEDB.12.0; Data Source=" + Server.MapPath("AppData//Bilgiler.accdb");
        OleDbConnection cnt_kategoriler = new OleDbConnection(vtYol);
        cnt_kategoriler.Open();
        OleDbCommand cmd_kategoriler = new OleDbCommand();
        cmd_kategoriler.Connection = cnt_kategoriler;
        cmd_kategoriler.CommandText = "select * from kategori";
        OleDbDataReader dtrd_kategoriler = cmd_kategoriler.ExecuteReader();
        while (dtrd_kategoriler.Read())
        {
            Label1.Text += "<div class='urunkategori'><a href='#'>" + dtrd_kategoriler[1].ToString() + "</a></div>";
        }
        cnt_kategoriler.Close();
        if (kulıd!=null)
        {
            cnt_kategoriler.Open();
            OleDbCommand cmd_urunler = new OleDbCommand();
            cmd_urunler.Connection = cnt_kategoriler;
            cmd_urunler.CommandText = "select * from kullanici where ID='" + int.Parse(kulıd) + "'";
            OleDbDataReader dtrd_kullanıcı = cmd_urunler.ExecuteReader();
            Label3.Text = kulad+kulsoyad;
            Label4.Text = bakiye;

        }
        else
        {
            cnt_kategoriler.Open();
            OleDbCommand cmd_urunler = new OleDbCommand();
            cmd_urunler.Connection = cnt_kategoriler;
            cmd_urunler.CommandText = "select * from urunler";
            OleDbDataReader dtrd_urnler = cmd_urunler.ExecuteReader();
            while (dtrd_urnler.Read())
            {
                Label2.Text += "<div class='urunler'>" +
                "<div class='urunresmi'><img src=" + dtrd_urnler[6].ToString() + " width=200px; height=170px; margin-top:5px; border-radius:10px; ></div>" +
                "<div class='urunadı'>" + dtrd_urnler[2].ToString() + "</div>" +
                "<div class='urunekle'><a href='#'>" + dtrd_urnler[4].ToString() + " TL</a></div>" +
                "</div>";
                //< img src = img / erkekicon.png >
            }

        }
        
 //   width: 200px;
 //   height: 170px;
 //       background - color:#06C;
	//margin: auto;
 //       margin - top:5px;
 //       margin - bottom:5px;
 //       border - radius:10px;

    }
}