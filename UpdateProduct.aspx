<%@ Page Title="" Language="C#" MasterPageFile="~/ZTechMasterPage.master" AutoEventWireup="true" CodeFile="UpdateProduct.aspx.cs" Inherits="UpdateProduct" ClientIDMode="static" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">



    <div id="pnlUpdateProduct" class="container" runat="server">
        <div class="alert alert-primary">
            <span class="fa fa-lightbulb-o fa-2x mr-2" style="color: #06456f"></span>Change your product details and click on Update button.
        </div>
        <form class="needs-validation" novalidate runat="server" enctype="multipart/form-data">
            <div class="form-row">
                <div class="col-md-6 mb-3">
                    <label for="txtProductName">Product Name :</label>
                    <input type="text" class="form-control" id="txtProductName" name="txtProductName" placeholder="Product Name" value="<%=ProductName %>" required />
                    <div class="invalid-feedback">
                        Please Enter Product Name.
                    </div>

                </div>

            </div>

            <div class="form-row">
                <div class="col-md-6 mb-3">
                    <label for="txtProdDesc">Product Description :</label>
                    <textarea class="form-control" rows="5" id="txtProdDesc" name="txtProdDesc" placeholder="Product Description." required><%=Description %></textarea>
                    <div class="invalid-feedback">
                        Please enter product description.
                    </div>

                </div>

            </div>
            <div class="form-row">
                <div class="col-md-6 mb-3">
                    <label for="txtConsFeature">Construction Feature :</label>
                    <textarea class="form-control" rows="10" id="txtConsFeature" name="txtConsFeature" placeholder="Construction Feature..." required><%=ConstFeatures %></textarea>
                    <div class="invalid-feedback">
                        Please enter Construction Feature
                    </div>

                </div>

            </div>
            <div class="form-row">
                <div class="col-md-6 mb-3">
                    <label for="txtSizeDetails">Size Details :</label>
                    <textarea class="form-control" rows="3" id="txtSizeDetails" name="txtSizeDetails" placeholder="Size Details..." required><%=SizeDetails %></textarea>
                    <div class="invalid-feedback">
                        Please enter Size Details
                    </div>

                </div>

            </div>
            <div class="form-row">
                <div class="col-md-6 mb-3 text-right">
                    <asp:Button ID="btnSave" class="btn btn-primary" runat="server" Text="Update" OnClick="btnSave_Click" />
                    <button id="btnCancel" type="reset" class="btn btn-secondary" onclick="return confirm_reset();">Cancel</button>


                </div>

            </div>


        </form>
    </div>


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
                        form.classList.add('was-validated');
                    }, false);
                });
            }, false);
        })();


    </script>
    <script>

        $(document).ready(function () {

            // Add the following code if you want the name of the file appear on select
            $(".custom-file-input").on("change", function () {
                var fileName = $(this).val().split("\\").pop();
                $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
            });

            $("#btnCancel").click(function () {

                $(".custom-file-label").addClass("selected").html("");
            });

        });
        function confirm_reset() {
            return confirm("Are you sure, you want to cancel ?");
        }

        function ToAdminManager() {
            window.location.href = 'Admin_Manager.aspx';
        }
    </script>
</asp:Content>

