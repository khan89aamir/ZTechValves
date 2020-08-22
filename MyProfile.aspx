<%@ Page Title="" Language="C#" MasterPageFile="~/ZTechMasterPage.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="MyProfile" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">

    <div class="container">
        <div class="alert alert-primary text-center" role="alert">
            <h3>My Profile </h3>
        </div>
        <div class="alert alert-warning" role="alert">
            <span class="fa fa-lightbulb-o fa-2x mr-2" style="color: #06456f"></span>Update your Email address and chnage your password.
        </div>


        <div class="card">
            <div class="card-header">
                E-Mail Address
            </div>
            <form class="needs-validation mt-2 ml-2" action="RequestHandler.aspx?action=changeEmail" method="post" novalidate>
                <div class="form-row">
                    <div class="col-md-4 mb-3">
                        <label for="validationCustom01">Email Address :</label>
                        <input type="email" class="form-control" name="txtemail" id="txtemail" placeholder="Enter mail address" required>
                        <div class="invalid-feedback">
                            Enter valid E-mail address
                        </div>
                    </div>

                </div>

                <button class="btn btn-primary" type="submit">Update</button>
            </form>
        </div>

        <div class="card mt-2">
            <div class="card-header">
                Change Password
            </div>
            <form name="myForm" class="needs-validation mt-2 ml-2" method="post" action="RequestHandler.aspx?action=changepass" onsubmit="return validateForm()" novalidate>
                <div class="form-row">
                    <div class="col-md-4 mb-3">
                        <label for="exampleInputPassword1">Old Password</label>
                        <input type="password" class="form-control" name="txtOldPassword" id="txtOldPassword" placeholder="Password" required>
                        <div class="invalid-feedback">
                            Enter Old password
                        </div>
                        <label for="exampleInputPassword1">New Password</label>
                        <input type="password" class="form-control" name="txtNewPassword" id="txtNewPassword" placeholder="Password" required>
                        <div class="invalid-feedback">
                            Enter New password
                        </div>
                        <p id="pass" class="text-danger">
                        </p>
                    </div>


                </div>

                <button class="btn btn-primary" type="submit">Update</button>
            </form>
        </div>

    </div>


    <script>

        function validateForm() {
            var x1 = document.forms["myForm"]["txtOldPassword"].value;
            var x2 = document.forms["myForm"]["txtNewPassword"].value;
            if (x1 != x2) {

                document.getElementById("pass").innerHTML = "Old password and New password doesn't match.";
                return false;
            }
        }

        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (function () {
            'use strict';
            window.addEventListener('load', function () {
                // Fetch all the forms we want to apply custom Bootstrap validation styles to
                var forms = document.getElementsByClassName('needs-validation');
                // Loop over them and prevent submission
                var validation = Array.prototype.filter.call(forms, function (form) {
                    form.addEventListener('submit', function (event) {
                        if (form.checkValidity() === false) {
                            event.preventDefault();
                            event.stopPropagation();
                        }
                        form.classList.add('was-validated');
                    }, false);
                });
            }, false);
        })();
    </script>

</asp:Content>

