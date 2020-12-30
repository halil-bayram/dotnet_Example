<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ogrenciEkle.aspx.cs" Inherits="ogrenciEkle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="styles.css"/>
    <title></title>
  
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
      <li style="border-left:1px solid #ccc;"><a href="Default.aspx">Anasayfa</a></li>
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
  <div class="girisTablo">
      <table cellspacing="10">
          <tr>
              <td> <div class="sidebarsag_baslik" style="border-radius:5px;">Sınıf Adı:</div></td>
              <td>
                  <asp:DropDownList ID="drpdwn_siniflar" runat="server" CssClass="textbox">
                  </asp:DropDownList>
              </td>
              <td></td>
          </tr>
          <tr>
              <td><div class="sidebarsag_baslik" style="border-radius:5px;">Okul No:</div></td>
              <td>
                  <asp:TextBox ID="txt_okulNo" runat="server" CssClass="textbox"></asp:TextBox>
              </td>
              <td>
                  &nbsp;</td>
          </tr>
          <tr>
              <td><div class="sidebarsag_baslik" style="border-radius:5px;">Öğrenci Adı:</div></td>
              <td>
                  <asp:TextBox ID="txt_ogrenciAd" runat="server" CssClass="textbox"></asp:TextBox>
              </td>
              <td>
                  &nbsp;</td>
          </tr>
         
         
           <tr>
              <td><div class="sidebarsag_baslik" style="border-radius:5px;">Öğrenci Soyadı:</div></td>
              <td>
                  <asp:TextBox ID="txt_ogrenciSoyad" runat="server" CssClass="textbox"></asp:TextBox>
              </td>
              <td>
                  &nbsp;</td>
          </tr>
           <tr>
              <td><div class="sidebarsag_baslik" style="border-radius:5px;">Cinsiyet</div></td>
              <td>
                
                  <asp:RadioButtonList ID="rbntlst_siniflar" runat="server" RepeatDirection="Horizontal" CssClass="textbox" Height="30px">
                      <asp:ListItem>Erkek</asp:ListItem>
                      <asp:ListItem>Kız</asp:ListItem>
                  </asp:RadioButtonList>
             
              </td>
              <td></td>
          </tr>
          <tr>
              <td colspan="2">
                  <asp:Button ID="btn_kaydet" runat="server" Text="Kaydet" CssClass="button" OnClick="btn_kaydet_Click" />
              </td>
              <td></td>
          </tr>
           <tr>
              <td colspan="3">
               
                  &nbsp;</td>
            
          </tr>
          <tr>
              <td colspan="3">
               
                 
                
                  <asp:Label ID="lbl_kayitOnay" runat="server"></asp:Label>
               
                 
                
              </td>
            
          </tr>
      </table>
  </div>
  </div>
  <!--icerik --> 
</div>
<!--container -->
    </form>
</body>
</html>
