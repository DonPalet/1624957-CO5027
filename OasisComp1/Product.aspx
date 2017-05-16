<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="OasisComp1.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    CMS
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Products</h2>
    <asp:Repeater ID="ProdRep" runat="server">
        <HeaderTemplate></HeaderTemplate>
        <ItemTemplate>
            <img class="prodimg" src = "dbimage/<%#Eval ("ImgID") %><%#Eval("Extension") %>" />
            <h4><a href="ViewProducts.aspx?ProdID=<%# Eval("ProdID") %>"><%#Eval("ProdName") %></a></> </h4>
         </ItemTemplate>
        <FooterTemplate></FooterTemplate>
    </asp:Repeater>

    
</asp:Content>
