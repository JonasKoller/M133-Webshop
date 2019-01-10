<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="overview.aspx.cs" Inherits="Webshop.WebForm1" MasterPageFile="Design.Master"%>

<asp:Content runat="server" ContentPlaceHolderID="head">
    <title>Dorfladen BBZW - Übersicht</title>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="main">
  
    <asp:ListView 
        ID="items"
        ItemPlaceholderID="currentItem"
        runat="server">
                    
        <LayoutTemplate>
            <ul class="overview-itemcontainer">
                <asp:PlaceHolder ID="currentItem" runat="server" />
            </ul>
        </LayoutTemplate>

        <ItemTemplate>
            <li>
                <img src="/assets/img/<%#Eval("ImageName") %>"/>
                <%#Eval("name") %>
            </li>
        </ItemTemplate>
    </asp:ListView>

</asp:Content>
