<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_Login.aspx.cs" Inherits="Admin_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
      <link rel="stylesheet" href="css/ForgotPass.css">
    <script>
        function validateForm()
        {
            var x = document.forms["myForm"]["userid"].value;
            if (x == "")
            {
                 alert("Please enter user name.");
                return false;
            }
            else if (document.forms["myForm"]["password"].value=="") {
                alert("Please enter password.");
                return false;
            }
            else if (document.forms["myForm"]["userid"].value == "admin" && document.forms["myForm"]["password"].value == "123") {
               
                return true;
            }
        }

        function validateForm2() {
            var x = document.forms["forgotPass"]["emailID"].value;
            if (x == "") {
                alert("Please enter E-Mail Address.");
                return false;
            }
        }
</script>

     <div class="login-page">
         <h3 id="vTitle">Admin Login</h3>
      <br>
  <div class="form">
  
    <form name="myForm"  class="Loginform"  action="/Admin_Manager.aspx" onsubmit="return validateForm()" method="post">
  
      <input id="txtUserID" type="text" name="userid" placeholder="Enter User Name"/>
      <input id="txtPassword" type="password" name="password" placeholder="Enter Password"/>
       
      <button name="btnSubmit" class="buttonLogin" onclick="return validateForm()"> login</button><br /><br />
      <button  id="myBtn" type="button"  class="btnOpt">Forgot Password
      </button>

          <button  type="button" onclick="location.href = 'SignUp.aspx';"  class="btnOpt">Register</button>
    </form>

<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="close">&times;</span>

    </div>
    <div class="modal-body">
        Your Password will be sent to this mail address.<br />
         <form name="forgotPass"   action="/action_page.php" onsubmit="return validateForm2()" method="post">
  
      <input id="txtEmailID" type="text" name="emailID" placeholder="Enter Email Address"/>
      <button name="btnSubmit" onclick="return validateForm2()"> Submit</button><br /><br />
    </form>

    </div>
    <div class="modal-footer">
      <h3></h3>
    </div>
  </div>

</div>

<script>
    // Get the modal
    var modal = document.getElementById("myModal");

    // Get the button that opens the modal
    var btn = document.getElementById("myBtn");

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

    // When the user clicks the button, open the modal 
    btn.onclick = function () {
        modal.style.display = "block";
    }

    // When the user clicks on <span> (x), close the modal
    span.onclick = function () {
        modal.style.display = "none";
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>
  </div>

</div>

</asp:Content>