<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
<div class="logo"></div>
<div class="girisekrani">

</div>
<div class="girisekraniic">
<div class="elemanlar">
<div class="tcad"></div>
<div class="resimsifre"></div>
<div>
    <asp:TextBox ID="txttc" runat="server" CssClass="ad"></asp:TextBox>
    </div>
<div>
    <asp:TextBox ID="txtsifre" runat="server" CssClass="sifre" TextMode="Password"></asp:TextBox>
    </div>
<div>
    <asp:Button ID="Button1" runat="server" CssClass="button" BorderStyle="None" 
        onclick="Button1_Click" />
    </div>
</div>
</div>
</div>
    </form>
</body>
</html>
