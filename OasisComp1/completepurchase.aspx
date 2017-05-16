<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="completepurchase.aspx.cs" Inherits="OasisComp1.completepurchase" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Complete your purchase</h2>
    <asp:Button ID="btnCPurchase" runat="server" Text="Confirm" OnClick="btnCPurchase_Click" />
    <asp:Literal ID="litInformation" runat="server"></asp:Literal>
</asp:Content>
