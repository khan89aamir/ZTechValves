<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_Manager.aspx.cs" Inherits="Admin_Manager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
     
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
  

    
    <div class="container">
        <div class="alert alert-primary text-center" role="alert">
  <h3>Admin Panel </h3> 
</div>
<div class="alert alert-warning" role="alert">
  <span   class="fa fa-lightbulb-o fa-2x mr-2" style="color:#06456f"></span>Click on <b>Login By->My Profile</b> to update your password
</div>

      <form class="needs-validation" novalidate runat="server">
  <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationCustom04">Select Your Product :</label>
      <select class="custom-select" id="validationCustom04" required>
        <option selected disabled value="">Choose...</option>
            <option>Gate Valve</option>
            <option>Globe Valve</option>
            <option>Swing Check Valve</option>
            <option>Ball Valve</option>
            <option>Forged Valve</option>
            <option>Butterefly Valve</option>
            
     
      
      </select>
      <div class="invalid-feedback">
        Please select your product.
      </div>
    </div>
   
  </div>
  <div class="form-row">
    <div class="col-md-6 mb-3">
        <asp:Button ID="btnGetDetails" class="btn btn-primary" runat="server" Text="GetDetails" OnClick="btnGetDetails_Click" />
      <asp:Button ID="btnUpdateProduct" class="btn btn-primary" runat="server" Text="Update Product" OnClick="btnUpdateProduct_Click"/>
     
    </div>
    <div class="col-md-3 mb-3">
    
    </div>
  
  </div>
 
 
</form>
<div id="pnlDetails" class="container" style="display:none" runat="server">
   <div class="row">
    <div class="col-sm ">
      <div class="card" style="width: 18rem;">
      <img src="img/gate_valve.JPG" class="card-img-top" alt="...">
      
    </div>

    </div>
    <div class="col-sm ">
       <div class="card" style="width: 18rem;">
      <img src="img/gate_valve.JPG" class="card-img-top" alt="...">
     
    </div>
    </div>
    <div class="col-sm ">
       <div class="card" style="width: 18rem;">
      <img src="img/gate_valve.JPG" class="card-img-top" alt="...">
      
    </div>
    </div>
  </div>
     <div class="row mt-2">
    <div class="col-sm ">
      <div class="card" style="width: 18rem;">
      <img src="img/gate_valve.JPG" class="card-img-top" alt="...">
      
    </div>

    </div>
    <div class="col-sm ">
       <div class="card" style="width: 18rem;">
      <img src="img/gate_valve.JPG" class="card-img-top" alt="...">
      
    </div>
    </div>
    <div class="col-sm ">
       <div class="card" style="width: 18rem;">
      <img src="img/gate_valve.JPG" class="card-img-top" alt="...">
      
    </div>
    </div>
  </div>
</div>

   <div id="pnlUpdateProduct" class="container" style="display:none" runat="server">
   <form class="needs-validation" novalidate>
  <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validatedInputGroupCustomFile">Browse Image :</label>
     <div class="custom-file">
      <input type="file" class="custom-file-input" id="validatedInputGroupCustomFile" required>
      <label class="custom-file-label" for="validatedInputGroupCustomFile">Choose file...</label>
    </div>
      <div class="invalid-feedback">
        Please select your product.
      </div>
    </div>
   
  </div>

  <div class="form-row">
    <div class="col-md-6 mb-3">
     <label for="validationTextarea">Product Description :</label>
    <textarea class="form-control" id="validationTextarea" placeholder="product Description." required></textarea>
    <div class="invalid-feedback">
      Please enter product Description.
    </div>
        
    </div>
   
  </div>

  <div class="form-row">
    <div class="col-md-6 mb-3">
      <button class="btn btn-primary" type="submit">Save</button>
           <button class="btn btn-secondary" type="submit">Cancel</button>
        
    </div>
   
  </div>
 
 
</form>
        </div>
 
   

<script>
// Example starter JavaScript for disabling form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
    })();


    function GetDetails() {
      
        
        var cmbProduct = document.getElementById("validationCustom04");
        if (cmbProduct.selectedIndex>0) {

         
            document.getElementById("pnlDetails").style.display = "block";
            //document.getElementById("pnlUpdateProduct").style.display = "none";
        }
        
       
    }
    function UpdateDetails() {
     


        var cmbProduct = document.getElementById("validationCustom04");
        if (cmbProduct.selectedIndex > 0) {

           
           document.getElementById("pnlDetails").style.display = "none";
            document.getElementById("pnlUpdateProduct").style.display = "block";
        }


    }
</script>

     </div>
    

    <script>

        $(document).ready(function () {

            // Add the following code if you want the name of the file appear on select
            $(".custom-file-input").on("change", function () {
                var fileName = $(this).val().split("\\").pop();
                $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
            });

        });

</script>
</asp:Content>

