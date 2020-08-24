<%@ Page Title="" Language="C#" MasterPageFile="~/ZTechMasterPage.master" AutoEventWireup="true" CodeFile="Gate_Valve.aspx.cs" Inherits="Gate_Valve" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">

    <style>
        .carousel-indicators li {
            width: 10px;
            height: 10px;
            border-radius: 100%;
            background-color: gray;
        }

        .carousel-indicators .active {
            background-color: blue;
        }

        .carousel-indicators li {
            width: 10px;
            height: 10px;
            border-radius: 100%;
        }

        .carousel-indicators {
            bottom: -40px;
        }


        .carousel-control-prev-icon {
            background-image: url("img/left.png");
        }

        .carousel-control-next-icon {
            background-image: url("img/Right.png");
        }

            .carousel-control-next-icon:hover {
                border-radius: 100%;
                box-shadow: 0 0 20px blue;
            }

        .carousel-control-prev-icon:hover {
            border-radius: 100%;
            box-shadow: 0 0 20px blue;
        }

        .carousel img {
            width: auto;
            height: 245px;
            max-height: 245px;
            margin: auto;
            display: block;
        }
        /*Till the width of screen is above 1000 px*/
        @media only screen and (min-width: 1200px) {
            #carouselExampleIndicators {
                width: 50%;
            }

            #Button1 {
                background-color: yellow;
            }
        }
        /*Till the width of screen goes below 768 px*/
        @media only screen and (max-width: 768px) {
            #carouselExampleIndicators {
                width: 100%;
            }

            #Button1 {
                background-color: darkblue;
            }
        }
       
    </style>

    <link rel="stylesheet" href="css/w3.css">

    <p class="d-block text-center" style="font-family:'Times New Roman';font-size:xx-large">
        GATE VALVES
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
    <div class="card center">
        <font size="5" color="#05376d">TEST PRESSURE :</font>

        <div style="overflow-x: auto;">
            <table class="ProductInfo" style="width: 50%;" border="1">

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
                    <td rowspan="3">
                        <pre>A216 GR.
WCB/A 217

C5/C12

A351 CF8/

CF8C/A 351

CF8 M
 </pre>
                    </td>

                    <td style="height: 46px">150</td>
                    <td style="height: 46px">450</td>
                    <td style="height: 46px">31.64</td>
                    <td style="height: 46px">325</td>
                    <td style="height: 46px">22.88</td>
                    <td style="height: 46px">80-100</td>
                    <td style="height: 46px">6-7</td>
                </tr>

                <tr>
                    <td>300</td>
                    <td>1125</td>
                    <td>79.09</td>
                    <td>825</td>
                    <td>57.80</td>
                    <td>80-100</td>
                    <td>6-7</td>
                </tr>

                <tr>
                    <td>600</td>
                    <td>2250</td>
                    <td>158.18</td>
                    <td>1650</td>
                    <td>116.00</td>
                    <td>80-100</td>
                    <td>6-7</td>
                </tr>
            </table>

        </div>


    </div>
    <br />
    <div class="card center">
        <font size="5" color="#05376d">CONSTRUCTION FEATURES:</font>
        <ul class="Mylst">


            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>

                    <li><%# Container.DataItem %>  </li>


                </ItemTemplate>
            </asp:Repeater>




        </ul>
    </div>
    <br />

    <div class="card center">
        <font size="5" color="#05376d">SIZE :</font>
        <ul class="Mylst">
            <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>

                    <li><%# Container.DataItem %>  </li>


                </ItemTemplate>
            </asp:Repeater>
        </ul>
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
