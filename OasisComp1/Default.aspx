<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OasisComp1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- Slideshow comment --%>
    <h2 id="title">Available Products</h2>
    <div id="slideshow">
        
         <img class="slideshow" src="img/ss1.jpg" alt="Razer Black Widow Chroma"/>
         <img class="slideshow" src="img/ss2.jpg" alt="Razer Naga 2014 Edition"/>
         <img class="slideshow" src="img/ss3.jpg" alt="Razer Seiren"/>
         <img class="slideshow" src="img/ss4.jpg" alt="Razer Tartarus"/>
        <%--Slideshow script --%>
        <script>
            var slideIndex = 0;
            slidefunc();

            function slidefunc() {
                var i;
                var x = document.getElementsByClassName("slideshow");
                for (i = 0; i < x.length; i++) {
                    x[i].style.display = "none";
                }
                slideIndex++;

                if (slideIndex > x.length) {
                    slideIndex = 1;
                }
                x[slideIndex - 1].style.display = "block";
                setTimeout(slidefunc, 3000);
            }

        </script>
    </div>
    <h2 class="title">Products on Sale</h2>
    <%--taken from css-tricks.com/designing-a-product-page-layout-with-flexbox--%>
    <%--product on sale --%>

<section class="pview">
    <div class="fpi"> 
        <div class="pimg">
            <img src="img/ss2.jpg" alt="Razer Naga 2012 Edition"/>
            <p class="ptexthover">20% off!</p> <%-- for mouseover function; shows text --%>
        </div>
        <div class="pinfo">
            <h5>Razer Naga 2012 Edition</h5>
            <h6>$69.69</h6>
        </div>
    </div>

    <div class="fpi"> 
        <div class="pimg">
            <img src="img/ss2.jpg" alt="Razer Naga 2012 Edition"/>
            <p class="ptexthover">20% off!</p>
        </div>
        <div class="pinfo">
            <h5>Razer Naga 2012 Edition</h5>
            <h6>$69.69</h6>
        </div>
    </div>
        
    <div class="fpi"> 
        <div class="pimg">
            <img src="img/ss2.jpg" alt="Razer Naga 2012 Edition"/>
            <p class="ptexthover">20% off!</p>
        </div>
        <div class="pinfo">
            <h5>Razer Naga 2012 Edition</h5>
            <h6>$69.69</h6>
        </div>
    </div>
    <div class="fpi"> 
        <div class="pimg">
            <img src="img/ss2.jpg" alt="Razer Naga 2012 Edition"/>
            <p class="ptexthover">20% off!</p>
        </div>
        <div class="pinfo">
            <h5>Razer Naga 2012 Edition</h5>
            <h6>$69.69</h6>
        </div>
    </div>
    <div class="fpi"> 
        <div class="pimg">
            <img src="img/ss2.jpg" alt="Razer Naga 2012 Edition"/>
            <p class="ptexthover">20% off!</p>
        </div>
        <div class="pinfo">
            <h5>Razer Naga 2012 Edition</h5>
            <h6>$69.69</h6>
        </div>
    </div>
    
    <div class="fpi"> 
        <div class="pimg">
            <img src="img/ss2.jpg" alt="Razer Naga 2012 Edition"/>
            <p class="ptexthover">20% off!</p>
        </div>
        <div class="pinfo">
            <h5>Razer Naga 2012 Edition</h5>
            <h6>$69.69</h6>
        </div>
    </div>
        
    <div class="fpi"> 
        <div class="pimg">
            <img src="img/ss2.jpg" alt="Razer Naga 2012 Edition"/>
            <p class="ptexthover">20% off!</p>
        </div>
        <div class="pinfo">
            <h5>Razer Naga 2012 Edition</h5>
            <h6>$69.69</h6>
        </div>
    </div>
    <div class="fpi"> 
        <div class="pimg">
            <img src="img/ss2.jpg" alt="Razer Naga 2012 Edition"/>
            <p class="ptexthover">20% off!</p>
        </div>
        <div class="pinfo">
            <h5>Razer Naga 2012 Edition</h5>
            <h6>$69.69</h6>
        </div>
    </div>
    <div class="fpi"> 
        <div class="pimg">
            <img src="img/ss2.jpg" alt="Razer Naga 2012 Edition"/>
            <p class="ptexthover">20% off!</p>
        </div>
        <div class="pinfo">
            <h5>Razer Naga 2012 Edition</h5>
            <h6>$69.69</h6>
        </div>
    </div>
    <div class="fpi"> 
        <div class="pimg">
            <img src="img/ss2.jpg" alt="Razer Naga 2012 Edition"/>
            <p class="ptexthover">20% off!</p>
        </div>
        <div class="pinfo">
            <h5>Razer Naga 2012 Edition</h5>
            <h6>$69.69</h6>
        </div>
    </div>
</section>




</asp:Content>
