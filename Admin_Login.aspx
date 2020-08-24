<%@ Page Title="" Language="C#" MasterPageFile="~/ZTechMasterPage.master" AutoEventWireup="true" CodeFile="Admin_Login.aspx.cs" Inherits="Admin_Login"  ClientIDMode="static"  %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">


   

    <form id="frmLogin" class="needs-validation Loginform" novalidate runat="server">
        <div class="form-row">
            <div class="col-md-12">
                <div class="alert alert-primary" role="alert" style="background-color: #06456f">
                    <h4 style="color: white; font-family: 'Times New Roman'">Admin Login</h4>
                </div>
                <hr />
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="fa fa-user fa-2x mt-1" style="color: #06456f"></span>&nbsp;
                    </div>
                    <input type="text" class="form-control text " id="val_UserName" placeholder="Enter User Name" required runat="server">
                    <div class="invalid-feedback text-left">
                        Please Enter User Name.
                    </div>
                </div>

                <div class="input-group mb-3">

                    <div class="input-group-prepend">

                        <span class="fa fa-lock fa-2x mt-1" style="color: #06456f"></span>&nbsp;
                    </div>
                    <input type="password" class="form-control" id="val_Password" placeholder="Enter Password" required runat="server">
                    <div class="invalid-feedback text-left">
                        Please Enter Password.
                    </div>
                </div>

            </div>

        </div>

        <span id="picSpinner" class="spinner-border spinner-border invisible" role="status" aria-hidden="true"></span>
        <asp:Button ID="btnLogin" class="btn btn-primary btn-block " Style="background-color: #06456f" type="submit" runat="server" Text="Login" OnClientClick="validate()" OnClick="btnLogin_Click" />
          <input type="text"  id="NavigationURL" value="NA" runat="server" style="display:none"/>

        <hr />

        <a href="#" class="link" style="color: #06456f" data-toggle="modal" data-target="#exampleModal">Forget Password?</a>
    </form>


    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Forget Pasword</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <form class="needs-validation" novalidate>
                        <div class="form-row">
                            <div class="col-md-12">
                                <div class="alert alert-primary" role="alert">
                                    Your password will be sent to this E-Mail ID
                                </div>


                                <label for="validationCustom01">E-Mail ID :</label>
                                <input type="email" class="form-control" id="validationCustom01" value="" placeholder="Enter Email address" required>
                            </div>

                        </div>
                        <br />
                        <button class="btn btn-primary" type="submit">Submit</button>
                    </form>



                </div>

            </div>
        </div>
    </div>
    <script>
        function validate() {

            var elements = document.getElementById("frmLogin").elements;
            var inc = 0;
            for (var i = 0, element; element = elements[i++];) {
                if ((element.type === "text" || element.type === "password") && element.value === "") {
                    inc++;
                }

            }
            if (inc == 0) {
                var element = document.getElementById("picSpinner");
                element.classList.remove("invisible");
                element.classList.add("visible");
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

