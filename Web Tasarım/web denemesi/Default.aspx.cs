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
        string vtYol = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("AppData/Veritabanı1.accdb");
        OleDbConnection cnt_kategoriler = new OleDbConnection(vtYol);
        cnt_kategoriler.Open();
        OleDbCommand cmd_urungöster = new OleDbCommand();
        cmd_urungöster.CommandText = "select * from urunler";
        cmd_urungöster.Connection = cnt_kategoriler;
        OleDbDataReader dtrd_urungöster = cmd_urungöster.ExecuteReader();

        while (dtrd_urungöster.Read())
        {
            Label1.Text += "<div class='sol'>"+
    	"<div class='urun'>"+
        	"<div class='urunimg'><img src="+dtrd_urungöster[4].ToString()+"></div>"+
            "<div class='urunacıklama'>"+dtrd_urungöster[2].ToString()+"</div>"+
            "<div class='sepeteekle'>"+dtrd_urungöster[3].ToString()+" TL"+"</div>"+
       " </div>"+
   " </div>";
        }
        cnt_kategoriler.Close();
        cnt_kategoriler.Open();
        OleDbCommand cmd_kategorigöster = new OleDbCommand();
        cmd_kategorigöster.CommandText = "select * from kategoriler";
        cmd_kategorigöster.Connection = cnt_kategoriler;
        OleDbDataReader dtrd_kategorigöster = cmd_kategorigöster.ExecuteReader();
        while (dtrd_kategorigöster.Read())
        {
            Label2.Text += "<div class='sag'>"+
    	"<div class='katagori'>"+dtrd_kategorigöster[1].ToString()+"</div>"+
    "</div>";
        }
    }
}