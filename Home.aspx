<%@ Page Title="" Language="C#" MasterPageFile="~/ZTechMasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <style>
        .carousel-indicators li {
            width: 10px;
            height: 10px;
            border-radius: 100%;
            background-color: gray;
        }


        .carousel-indicators .active {
            background-color: navy;
        }

        .carousel-indicators li {
            width: 10px;
            height: 10px;
            border-radius: 100%;
        }

        .carousel-indicators {
        }


        .carousel-control-prev-icon {
            background-image: url("img/left.png");
            height: 25px;
            width: 25px;
        }

        .carousel-control-next-icon {
            background-image: url("img/Right.png");
            height: 25px;
            width: 25px;
        }

            .carousel-control-next-icon:hover {
                border-radius: 100%;
                box-shadow: 0 0 20px blue;
            }

        .carousel-control-prev-icon:hover {
            border-radius: 100%;
            box-shadow: 0 0 20px blue;
        }

        /*Till the width of screen is above 1000 px*/
        @media only screen and (min-width: 1200px) {
            #carouselExampleIndicators {
                width: 100%;
                height: 100%;
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
        /*Till the width of screen goes below 768 px*/
         @media screen and (max-width: 368px) and (min-width: 270px) {
            .carsoulText {
                color: black;
                top: 50%;
                position: absolute;
                font-size: x-small !important;
                width: 170px;
            }

            .carousel img {
                width: 100% !important;
                height: 245px;
                max-height: 245px;
                margin: auto;
                display: block;
            }
        }


        @media screen and (max-width: 678px) and (min-width: 368px) {
            .carsoulText {
                color: black;
                top: 50%;
                position: absolute;
                font-size: small !important;
                width: 200px;
            }

            .carousel img {
                width: 100% !important;
                height: 245px;
                max-height: 245px;
                margin: auto;
                display: block;
            }
        }

        @media screen and (max-width: 600px) and (min-width: 471px) {
            .carsoulText {
                color: black;
                top: 50%;
                position: absolute;
                font-size: small !important;
                width: 270px !important;
            }

            .carousel img {
                width: 100% !important;
                height: 245px;
                max-height: 245px;
                margin: auto;
                display: block;
            }
        }

        @media screen and (max-width: 700px) and (min-width: 601px) {
            .carsoulText {
                color: black;
                top: 50%;
                position: absolute;
                font-size: small !important;
                width: 350px !important;
            }

            .carousel img {
                width: 100% !important;
                height: 245px;
                max-height: 245px;
                margin: auto;
                display: block;
            }
        }

        .productHeading {
            font-family: Georgia, 'Times New Roman', Times, serif !important;
        }

        .carsoulText {
            color: black;
            top: 20%;
            left: 15%;
            position: absolute;
            font-size: large;
            max-width: 400px;
            min-width: 100px;
            font-family: Georgia, 'Times New Roman', Times, serif;
        }
    </style>
    <link rel="stylesheet" href="css/w3.css">
    <div>
        <div id="carouselExampleIndicators" class="carousel slide ml-auto mr-auto" data-ride="carousel" data-interval="2000">

            <div class="carousel-inner">
                <asp:Repeater ID="CarouselRepeater" runat="server">
                    <ItemTemplate>
                        <div class="carousel-item w3-animate-right">
                            <img id="imgBanner" class="d-block w-100 " src="<%# Eval("Path")%>" alt="First slide" />

                            <div class="carsoulText">
                                <h3 class="productHeading"><%# Eval("ProductName")%></h3>
                                <p>
                                    <%# Eval("Description")%>
                                </p>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <a class="carousel-control-prev" id="btnPrev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" id="btnNext" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>

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