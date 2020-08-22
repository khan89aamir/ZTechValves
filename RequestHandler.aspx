<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RequestHandler.aspx.cs" Inherits="RequestHandler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
     <link href="css/font-awesome.min.css" rel="stylesheet" />
    <script src="js/boostrap/jquery-3.2.1.slim.min.js"></script>
    <script src="js/boostrap/bootstrap.min.js"></script>
    
</head>
<body>
      <%--DO NOT remove this Modal code from top of the page, else it wont Work--%>
    <!-- Modal -->
    <div class="modal fade" id="myModal" role="dialog" data-backdrop="static" >
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
                    <button type="button" runat="server" class="btn btn-primary" onserverclick="DoPageNavigation_ServerClick" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>
    <form id="form1" runat="server">
        <div>

        </div>
    </form>
</body>
</html>
