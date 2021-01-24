<%@ Page Title="" Language="C#" MasterPageFile="~/ZTechMasterPage.master" AutoEventWireup="true" CodeFile="CertificatePage.aspx.cs" Inherits="CertificatePage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

   <style>
       figure {
           padding: 4px;
           margin: auto;
           text-align: center;
       }

       .figcaption {
          
           color: white;
           font-style: italic;
           padding: 2px;
           text-align: center;
           background-color:#06456F;
         border-radius:4px;
           color:white;
       }
       /* 100% Image Width on Smaller Screens */
       @media only screen and (max-width: 760px) {
          #cert2{
              margin-top:5px;
          }
       }
   </style>
    <img src="img/certification-banner.jpg"  style="width:100%; height:140px";  class="img-fluid" />
 <div class="text-center mt-2" style="background-color:#06456F">
     <h3 style="color:white">CERTIFICATIONS</h3>
 </div>
    <div class="row m-2">
        <div class="col-md-6" >
       
            <div style="border:2px solid #06456F; border-radius:10px">
                  <div class="figcaption">
                       Certificate of Compliance
                 </div>
                    <img  src="img/certificate/cert01.png" class="img-fluid" />
            </div>
           
      
         </div>
       <%-- for smaller device top margine would be added that is why cert2 ID is given. --%>
         <div id="cert2" class="col-md-6  text-center">
            
              <div style="border:2px solid #06456F; border-radius:10px">
                   <div class="figcaption">
                     ISO 9001:2015
                 </div>
                 <img src="img/certificate/cert002.jpg" class="img-fluid"  style="width:50%" />
             </div>
              
      
        </div>
       

    </div>
    
  
     

    
   
</asp:Content>

