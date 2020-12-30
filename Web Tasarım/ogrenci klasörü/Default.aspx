<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="accordionstyles.css" rel="stylesheet" />
    <link href="styles.css" rel="stylesheet" />
    <title>Denizyıldızları Mesleki ve Teknik Anadolu Lisesi</title>
</head>
<body>
    <form id="form1" runat="server">
   <div class="container">
  <div class="header"> <img src="img/meblogo.png" />
    <div class="headeryazi">T.C. <br />
      MİLLÎ EĞİTİM BAKANLIĞI<br />
      <span style="font-size:14px"> KOCAELİ - DARICA - DENIZ YILDIZLARI MESLEKI VE TEKNIK ANADOLU LISESI</span></div>
  </div>
  <!--header -->
  <div class="menu">
    <ul>
      <li style="border-left:1px solid #ccc;">Anasayfa</li>
      <li>Kadromuz</li>
      <li>Bölümler</li>
      <li><a href="ogrenciEkle.aspx">Öğrenci Ekle</a> </li>
      <li>Sınavlar</li>
      <li>İletişim</li>
      <li>Hakkımızda</li>
    </ul>
  </div>
  <!--menu-->
  <div class="icerik">
    <div class="sidebarsol">
        <asp:Label ID="lbl_oturmaPlani" runat="server"></asp:Label>
    
      </div>
    <div class="sidebarsag">
      <div class="sidebarsag_baslik">OKUL TÜRLERİ</div>
      <section class="accordion">
      
          <asp:Label ID="lbl_okulTurleri" runat="server"></asp:Label>
      
      </section>
    </div>
    <!-- sidebarsag--> 
  </div>
  <!--icerik --> 
</div>
<!--container -->
    </form>
</body>
</html>
