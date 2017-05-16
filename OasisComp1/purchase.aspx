<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="purchase.aspx.cs" Inherits="OasisComp1.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Purchase Item(s)</h2>
    <asp:Label ID="lblQuantity" runat="server" Text="20$ ea" AssociatedControlID="ddlamount"></asp:Label>
    <asp:DropDownList ID="ddlamount" runat="server">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
    </asp:DropDownList>
    <p>Free Shipping!</p>
    <asp:Button ID="btnPurchase" runat="server" Text="Purchase" />
</asp:Content>
