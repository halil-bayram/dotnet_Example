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
        string harf=Request.QueryString["harf"];
        string alfabe = "ABCÇDEFGHIİJKLMNOÖPRSŞTUÜVYZ";
        lblsözler.Text = "<table align='center' border='1px solid #ccc'><tr>";
        for (int i = 0; i < alfabe.Length; i++)
        {
            lblsözler.Text += "<td width='30px' align='center'><a href='default.aspx?harf=" + alfabe[i].ToString() + "'>" + alfabe[i].ToString() + "</a></td>";
        }
        lblsözler.Text += "</tr>";
        OleDbConnection cntvt = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source="+Server.MapPath("App_Data/vt_atasozleri.accdb"));
        cntvt.Open();
        OleDbCommand cmd = new OleDbCommand("select * from atasözleri where atasozu like '" + harf + "%'", cntvt);
        OleDbDataReader rdatasozleri = cmd.ExecuteReader();
        int satırsayac = 0;
        if (harf!=null)
        {
            lblsözler.Text += "<tr><td bgcolor='#ccc' color='#fff' colspan='" + alfabe.Length + "' align='center'>" + harf + "İLE BAŞLAYAN ATASÖZLERİ</td></tr>";

        }
    }
}