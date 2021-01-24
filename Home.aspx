<%@ Page Title="" Language="C#" MasterPageFile="~/ZTechMasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
  
    <!-- CSS -->
   
    <link href="css/flickity.css" rel="stylesheet" />
    <!-- JavaScript -->
    <script src="css/flickity.pkgd.js"></script>
    <style>
     /* external css: flickity.css, fullscreen.css */

* { box-sizing: border-box; }

body { font-family: sans-serif; }

.carousel2 {
  background: #222;
}

.flickity-viewport {
  height: 400px!important;
    touch-action: pan-y;   
     overflow: hidden;
    position: relative
 }
.carousel-cell-image {
  display: block;
 
 width:100%;
 height:500px!important;
}

 @media screen and (max-width: 700px) and (min-width: 300px) {
    .flickity-viewport {
      height: 250px!important;
                 
   }
  .carousel-cell-image {
              
                 height:300px!important;
                }
            .SliderCap {
                top:57%!important;
                  font-weight:400!important;
                font-size:medium!important;
                  width:85%!important;
                }
            
   }
.carousel-cell {
  width: 100%;
  height: 300px;
  margin-right: 10px;
  /* center images in cells with flexbox */
  display: flex;
  align-items: center;
  justify-content: center;
}

.carousel.is-fullscreen .carousel-cell {
  height: 100%;
}



.carousel.is-fullscreen .carousel-cell-image {
  max-width: 100%;
}
.flickity-prev-next-button.previous {
    left: 10px;
    width: 30px;
    height: 30px;
}
.flickity-prev-next-button.next
                    {
    right: 10px;
    width: 30px;
    height: 30px;
}

  .SliderCap{
            z-index:10000;
            background-color:black;
            color:white;
            padding:8px;
            position:absolute;
            top:100%;
           opacity:0.7;
            border-radius:10px;
            width:75%;
        text-align:center;
       font-family:'Times New Roman', Times, serif;
          font-weight:600;
          font-size:large;

        }
            .flickity-page-dots .dot {
    display: inline-block;
    width: 10px;
    height: 10px;
    margin: 4px 4px;
    background: #fff;
    border-radius: 50%;
    opacity: .25;
    cursor: pointer;
}
    .flickity-page-dots {
    position: absolute;
    width: 100%;
    bottom: 1px;
    padding: 0;
    margin: 0;
    list-style: none;
    text-align: center;
    line-height: 1;
}
    </style>



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
   


<!-- Flickity HTML init -->
<div class="carousel2" data-flickity='{ "fullscreen": true, "lazyLoad": 1 }'>
  <div class="carousel-cell">
    <img class="carousel-cell-image"
      data-flickity-lazyload="img/banner/banner1.jpg" />
 <div class="SliderCap"> Your Company Caption for Slider No : 01 </div>
      
  </div>
  <div class="carousel-cell">
    <img class="carousel-cell-image"
      data-flickity-lazyload="img/banner/banner2.jpg" />
      <div class="SliderCap"> Your Company Caption for Slider No : 02 </div>
  </div>
  <div class="carousel-cell">
    <img class="carousel-cell-image"
      data-flickity-lazyload="img/banner/banner3.jpg" />
      <div class="SliderCap"> Your Company Caption for Slider No : 03 </div>
  </div>
  <div class="carousel-cell">
    <img class="carousel-cell-image"
     data-flickity-lazyload="img/banner/banner4.jpg" />
      <div class="SliderCap"> Your Company Caption for Slider No : 04 </div>
  </div>
 <div class="carousel-cell">
    <img class="carousel-cell-image"
     data-flickity-lazyload="img/banner/banner5.jpg" />
      <div class="SliderCap"> Your Company Caption for Slider No : 05 </div>
  </div>
 
</div>


    <br />
    <br />
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