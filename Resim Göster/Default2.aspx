<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="stiller.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
<div class="sol">
<div class="kücükresim">
    <asp:Image ID="Image1" runat="server" Height="100px" 
        ImageUrl="~/resimler/1.jpg" Width="100px" />
    </div>
<div class="radiobutton">
    <asp:RadioButton ID="rdbresim1" runat="server" AutoPostBack="True" 
        GroupName="rdb" oncheckedchanged="rdbresim1_CheckedChanged" Text="Resim1" />
    </div>
<div class="kücükresim">
    <asp:Image ID="Image2" runat="server" Height="100px" 
        ImageUrl="~/resimler/2.jpg" Width="100px" />
    </div>
<div class="radiobutton">
    <asp:RadioButton ID="rdbresim2" runat="server" AutoPostBack="True" 
        GroupName="rdb" oncheckedchanged="rdbresim2_CheckedChanged" Text="Resim2" />
    </div>
<div class="kücükresim">
    <asp:Image ID="Image3" runat="server" Height="100px" 
        ImageUrl="~/resimler/3.jpeg" Width="100px" />
    </div>
<div class="radiobutton">
    <asp:RadioButton ID="rdbresim3" runat="server" AutoPostBack="True" 
        GroupName="rdb" oncheckedchanged="rdbresim3_CheckedChanged" Text="Resim3" />
    </div>
<div class="kücükresim">
    <asp:Image ID="Image4" runat="server" Height="100px" 
        ImageUrl="~/resimler/4.jpg" Width="100px" />
    </div>
<div class="radiobutton" style="margin-bottom:25px;">
    <asp:RadioButton ID="rdbresim4" runat="server" AutoPostBack="True" 
        GroupName="rdb" oncheckedchanged="rdbresim4_CheckedChanged" Text="Resim4" />
    </div>
</div>
<div class="sag">
    <asp:Image ID="Image5" runat="server" Height="400px" Width="400px" />
        </div>
<div class="temizle"></div>
</div>
    </form>
</body>
</html>
