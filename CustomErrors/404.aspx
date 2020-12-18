<%@ Page Language="C#" AutoEventWireup="true" CodeFile="404.aspx.cs" Inherits="CustomErrors_404" ClientIDMode="Static"%>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>404</title>

    <link href=<%=ConfigurationManager.AppSettings["host"]%>/CustomErrors/css/style.css rel="stylesheet" />
    <link href=<%=ConfigurationManager.AppSettings["host"]%>/css/bootstrap.min.css rel="stylesheet" />

    <script src=<%=ConfigurationManager.AppSettings["host"]%>/js/boostrap/jquery-3.2.1.slim.min.js></script>
</head>
<body>
    <form id="form1">
        <div id="notfound">
            <div class="notfound">
                <div class="notfound-404">
                    <h3>Oops! Page not found</h3>
                    <h1><span>4</span><span>0</span><span>4</span></h1>
                </div>
                <h2>we are sorry, but the page you requested was not found</h2>
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