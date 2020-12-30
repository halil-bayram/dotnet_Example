<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
          <a href="#"><li>Haberler</li></a> <li><a href="film_ekle.aspx">Film Ekle</a><li><asp:LinkButton ID="LinkButton1" runat="server" 
                PostBackUrl="~/uyegirisi.aspx">Üye Girişi</asp:LinkButton></li>
       <li><asp:LinkButton ID="LinkButton2" runat="server" Visible="False" 
               PostBackUrl="~/yonetim.aspx">Yönetim</asp:LinkButton></li>
      
       </div><!-- menu -->
</div><!-- menu_bar -->
<div class="govde">

	<div class="govde_sol">
    
    

        
  
    
        <asp:Label ID="Label1" runat="server" style="text-align: center"></asp:Label>
    
    

        
  
    
    </div><!-- govde_sol -->
    <div class="govde_sag">
    
       
    
     <!--sidebar tekrarlı kısım -->
    	<div class="sidebar_eleman_tut">
    	<div class="sidebar_baslik">Kategoriler</div>
        <div class="sidebar_baslikalti">
        
        	
            
        <ul >
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </ul>
        	
            
        
        </div><!-- sidebar_baslikalti-->
    	</div><!-- sidebar_elaman_tut-->
    <!-- sidebar tekrarlı kısım -->
    <!--sidebar tekrarlı kısım -->
    	<div class="sidebar_eleman_tut">
    	<div class="sidebar_baslik">En Çok İzlenenler</div>
        <div class="sidebar_baslikalti">
        
        	
            
        <ul >
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </ul>
        	
            
        
        </div><!-- sidebar_baslikalti-->
    	</div><!-- sidebar_elaman_tut-->
    <!-- sidebar tekrarlı kısım -->
    
    
    
    
    
    
   
    
    
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
