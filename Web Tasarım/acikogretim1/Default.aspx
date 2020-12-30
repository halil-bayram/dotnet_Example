<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="stil.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
<div class="girisekrani">

</div>
<div class="girisekraniic"><div class="kimlikyazı">Tc kimlik No:</div>
<div class="kimlik">
    <asp:TextBox ID="TextBox1" runat="server" MaxLength="11"></asp:TextBox>
    </div>
    <div class="sifreyazı">Şifre: </div>
    <div class="sifre">
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" MaxLength="10"></asp:TextBox>
    </div>
    <div class="tuş">
        <asp:Button ID="Button1" runat="server" Text="Giriş" onclick="Button1_Click"  />
    </div>
    <div class="hata">
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
</div>
</div>
   
    </form>
   
</body>
</html>
