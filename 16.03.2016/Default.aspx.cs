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

    }
    string tcno, sifre;

    protected void Button1_Click(object sender, EventArgs e)
    {   tcno = txttc.Text;
        sifre = txtsifre.Text;
        Session["tcno"] = tcno;
        OleDbConnection cmtvt = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("AppData/bigiler.accdb"));
        cmtvt.Open();
        OleDbCommand cmd = new OleDbCommand("select * from kullanıcı where tcno='"+tcno+"'and sifre='"+sifre+"' ", cmtvt);
        OleDbDataReader rdkullanıcı = cmd.ExecuteReader();
       
        if (rdkullanıcı.Read())
        {
            Session["ad"] = rdkullanıcı[1].ToString();
            Response.Redirect("secim.aspx");
        }
        else
        {
            
        }
    }
}