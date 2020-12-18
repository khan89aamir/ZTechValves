<%@ Page Title="" Language="C#" MasterPageFile="~/ZTechMasterPage.master" AutoEventWireup="true" CodeFile="BUTTERFLY_VALVE.aspx.cs" Inherits="BUTTERFLY_VALVE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">

    <link href="css/ProductCSS.css" rel="stylesheet" />

    <%--<center><h1 style="font-family:'Times New Roman, Times, serif;'">BUTTERFLY VALVE </h1></center>--%>
    <link rel="stylesheet" href="css/w3.css">

    <p class="d-block text-center" style="font-family: 'Times New Roman'; font-size: xx-large">
        <%=ProductName %>
    </p>

    <div>
        <div id="carouselExampleIndicators" class="carousel slide ml-auto mr-auto" data-ride="carousel" data-interval="2000">

            <div class="carousel-inner">
                <asp:Repeater ID="CarouselRepeater" runat="server">
                    <ItemTemplate>
                        <div class="carousel-item w3-animate-right">
                            <img src="<%# Eval("Path")%>" alt="First slide" />
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <a id="btnPrev" class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a id="btnNext" class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>

    <br />
    <br />
    <br />

    <div class="card center">
        <div class="text-center">
            <font size="5" color="#05376d">TEST PRESSURE :</font>
            <div style="overflow-x: auto;">
                <table class="ProductInfo w-50  centerDiv" border="1">

                    <tr>
                        <th rowspan="2">MATERIAL</th>
                        <th rowspan="2">CLASS</th>
                        <th colspan="2">SHELL</th>
                        <th colspan="2">SEAT</th>
                        <th colspan="2">AIR SEAT TEST</th>
                    </tr>

                    <tr>
                        <th>PSIG</th>
                        <th>KSCG</th>
                        <th>PSIG</th>
                        <th>KSCG</th>
                        <th>PSIG</th>
                        <th>KSCG</th>
                    </tr>
                    <tr>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <br />

    <div class="card center">
        <div class="d-flex justify-content-center">
            <div>
                <font size="5" color="#05376d">CONSTRUCTION FEATURES :</font>
            </div>
        </div>

        <div class="d-flex justify-content-center">
            <ul class="Mylst">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <li><%# Container.DataItem %>  </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>

    </div>
    <br />

    <div class="card center">
        <div class="d-flex justify-content-center">
            <div>
                <font size="5" color="#05376d">SIZE :</font>
            </div>
        </div>

        <div class="d-flex justify-content-center">
            <ul class="Mylst">
                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <li><%# Container.DataItem %>  </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>

    </div>
    <br />

    <script type="text/javascript">
        $(document).ready(function () {
            // set the first item active
            $(".carousel .carousel-item:first").addClass("active");

            var myCarousel = $(".carousel");

            myCarousel.append("<ol class='carousel-indicators'></ol>");
            var indicators = $(".carousel-indicators");
            myCarousel.find(".carousel-inner").children(".carousel-item").each(function (index) {
                (index === 0) ?
                    indicators.append("<li data-target='#carouselExampleIndicators' data-slide-to='" + index + "' class='active'></li>") :
                    indicators.append("<li data-target='#carouselExampleIndicators' data-slide-to='" + index + "'></li>");
            });

            $('.carousel').carousel();

            $('#btnPrev').click(function () {
                $('.carousel-item').removeClass("w3-animate-right");
                $('.carousel-item').addClass("w3-animate-left");
            });

            $('#btnNext').click(function () {
                $('.carousel-item').removeClass("w3-animate-left");
                $('.carousel-item').addClass("w3-animate-right");
            });
        });

    </script>

</asp:Content>
