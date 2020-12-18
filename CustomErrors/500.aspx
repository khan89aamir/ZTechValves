<%@ Page Language="C#" AutoEventWireup="true" CodeFile="500.aspx.cs" Inherits="CustomErrors_500" ClientIDMode="Static"%>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>500</title>

    <link href=<%=ConfigurationManager.AppSettings["host"]%>/CustomErrors/css/style.css rel="stylesheet" />
    <link href=<%=ConfigurationManager.AppSettings["host"]%>/css/bootstrap.min.css rel="stylesheet" />

    <script src=<%=ConfigurationManager.AppSettings["host"]%>/js/boostrap/jquery-3.2.1.slim.min.js></script>
</head>
<body>
    <form id="form1">
        <div id="notfound">
            <div class="notfound">
                <div class="notfound-404">
                    <h3>Internal Server Error</h3>
                    <h1><span>5</span><span>0</span><span>0</span></h1>
                </div>
                <h2>The server encountered an internal error or misconfiguration and was unable to complete your request.</h2>
                <h2>Please contact the server administrator to inform of the time the error occurred.</h2>
                <input type="button" name="btnHome" value="Go To Home Page" id="btnHome" class="btn btn-primary w-100">
            </div>
        </div>
        
    </form>
    <script>

        $("#btnHome").click(function () {
            window.location.href = "../Home.aspx";
        });

    </script>
</body>
</html>