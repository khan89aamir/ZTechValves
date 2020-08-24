<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/ZTechMasterPage.master" CodeFile="RequestHandler.aspx.cs" Inherits="RequestHandler" ClientIDMode="static" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
   
    <%-- event thought the page is blank, keep the empty form tag so that we can show the Model boxes --%>
    <form runat="server">
          <input type="text"  id="NavigationURL" value="NA" runat="server" style="visibility:hidden"/>
    </form>

 </asp:Content>

