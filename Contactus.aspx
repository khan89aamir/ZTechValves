<%@ Page Title="" Language="C#" MasterPageFile="~/ZTechMasterPage.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Contactus" ClientIDMode="static" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">

    <%--DO NOT remove this Modal code from top of the page, else it wont Work--%>
    <!-- Modal -->
    <div class="modal fade" id="myModal" role="dialog">
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
                    <button type="button" class="btn btn-primary" onclick="ToAdminManager();" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>

    <script language="javascript">

        //function checkForm(form) {

        //    if (form.name.value == "") {
        //        alert("Please Enter a Name");
        //        form.name.focus();
        //        return false;
        //    }

        //    if (form.mobileno.value == "") {
        //        alert("Please Enter Mobile No.");
        //        form.subject.focus();
        //        return false;
        //    }

        //    if (form.mobileno.value.length < 10) {
        //        alert("Please Enter a 10 - digit Mobile No");
        //        form.mobileno.focus();
        //        return false;
        //    }

        //    if (form.mobileno.value != "") {
        //        mobno = form.mobileno.value;
        //        charpos = mobno.charAt(0);
        //        if (charpos == "0") {
        //            alert("Please Enter only 10 didgit Mobile No.Do not start with 0");
        //            return false;
        //        }
        //    }

        //    if (form.email.value == "") {
        //        alert("Kindly Enter E-mail ID.");
        //        form.email.focus();
        //        return false;
        //    }

        //    if (form.email.value.length != 0) {
        //        var e_check = form.email.value;
        //        if (form.email.value.indexOf(" ") != -1) {
        //            alert("Kindly Enter correct E-Mail ID without any spaces in it.");
        //            form.email.focus();
        //            return false;
        //        }

        //        if (form.email.value.indexOf("@") == -1) {
        //            alert("Invalid E-Mail ID! Kindly enter correct E-Mail ID.");
        //            form.email.focus();
        //            return false;
        //        }
        //        validarr = form.email.value.split("@");
        //        if (validarr[0].length == 0) {
        //            alert("Invalid E-Mail ID! Kindly enter the correct E-mail ID.");
        //            form.email.focus();
        //            return false;
        //        }
        //        if (validarr[1].indexOf("@") >= 0) {
        //            alert("Invalid E-Mail ID! Kindly enter the correct E-mail ID.");
        //            form.email.focus();
        //            return false;
        //        }
        //        if (validarr[1].length == 0) {
        //            alert("Invalid E-Mail ID! Kindly enter the correct E-mail ID.");
        //            form.email.focus();
        //            return false;
        //        }
        //        if (validarr[1].length != 0) {
        //            if (validarr[1].indexOf(".") == -1) {
        //                alert("Invalid E-Mail ID! Kindly enter the correct E-mail ID.");
        //                form.email.focus();
        //                return false;
        //            }
        //            validemail = validarr[1].split(".");
        //            if (validemail[0].length == 0) {
        //                alert("Invalid E-Mail ID! Kindly enter the correct E-mail ID.");
        //                form.email.focus();
        //                return false;
        //            }
        //            if (validemail[1].length == 0) {
        //                alert("Invalid E-Mail ID! Kindly enter the correct E-mail ID.");
        //                form.email.focus();
        //                return false;
        //            }
        //        }
        //    }

        //    if (form.subject.value == "") {
        //        alert("Please Enter subject.");
        //        form.subject.focus();
        //        return false;
        //    }

        //    if (form.message.value == "") {
        //        alert("Please enter a message");
        //        form.message.focus();
        //        return false;
        //    }
        //    return true;
        //}

        function only_digits1(e) {

            if (window.event) {
                if (e.keyCode >= '0'.charCodeAt(0) && e.keyCode <= '9'.charCodeAt(0)) return true;
                return false
            }
            else if (e.which) {
                if (e.which >= '0'.charCodeAt(0) && e.which <= '9'.charCodeAt(0) || e.which == 8 || e.which == 13) return true;
                return false
            }
        }
    </script>

    <!--The div element for the map -->
    <div class="centerDiv">

        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7344.345555985453!2d72.6308847!3d23.0174275!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e879b560865c1%3A0x61456816dae9c1d!2sZTECH%20Valves!5e0!3m2!1sen!2sin!4v1597944849972!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border: 0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
    </div>
    <br />
    <div class="centerDiv">
        <%--<div class="col-12">
                        <h2 class="contact-title">Get in Touch</h2>
                    </div>--%>
        <div class="col-lg-8">
            <%--<form name="form" class="form-contact contact_form" action="#" method="post" id="form1"  runat="server" onsubmit="return checkForm(form)">--%>
            <form name="form" class="needs-validation" novalidate id="form" runat="server">

                <%--<form class="form-contact contact_form" action="#" method="post" id="contactForm" novalidate="novalidate">--%>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <input class="form-control valid" name="name" id="name" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Name'" placeholder="Enter Name" required>
                            <div class="invalid-feedback text-left">
                                Please Enter Name.
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <input class="form-control valid" name="mobileno" id="mobileno" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Mobile No.'" placeholder="Enter Mobile No." onkeypress="return only_digits1(event);" maxlength="10" required>
                            <div class="invalid-feedback text-left">
                                Please Enter Mobile No.
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="form-group">
                            <input class="form-control valid" name="email" id="email" type="email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Email Address'" placeholder="Enter Email Address" maxlength="50" required>
                            <div class="invalid-feedback text-left">
                                Please Enter Email Address.
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="form-group">
                            <input class="form-control" name="subject" id="subject" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Subject'" placeholder="Enter Subject" required>
                            <div class="invalid-feedback text-left">
                                Please Enter Subject.
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="form-group">
                            <textarea class="form-control w-100" name="message" id="message" cols="30" rows="9"
                                onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Message'" placeholder=" Enter Message" required></textarea>
                            <div class="invalid-feedback text-left">
                                Please Enter Message.
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-md-12 text-right">
                        <asp:Button ID="btnEmail" class="btn btn-primary" runat="server" Text="Send" OnClientClick="validate()" OnClick="SendEMail" />
                        <button id="btnCancel" type="reset" class="btn btn-secondary" onclick="return confirm_reset();">Cancel</button>
                    </div>
                </div>
                <%--<div class="form-row">
                    <div class="col-md-6 mb-3 text-right">
                        <asp:Button ID="btnSave" class="btn btn-primary" runat="server" Text="Send" OnClientClick="validate()" OnClick="SendEMail" />
                    </div>
                </div>--%>
                <input type="text" id="NavigationURL" value="NA" runat="server" style="display: none" />
            </form>
        </div>

    </div>
    <br />

    <script>
        function validate() {

            var elements = document.getElementById("form").elements;
            var inc = 0;
            for (var i = 0, element; element = elements[i++];) {
                if ((element.type === "text") && element.value === "") {
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
                        else {
                            $("#spanmsg").text("Sending Email, Please Wait....");
                            $('#loadingBox').modal();
                        }
                        form.classList.add('was-validated');
                    }, false);
                });
            }, false);
        })();

        $(document).ready(function () {

            $("#btnCancel").click(function () {

                $(".custom-file-label").addClass("selected").html("");
            });

        });
        function confirm_reset() {
            return confirm("Are you sure, you want to cancel ?");
        }

    </script>

</asp:Content>
