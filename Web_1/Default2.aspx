<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet2.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
	<div class="askıbir"></div>
    <div class="askıiki"></div>
	<div class="bilgiler">
    	<div class="kuladı">
            <asp:TextBox ID="txtkuladı" runat="server" CssClass="kuladı" BorderStyle="None" AutoCompleteType="DisplayName">Kullanıcı Adı</asp:TextBox>
        </div>
        <div class="kulsifre">
            <asp:TextBox ID="txtkulsifre" runat="server" BorderStyle="None" CssClass="kulsifre" TabIndex="1">Şifre</asp:TextBox>
        </div>
        <div class="onay">
            <asp:Button ID="btnonay" runat="server" BorderStyle="None" CssClass="onay" TabIndex="2" OnClick="btnonay_Click" />
            GİRİŞ</div>
    </div>
    
</div>
    </form>
</body>
</html>
