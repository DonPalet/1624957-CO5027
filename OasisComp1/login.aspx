<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OasisComp1.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
    <asp:TextBox ID="lunametxt" runat="server"></asp:TextBox> <br />

    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="lpnametxt" runat="server"></asp:TextBox> <br />

    <asp:Button ID="loginbutt" runat="server" Text="Login" OnClick="loginbutt_Click" />
    <asp:Literal ID="errormsglogin" runat="server"></asp:Literal>

</asp:Content>
