<%@ Page Language="C#" AutoEventWireup="true" CodeFile="secim.aspx.cs" Inherits="secim" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
<div class="header"></div>
<div class="temizle"></div>
<div class="tablolar">
<div class="katmangörevtalebi"><div class="görevtalebi">
    <asp:Label ID="Label1" runat="server" Text="GÖREV TALEBİ AKTİF OLAN SINAVLAR"></asp:Label>
    </div></div>
<div class="katmansınavadı"><div class="görevtalebi">
    <asp:Label ID="Label2" runat="server" Text="GÖREV ALMAK İSTENEN OTURUM TERCİHİ"></asp:Label>
    </div></div>
<div class="katmanoturumlar"><div class="görevtalebi">
    <asp:Label ID="Label3" runat="server" Text="YABANCI DİL BİLGİSİ"></asp:Label>
    </div></div>
<div class="katmanyabancıdil"><div class="görevtalebi">
    <asp:Label ID="Label4" runat="server" Text="GÖREV ALMAK İSTENEN BİNA TERCİHİ"></asp:Label>
    </div></div>
<div class="katmanokullar"><div class="görevtalebi">
    <asp:Label ID="Label5" runat="server" Text="GÖREV TALEP EDİLEN SINAVLAR"></asp:Label>
    </div></div>
</div>
</div>
    </form>
</body>
</html>
