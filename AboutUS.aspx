<%@ Page Title="" Language="C#" MasterPageFile="~/ZTechMasterPage.master" AutoEventWireup="true" CodeFile="AboutUS.aspx.cs" Inherits="AboutUS" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">

    <style>
        @media screen and (max-width: 400px) and (min-width: 200px) {
            .display-5 {
                font-size:xx-large !important;
                font-weight: bold !important;
            }
        }
        /* For device width smaller than 768px: */
        @media only screen and (max-width: 768px) {
            .card {
                width:100%!important;
            }
        }
    </style>



    <div class="jumbotron jumbotron-fluid" style="background-color: #06456f; color: white">
        <div class="container">
            <h1 class="display-5">About SALKI VALVES</h1>
            <p class="lead">We are one of the established Industrial valves manufacturing company in Ahmedabad, INDIA with all latest manufacturing facility..</p>
            <p>
                We are ISO 9001: 2015 certified company has an active quality management system to give good quality products. Please send us the requirements for valves so that we can give you the best prices.
            </p>
        </div>
    </div>

    <div class="container">

        <div class="row  ">

            <div class="col-md-6 t d-flex justify-content-center">
                <div class="card w-50">
                    <div class=" card-header">
                      <h4>Shakeel Ahmad </h4>  
                    </div>
                    <img class="card-img-top" src="img/user.JPG" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Shakeel Ahmad  ( CEO )</h5>

                        <i class="fa fa-phone  " style="color: cornflowerblue"></i>+91 9967716771<br />
                        <i class="fa fa-envelope  " style="color: cornflowerblue"></i>Contact@ztechvalves.in
                    </div>
                </div>
            </div>
            <div class="col-md-6  d-flex justify-content-center ">
                <div class="card w-50">
                    <div class=" card-header">
                       <h4> Gulam Rasool  </h4>   
                    </div>
                    <img class="card-img-top" src="img/user.JPG" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Gulam Rasool  ( CEO )</h5>


                        <i class="fa fa-phone  " style="color: cornflowerblue"></i>+91 9137738202<br />
                        <i class="fa fa-envelope  " style="color: cornflowerblue"></i>Contact@ztechvalves.in
                    </div>
                </div>
            </div>
        </div>

    </div>
    <hr />

    <div class="container" style="background-color: #06456f; color: white; font-family: 'Times New Roman'; font-size: x-large">
        What we do ?

    </div>
    <div class="container alert-info" style="font-family: 'Times New Roman'; font-size: large">
        We are the manufacturer of<br />
        1. GATE VALVE.<br />
        2. GLOBE VALVE.
        <br />
        3. SWING CHECK VALVE.
        <br />
        4. DUAL PLATE CHECK VALVE.
        <br />
        5. TILTING DISC CHECK VALVE
        <br />
        6. BUTTERFLY VALVE
        <br />
        7. PLUG VALVE
        <br />
        8. BALL VALVE & STRAINER in casting and forging grades.

    </div>
    <hr />
    <div class="container ">
        <p class="lead">
            Materials of Construction such as CARBON STEEL, STAINLESS STEEL, LOW-TEMPERATURE CARBON STEEL, TITANIUM ALLOYS, MONEL ALLOYS and DUPLEX STAINLESS STEEL.

            <br />
            <br />
            Our aim of manufacturing is high-quality products, timely delivery capabilities, and competitive prices.

            <br />
            <br />
            We are supplying in OIL & GAS, POWER PLANT, CHEMICAL & FERTILIZERS, MARINE & OFF-SHORE, PETROCHEMICALS, SUGAR AND PAPER INDUSTRIES.

        </p>

    </div>

</asp:Content>

