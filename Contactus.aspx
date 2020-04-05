<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
   
  <script language="javascript">
      function checkForm(form) {

          if (form.name.value == "") {
              alert("Please Enter a Name");
              form.name.focus();
              return false;
          }

          if (form.mobileno.value == "") {
              alert("Please Enter Mobile No.");
              form.subject.focus();
              return false;
          }

          if (form.mobileno.value.length < 10) {
              alert("Please Enter a 10 - digit Mobile No");
              form.mobileno.focus();
              return false;
          }

          if (form.mobileno.value != "") {
              mobno = form.mobileno.value;
              charpos = mobno.charAt(0);
              if (charpos == "0") {
                  alert("Please Enter only 10 didgit Mobile No.Do not start with 0");
                  return false;
              }
          }

          if (form.email.value == "") {
              alert("Kindly Enter E-mail ID.");
              form.email.focus();
              return false;
          }

          if (form.email.value.length != 0) {
              var e_check = form.email.value;
              if (form.email.value.indexOf(" ") != -1) {
                  alert("Kindly Enter correct E-Mail ID without any spaces in it.");
                  form.email.focus();
                  return false;
              }

              if (form.email.value.indexOf("@") == -1) {
                  alert("Invalid E-Mail ID! Kindly enter correct E-Mail ID.");
                  form.email.focus();
                  return false;
              }
              validarr = form.email.value.split("@");
              if (validarr[0].length == 0) {
                  alert("Invalid E-Mail ID! Kindly enter the correct E-mail ID.");
                  form.email.focus();
                  return false;
              }
              if (validarr[1].indexOf("@") >= 0) {
                  alert("Invalid E-Mail ID! Kindly enter the correct E-mail ID.");
                  form.email.focus();
                  return false;
              }
              if (validarr[1].length == 0) {
                  alert("Invalid E-Mail ID! Kindly enter the correct E-mail ID.");
                  form.email.focus();
                  return false;
              }
              if (validarr[1].length != 0) {
                  if (validarr[1].indexOf(".") == -1) {
                      alert("Invalid E-Mail ID! Kindly enter the correct E-mail ID.");
                      form.email.focus();
                      return false;
                  }
                  validemail = validarr[1].split(".");
                  if (validemail[0].length == 0) {
                      alert("Invalid E-Mail ID! Kindly enter the correct E-mail ID.");
                      form.email.focus();
                      return false;
                  }
                  if (validemail[1].length == 0) {
                      alert("Invalid E-Mail ID! Kindly enter the correct E-mail ID.");
                      form.email.focus();
                      return false;
                  }
              }
          }

          if (form.subject.value == "") {
              alert("Please Enter subject.");
              form.subject.focus();
              return false;
          }

          if (form.message.value == "") {
              alert("Please enter a message");
              form.message.focus();
              return false;
          }
          return true;
      }

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

     <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d545.8711936861341!2d72.63406011940768!3d23.017564794760062!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e86872fffffff%3A0x8d3654809a84a969!2sOmex%20Elevator!5e0!3m2!1sen!2sin!4v1584785501876!5m2!1sen!2sin" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
  </div>
    <br />
    <div class="centerDiv">
                    <%--<div class="col-12">
                        <h2 class="contact-title">Get in Touch</h2>
                    </div>--%>
                    <div class="col-lg-8">
                      <form name="form" class="form-contact contact_form" action="#" method="post" id="form"  onSubmit="return checkForm(form)">

                            <%--<form class="form-contact contact_form" action="#" method="post" id="contactForm" novalidate="novalidate">--%>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <input class="form-control valid" name="name" id="name" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Name'" placeholder="Enter Name">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <input class="form-control valid" name="mobileno" id="mobileno" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Mobile No.'" placeholder="Enter Mobile No." onKeyPress ="return only_digits1(event);" maxlength="10">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <input class="form-control valid" name="email" id="email" type="email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Email Address'" placeholder="Enter Email Address">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <input class="form-control" name="subject" id="subject" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Subject'" placeholder="Enter Subject">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <textarea class="form-control w-100" name="message" id="message" cols="30" rows="9" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Message'" placeholder=" Enter Message"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group mt-3">
                                <%--<button name="Submit" type="submit" id="Submit" class="button button-contactForm boxed-btn">Send</button>--%>
                                <input class="button button-contactForm boxed-btn" name="Submit" type="submit" id="Submit" value="Submit" />
                            </div>
                        </form>
                    </div>
                    
                </div>
    <br />
</asp:Content>