<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="def2stil.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="header">
        </div>
        <div class="yanmenu">
            <u></ul><div class="yanmenuicerik">
                Kullanım klavuzu</div>
            </u><u>
                <div class="yanmenuicerik">
                    Duyurular</div>
            </u><u>
                <div class="yanmenuicerik">
                    Özlük bilgileri</div>
            </u><u>
                <div class="yanmenuicerik">
                    Görev talebi</div>
            </u><u>
                <div class="yanmenuicerik">
                    Aktif görevler</div>
            </u><u>
                <div class="yanmenuicerik">
                    Şifre değiştir</div>
            </u><u>
                <div class="yanmenuicerik">
                    Sıkça sorulanlar</div>
            </u><u>
                <div class="yanmenuicerik">
                    Güvenli giriş</div>
            </u>
        </div>
        <div class="ortamenu">
            <div class="basliklar">
                GÖREV TALEBİ AKTİF OLAN SINAVLAR</div>
            <div class="bilgi">
               * Görev almak için seçeceğiniz sınav ve oturumları aşağıda listelenmektedir</div>
            <div class="basliklar">
                Oturum Tercihi
            </div>
            <div class="oturumlarpanel">
                <div class="oturumlar">
                    <asp:CheckBox ID="oturum1" runat="server" Text="1. oturum(Cumartesi-0930)" />
                </div>
                <div class="oturumlar">
                    <asp:CheckBox ID="oturum2" runat="server" Text="2.oturum(Pazar-09:30)" />
                </div>
                <div class="oturumlar">
                    <asp:CheckBox ID="oturum3" runat="server" Text="3. oturum(Cumartesi-14:00)" />
                </div>
                <div class="oturumlar">
                    <asp:CheckBox ID="oturum4" runat="server" Text="4.oturum(Pazar-14:00)" />
                </div>
            </div>


            <div class="basliklar">
                Yabancı Dil Bilgisi</div>
                <div class="dil">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" Width="750px">
                    </asp:CheckBoxList>
                </div>
                <div class="basliklar">
                Binalar</div>

        </div>

        <div class="footer"></div>
    </div>
    </form>
</body>
</html>
