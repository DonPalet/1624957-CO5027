<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="OasisComp1.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
    <asp:TextBox ID="utxtbox" runat="server"></asp:TextBox> <br />
    <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="etxtbox" runat="server"></asp:TextBox> <br />
     <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="ptxtbox" runat="server"></asp:TextBox> <br />

    <asp:Button ID="regbutt" runat="server" Text="Register" OnClick="regbutt_Click" /> <br />

    <asp:Label ID="errormsg" runat="server" Text=""></asp:Label>
    
</asp:Content>
