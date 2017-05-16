<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="ViewProducts.aspx.cs" Inherits="OasisComp1.ViewProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="viewproddiv">
        <ul id="viewprod">
        <li> <h2><asp:Label ID="Name" runat="server" Text="Label"></asp:Label> </h2></li>
            <li><img src="dbimage/<%# Eval("filen") %><%# Eval ("extn") %> "/></li>
        <li><asp:Label ID="Desc" runat="server" Text="Label"></asp:Label> </li>
        <li><asp:Label ID="Price" runat="server" Text="Label"></asp:Label> </li>
        <li><asp:Label ID="Quantity" runat="server" Text="Label"></asp:Label> </li>
        </ul>
    </div>
</asp:Content>
