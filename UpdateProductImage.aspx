<%@ Page Title="" Language="C#" MasterPageFile="~/ZTechMasterPage.master" AutoEventWireup="true" CodeFile="UpdateProductImage.aspx.cs" Inherits="UpdateProductImage" ClientIDMode="static" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">



    <%--DO NOT remove this Modal code from top of the page, else it wont Work--%>
    <!-- Modal -->
    <div class="modal fade" id="myModal" role="dialog" data-backdrop="static">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">SALKI</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>

                </div>
                <div class="modal-body">
                    <%--    <p id="lblMessage" class="text-center alert-dark" runat="server">Title</p>--%>
                    <i class="fa fa-check-circle fa-2x" style="color: green"></i>

                    <label id="lblMessage" class="text-center h4 mt-3" runat="server">Product Description :</label>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>

    <div id="pnlUpdatImages" class="container">

        <form class="needs-validation" novalidate runat="server" enctype="multipart/form-data">
            <div class="row">
                <div class="col-md-6">
                    <label for="txtProductName">Product Name :</label>
                    <%=ProductName %>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 ml-3">

                    <asp:FileUpload runat="server" class="custom-file-input" ID="ctrUploadFile" AllowMultiple="true" required="true" />

                    <label class="custom-file-label" for="files">Choose file...</label>
                    <div class="invalid-feedback">Select your image files.</div>
                </div>
            </div>


            <div class="row mt-3">
                <div class="col-md-6">
                    <input type="checkbox" id="chkSetMainImage" onclick="showInfo()" value="MainImage" runat="server">
                    <label for="chkSetMainImage">Set Banner Image</label><br>
                    <asp:Label runat="server" ID="chkwarning" class="text-danger" Visible="false">Please select single image for setting Main Image.</asp:Label>

                    <p id="bannerInfo" class="alert alert-warning" style="display: none">
                        1. Banner Images need to be designed by Template given in this link.
                        <br />
                        <a href="Download/ZTechBannerTemplate.pptx">Click Here</a> to download the template to design banner image.<br />
                        <br />
                        2. Product Image on banner must be transparent , To make your product image transparent please visit <a href="https://pixlr.com/remove-background/" target="_blank">pixlr.com</a>

                    </p>




                </div>

            </div>
            <div class="row mt-2">
                <div class="col-md-6">
                    <div id="selectedFiles"></div>
                </div>

            </div>
            <div class="row mt-2">
                <div class="col-md-6">

                    <span class="btn btn-outline-primary ParentSpan">
                        <i class="fa fa-floppy-o"></i>
                        <asp:Button ID="btnSaveImage" CssClass="MySubmitbtn" runat="server" Text="Save Image" OnClick="btnSave_Click" />
                    </span>

                </div>

            </div>
        </form>
        <hr class="w-100" />
        <div class="row">
            <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>
                    <div class="col-md-4">

                        <div class="card border-success h-100" style="max-width: 18rem;">
                            <div class="card-header"><%# Eval("ImageName")%></div>
                            <div class="card-body text-success">
                                <img class="card-img-top" src="<%# Eval("Path")%>" alt="Card image cap">
                            </div>
                            <div class="card-footer">
                                <%-- we can not have multiple forms thats why created html form  --%>
                                <form id='<%# "frm"+Eval("ImageID")%>' method="post" action="RequestHandler.aspx?action=deleteimg" >
                                    
                                    <input name="ImageID" style="display:none" type="text" value="<%# Eval("ImageID")%>" id="ImageID" />
                                    <input name="ImageName" type="text" value="<%# Eval("ImageName")%>" id="ImageName" hidden />
                                    
                                </form>
                                <%-- Keeping the below button out of the form, because needs to show the confirm box. ( else it will get submited) --%>
                                <input class="btn-sm btn-primary" type="submit"  name="btnDeleteImage" value="Delete" id='<%# Eval("ImageID")%>' />
                              


                            </div>
                        </div>



                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <label id="lblSelectedFormID" style="display:none">Selected Form ID</label>
           
        </div>
        
    </div>
  
    
    <script>
        var inputElement = document.getElementById("ctrUploadFile");
        inputElement.onchange = function (event) {

            var fileList = inputElement.files;
            for (var i = 0; i < fileList.length; i++) {

                var name = fileList[i].name;
                document.getElementById("selectedFiles").innerHTML += "<br>" + name;
            }
            if (fileList.length > 1) {
                disable();
            }
            else {
                enable();
            }
        }
        function enable() {
            var x = document.getElementById("chkSetMainImage").disabled = false;

        }

        function disable() {


            document.getElementById("chkSetMainImage").disabled = true;
        }
        function showInfo() {

            if (document.getElementById("chkSetMainImage").checked) {

                document.getElementById("bannerInfo").style.display = "block";
            }
            else {
                document.getElementById("bannerInfo").style.display = "none";
            }

        }
    </script>
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
                            $("#spanmsg").text("Updating Image Please Wait.....");
                            $('#loadingBox').modal();
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
                $("#picImg").attr("src", $(this).val());

            });

            $("#btnCancel").click(function () {

                $(".custom-file-label").addClass("selected").html("");
            });

            $("#btnPicDelete").click(function () {

            $(".custom-file-label").addClass("selected").html("");
            });

            //// there could be multiple delete button so accessing it with attribute.
            $("[name='btnDeleteImage']").click(function (e) {
                
                $("#spanConfirmMsg").text("Are you sure, you want to delete the image ?");

                // save the selected ID so that we can use it when submiting the form
                $('#lblSelectedFormID').text(e.currentTarget.id);

              
                $('#confirmationModel').modal();

            });
            //// this button is on confrimation model which is there in Master page.
            $("#btnConfirm").click(function () {

                // get the form name in single quote
                var formToSubmit = 'frm' + $('#lblSelectedFormID').text();

             

              // submit the form and delte the image
                $('#'+formToSubmit).submit();

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

