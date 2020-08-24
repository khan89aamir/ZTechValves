<%@ Page Title="" Language="C#" MasterPageFile="~/ZTechMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
  <div class="navbar navbar-inverse navbar-fixed-top">
    <div class="container" id="container">
        <div class="navbar-header">

            <div class="navbar-brand"><a href="nature.html">Project Nature</a></div>

            <button class="navbar-toggle" data-toggle="collapse" data-target="navHeaderCollapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>

        <div class="collapse navbar-collapse navHeaderCollapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="active dropdown">

                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Nature <b class="caret"></b></a>

                    <ul class="dropdown-menu">
                        <li><a href="#"><a href="#">Plants</a></a></li>
                        <li><a href="#"><a href="#">Landscapes</a></a></li>
                        <li><a href="#"><a href="#">Animals</a></a></li>
                        <li><a href="#"><a href="#">Elements</a></a></li>
                    </ul>
                </li>

                <li><a href="#">Gallery</a></li>
                <li><a href="#">Blah</a></li>
                <li><a href="#contact" data-toggle="modal">Contact</a></li>

                <li class="dropdown">

                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Social Media <b class="caret"></b></a>

                    <ul class="dropdown-menu">
                        <li><a href="#"><a href="#">Twitter</a></a></li>
                        <li><a href="#"><a href="#">Facebook</a></a></li>
                        <li><a href="#"><a href="#">Google+</a></a></li>
                        <li><a href="#"><a href="#">LinkedIn</a></a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>


</div>

        
</asp:Content>

