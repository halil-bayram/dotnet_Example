<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sifremi_unuttum.aspx.cs" Inherits="sifremi_unuttum" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" type="text/css" />
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
    
    
    <asp:Panel ID="Panel1" runat="server" Font-Bold="True" Font-Names="Verdana" 
            Font-Size="Medium" ForeColor="#666666">
        <br />
        <br />
        E-posta<asp:TextBox ID="TextBox3" runat="server" Height="35px" Width="159px"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Kontrol Et" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Visible="False" Font-Bold="True" 
            Font-Names="Verdana" Font-Size="Medium" ForeColor="#666666">
        <br />
        Gizli Soru:<asp:Label ID="Label2" runat="server"></asp:Label>
        <br />
        <br />
        Cevap&nbsp;&nbsp;&nbsp;&nbsp; :<asp:TextBox ID="TextBox4" runat="server" 
            Height="26px" Width="142px"></asp:TextBox>
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="GÖNDER" />
        <br />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server"></asp:Label>
    </asp:Panel>
        

       
    
    

        
  
    
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
