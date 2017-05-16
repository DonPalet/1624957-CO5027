<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="ViewProducts.aspx.cs" Inherits="OasisComp1.ViewProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Label ID="Name" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Desc" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Price" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Quantity" runat="server" Text="Label"></asp:Label>

    </div>
</asp:Content>
