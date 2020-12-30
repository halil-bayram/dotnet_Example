using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void rdbresim1_CheckedChanged(object sender, EventArgs e)
    {
        Image5.ImageUrl = "~/resimler/1.jpg";
    }
    protected void rdbresim2_CheckedChanged(object sender, EventArgs e)
    {
        Image5.ImageUrl = "~/resimler/2.jpg";
    }
    protected void rdbresim3_CheckedChanged(object sender, EventArgs e)
    {
        Image5.ImageUrl = "~/resimler/3.jpeg";
    }
    protected void rdbresim4_CheckedChanged(object sender, EventArgs e)
    {
        Image5.ImageUrl = "~/resimler/4.jpg";
    }
}