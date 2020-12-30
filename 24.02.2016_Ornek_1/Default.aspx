<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="LÜTFEN 3 ÖGRENCİ SECİNİZ."></asp:Label>
        <br />
        <asp:CheckBoxList ID="chkbxlist" runat="server" AutoPostBack="True" 
            onselectedindexchanged="chkbxlist_SelectedIndexChanged" RepeatColumns="3" 
            RepeatDirection="Horizontal" Width="380px">
            <asp:ListItem Value="erkek">Halil</asp:ListItem>
            <asp:ListItem Value="erkek">Burak</asp:ListItem>
            <asp:ListItem Value="kiz">Hacer</asp:ListItem>
            <asp:ListItem Value="kiz">Aleyna</asp:ListItem>
            <asp:ListItem Value="kiz">Sibel</asp:ListItem>
            <asp:ListItem Value="kiz">Veli</asp:ListItem>
        </asp:CheckBoxList>
        <asp:Label ID="lblgöster" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
