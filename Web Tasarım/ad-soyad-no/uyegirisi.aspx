<%@ Page Language="C#" AutoEventWireup="true" CodeFile="uyegirisi.aspx.cs" Inherits="uyegirisi" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        { 
            
            width: 400px;
            text-align: left;
        }
        .style2
        {
            width: 219px;
        }
        .style3
        {
            width: 372px;
            text-align: left;
        }
    </style>
</head>
<body bgcolor="#CCCCCC">

    <form id="form1" runat="server">

<div id="container">
<div id="header">
<div class="header_yazi">BEYAZ PERDE </div>
</div><!-- header -->
<div class="menu_bar">
<div class="menu">
	<ul>
	   <a href="default.aspx"><li>Anasayfa</li></a>
        <a href="#"><li>Filmler</li></a>
         <a href="#"><li>Seanslar</li></a>
          <a href="#"><li>Haberler</li></a>
          <a href="film_ekle.aspx"><li>Film Ekle</li></a>
          <li><asp:LinkButton ID="LinkButton1" runat="server" 
                PostBackUrl="~/uyegirisi.aspx">Üye Girişi</asp:LinkButton></li>
       <li><asp:LinkButton ID="LinkButton2" runat="server" Visible="False" 
               PostBackUrl="~/yonetim.aspx">Yönetim</asp:LinkButton></li>
      
       </div><!-- menu -->
</div><!-- menu_bar -->
<div class="govde">

	<div class="govde_sol">
    
    

        
  <table class="style1" align="center">
    <tr>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            Kullanıcı Adı</td>
        <td class="style3">
            <asp:TextBox ID="TextBox1" runat="server" Width="154px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            Şifre</td>
        <td class="style3">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="152px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            Güvenlik Kodu</td>
        <td class="style3">
            <asp:TextBox ID="TextBox3" runat="server" Width="146px"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="GİRİŞ" />
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            <asp:LinkButton ID="LinkButton8" runat="server" 
                PostBackUrl="~/sifremi_unuttum.aspx">Şifremi Unuttum</asp:LinkButton>
        </td>
    </tr>
</table>
    
       
    
    

        
  
    
    </div><!-- govde_sol -->
    <div class="govde_sag">
    
       
 

    
    
    
    
    
    
   
    
    
    </div><!-- govde_sag -->

	<div class="clear"></div>




</div><!-- govde -->


</div><!-- container -->

<div class="footer">
	<div class="footer_menu">
    	<a href="#"><li>Hakkımda</li></a>
        <a href="#"><li>Tüm Yazılar</li></a>
        <a href="#"><li>Kategoriler</li></a>
        <a href="#"><li style="width:80px">İletişim</li></a>
        <a href="#"> <li>Site Politikası</li></a>
   	</div><!-- footer_menu -->
    <div class="footer_sakli">Her hakkı saklıdır © 2014 </div>
</div><!-- footer -->
    </form>
</body>
</html>
