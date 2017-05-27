<%-- 
    Document   : index
    Created on : 06/05/2017, 13:20:03
    Author     : Faculdade Alfa
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Frameworks Java - Alfa</title>
        <link href="<c:url value="resources/css/bootstrap/dist/css/bootstrap.min.css" />" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
              <div class="navbar-header">
                <a class="navbar-brand" href="#">WebSiteName</a>
              </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="inicio">Inicio</a></li>
                    <li><a href="cadastrarAlguem">Cliente</a></li>
                    <li><a href="cadastrarConta">Conta</a></li>
                    <li><a href="listarContas">Listar Contas</a></li>
                    <li><a href="transacaoBancaria">Movimentar Contas</a></li>
                </ul>
                <ul class="nav navbar-nav pull-right">
                    <li><a href="logout">Sair</a></li>
                </ul>
            </div>
        </nav>
    </body>
</html>
