<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_Manager.aspx.cs" Inherits="Admin_Manager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
      <link rel="stylesheet" href="css/AdminManager.css">

    
    <input type="submit" value="View Product List"><hr />
    <h3>Enter New Product Details</h3>

<div class="adminmgrDiv">
  <form class="adminmgr" action="/action_page.php">
    <label for="fname">Product Name :</label>
    <input type="text" id="fname" name="firstname" placeholder="Your name..">

    <label for="photo">Product Image :</label>
        <input  type="file" name="photo" id="photo">
      <br />
   <label for="otherDetails">Other Details :</label>
      <textarea  name="otherDetails" cols="20" rows="2"></textarea>
  
    <input type="submit" value="Submit">
  </form>
</div>


</asp:Content>

