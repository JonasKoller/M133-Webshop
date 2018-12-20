<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="overview.aspx.cs" Inherits="Webshop.WebForm1" MasterPageFile="Design.Master"%>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    
    <!-- Hier den ganzen Inhalt hin -->
</asp:Content>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="stylesheet.css"/>
    <title>Dorfladen BBZW</title>
</head>
<body>
<header>
    <div class="header-begin">
        <h1>DORFLADEN</h1>
    </div>
    <div class="header-end">
        <h1>BBZW</h1>
    </div>
</header>
    <h2>Aktionen</h2>
    <form id="form1" runat="server">
        <div>
            <asp:ListView ID="items" runat="server">
                <ItemTemplate>
                    <p><%#Eval("name") %></p>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </form>
</body>
</html>
