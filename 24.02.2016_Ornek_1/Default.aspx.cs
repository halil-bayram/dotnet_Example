using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void chkbxlist_SelectedIndexChanged(object sender, EventArgs e)
    {
        int sayac = 0;
        lblgöster.Text = null;
        for (int i = 0; i < chkbxlist.Items.Count; i++)
        {
            if (chkbxlist.Items[i].Selected&& chkbxlist.Items[i].Value=="erkek")
            {
                lblgöster.Text += "<font color='blue'><b>"+chkbxlist.Items[i].Text+"</font></b><br/>";
                sayac++;
            }
            else if (chkbxlist.Items[i].Selected&& chkbxlist.Items[i].Value=="kiz")
            {
                lblgöster.Text += "<font color='Red'><b>" + chkbxlist.Items[i].Text + "</font></b><br/>";
                sayac++;
            }
        }
        if (sayac==3)
        {
            chkbxlist.Enabled = false;
        }
    }
}