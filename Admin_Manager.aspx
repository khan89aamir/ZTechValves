<%@ Page Title="" Language="C#" MasterPageFile="~/ZTechMasterPage.master" AutoEventWireup="true" CodeFile="Admin_Manager.aspx.cs" Inherits="Admin_Manager" ClientIDMode="static" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">

    <%--DO NOT remove this Modal code from top of the page, else it wont Work--%>
    <!-- Modal -->
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">ZTech</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>

                </div>
                <div class="modal-body">
                    <%--    <p id="lblMessage" class="text-center alert-dark" runat="server">Title</p>--%>
                    <i class="fa fa-check-circle fa-2x" style="color: green"></i>

                    <label id="lblMessage" class="text-center h4 mt-3" runat="server">Product Description :</label>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" onclick="ToAdminManager();" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>

    <div class="container">
        <div class="alert alert-primary text-center" role="alert">
            <h3>Admin Panel </h3>
        </div>
        <div class="alert alert-warning" role="alert">
            <span class="fa fa-lightbulb-o fa-2x mr-2" style="color: #06456f"></span>Click on <b>Login By->My Profile</b> to update your password
        </div>

        <form class="needs-validation" novalidate runat="server">
            <div class="form-row">
                <div class="col-md-6">
                    <label for="cmbProduct">Select Your Product :</label>
                    <asp:DropDownList ID="cmbProduct" class="custom-select" name="cmdProducts" runat="server" required="true">
                    </asp:DropDownList>

                    <div class="invalid-feedback">
                        Please select your product.
                    </div>
                </div>

            </div>
            <div class="form-row mt-1">
                <div class="col-md-6">


                    <span class="btn btn-outline-primary ParentSpan" runat="server">
                        <i class="fa fa-pencil-square-o"></i>
                        <asp:Button ID="btnUpdateProduct" CssClass="MySubmitbtn" runat="server" Text="Update Product" OnClick="btnUpdateProduct_Click" />
                    </span>

                    <span class="btn btn-outline-primary ParentSpan">
                        <i class="fa fa-picture-o"></i>
                        <asp:Button ID="btnUpdateImage" CssClass="MySubmitbtn" runat="server" Text="Update Images" OnClick="btnUpdateImage_Click" />
                    </span>

                </div>

            </div>
        </form>
    </div>
    <hr />
    <script>


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
                        else {
                            // if validtion is OK then only show the loading message
                            $("#spanmsg").text("Loading Please Wait.....");
                            $('#loadingBox').modal();
                        }
                        form.classList.add('was-validated');
                    }, false);
                });
            }, false);
        })();
        function UpdateDetails() {

            var cmbProduct = document.getElementById("validationCustom04");
            if (cmbProduct.selectedIndex > 0) {

                document.getElementById("pnlDetails").style.display = "none";
                document.getElementById("pnlUpdateProduct").style.display = "block";
            }
        }

        $(document).ready(function () {

            // Add the following code if you want the name of the file appear on select
            $(".custom-file-input").on("change", function () {
                var fileName = $(this).val().split("\\").pop();
                $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
            });
        });

    </script>
</asp:Content>