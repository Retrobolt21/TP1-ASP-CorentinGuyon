<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ex1.aspx.cs" Inherits="TP_ASP_CorentinGuyon.TP1.Ex1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Date choisie dans le calendrier"></asp:Label><br />
            <asp:TextBox ID="DateChoisieCalendrier" runat="server"></asp:TextBox><br />
            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Selection_Change"></asp:Calendar><br />
            <asp:Button ID="DateDuJour" runat="server" Text="Button" OnClick="afficher_DateJour" /><br />
            <asp:Label ID="Label2" runat="server" Text="Affichage de la date du jour"></asp:Label><br />
        </div>
    </form>
</body>
</html>