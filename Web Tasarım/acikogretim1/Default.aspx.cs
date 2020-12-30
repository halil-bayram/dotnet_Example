using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;


public partial class _Default : System.Web.UI.Page
{


    DataTable kullanıcılar = new DataTable();
    List<string> tckmlk = new List<string>();
    List<string> şifreler = new List<string>();
    protected void Page_Load(object sender, EventArgs e)
    {
        OleDbConnection cncct = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("vtb_veritabanı.accdb"));
        string sorgu = "select * from kullanıcılar";
        OleDbDataAdapter da = new OleDbDataAdapter(sorgu, cncct);
        da.Fill(kullanıcılar);
        for (int i = 0; i < kullanıcılar.Rows.Count; i++)
        {
            tckmlk.Add(kullanıcılar.Rows[i][0].ToString());
            şifreler.Add(kullanıcılar.Rows[i][1].ToString());
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Length != 0 && TextBox2.Text.Length != 0)
        {
            if (tckmlk.IndexOf(TextBox1.Text) != -1)
            {
                int ind = tckmlk.IndexOf(TextBox1.Text);
                string şifreveri = şifreler[ind].ToString() ;
                if (TextBox2.Text==şifreveri)
                {
                    Response.Redirect("Default2.aspx");
                }
                else
                {
                    Label1.Text = "kullanıcı adı veya şifre hatalı";
                }
            }
            else
            {
                Label1.Text = "kullanıcı adı veya şifre hatalı";
            }
        }
        else if (TextBox1.Text.Length == 0 || TextBox2.Text.Length == 0)
        {
            Label1.Text = "boş alan bulunamaz !!";
        }
    }
}