<%@ Page Language="C#" AutoEventWireup="true" CodeFile="film_ekle.aspx.cs" Inherits="film_ekle" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 492px;
        }
        .style2
        {
            width: 235px;
            text-align: right;
        }
        .style3
        {
            width: 235px;
            text-align: right;
            height: 26px;
        }
        .style4
        {
            height: 26px;
            width: 255px;
        }
        .style5
        {
            width: 255px;
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
    
    

        
        <asp:Panel ID="Panel1" runat="server">
            <table align="center" class="style1">
                <tr>
                    <td class="style3">
                        Filmin Adı</td>
                    <td class="style4" style="text-align: left">
                        <asp:TextBox ID="TextBox1" runat="server" Width="160px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Türü</td>
                    <td class="style5" style="text-align: left">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Gösterim Tarihi</td>
                    <td class="style5" style="text-align: left">
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                        BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
                        DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                        ForeColor="#003399" Height="200px" Width="220px">
                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
                            Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <WeekendDayStyle BackColor="#CCCCFF" />
                        </asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Açıklama</td>
                    <td class="style5" style="text-align: left">
                        <asp:TextBox ID="TextBox2" runat="server" Height="110px" TextMode="MultiLine" 
                        Width="239px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Resim</td>
                    <td class="style5" style="text-align: left">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style5" style="text-align: left">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="FİLM EKLE" />
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style5" style="text-align: left">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
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
