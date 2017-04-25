<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="OasisComp1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%-- Textbox for contacting --%>

    <div id="cform">
        <ul>
      <li><asp:Label ID="name" runat="server" Text="Name:"></asp:Label> </li>
      <li><asp:TextBox ID="nametb" runat="server"></asp:TextBox></li> 
      <li><asp:Label ID="subject" runat="server" Text="Subject:"></asp:Label> </li>
      <li><asp:TextBox ID="subjecttb" runat="server"></asp:TextBox> </li>
      <li><asp:Label ID="email" runat="server" Text="Email"></asp:Label></li>
      <li><asp:TextBox ID="emailtb" runat="server"></asp:TextBox> </li>
      <li><asp:Label ID="message" runat="server" Text="Message"></asp:Label></li>
      <li><asp:TextBox ID="messagetb" runat="server" TextMode="multiline"></asp:TextBox> </li>
      <li> <asp:Label ID="errormsg" runat="server" Text="Label"></asp:Label></li>
           

    <li><asp:Button ID="sendbtn" runat="server" Text="Send" OnClick="sendbtn_Click" /> </li>
       </ul>
    </div>
    <%-- map location taken from google.com--%>
    <div id="googleMap" style="width:400px;height:400px;">
     <h3>My Google Maps Demo</h3>
    <div id="map"></div>
    <script>
      function initMap() {
          var uluru = { lat: 4.885663, lng: 114.931590 };
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 18,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDQWieyvzoWrOUcGZ-S3P3Rja9esQmdDYQ&callback=initMap">
    </script>
       
    <img id="mappic" src="img/map.jpg" />


</div>
</asp:Content>
