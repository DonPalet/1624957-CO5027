<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OasisComp1.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ul class="utextbox">
    <li><asp:Label ID="Label1" runat="server" Text="Username"></asp:Label></li>
    <li><asp:TextBox ID="lunametxt" runat="server"></asp:TextBox> </li>

   <li> <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></li>
   <li> <asp:TextBox ID="lpnametxt" runat="server" TextMode="Password"></asp:TextBox> </li>

    <li><asp:Button ID="loginbutt" runat="server" Text="Login" OnClick="loginbutt_Click" /> </li>
    <li><asp:Literal ID="errormsglogin" runat="server"></asp:Literal> </li>
    </ul>
</asp:Content>
