<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" aria-atomic="False">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
	<div class="header">
    	<div class="kuladı">
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </div>
        <div class="temizle"></div>
        <div class="kulsepet">
            <asp:Label ID="Label4" runat="server"></asp:Label>
        </div>
    </div>
    <div class="sayfalar"><a href="#">ANASAYFA</a></div>
    <div class="sayfalar"><a href="#">ÜRÜNLER</a></div>
    <div class="sayfalar"><a href="#">GALERİ</a></div>
    <div class="sayfalar"><a href="#">KULLANICILAR</a></div>
    <div class="sayfalar"><a href="#">İLETİŞİM</a></div>
    <div class="sag">
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
    <div class="sol">
        <asp:Label ID="Label2" runat="server"></asp:Label>
    </div>
    <div class="temizle"></div>
    <div class="fueter"></div>
</div>
    </form>
</body>
</html>
