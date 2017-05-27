<%-- 
    Document   : listagemContas
    Created on : 20/05/2017, 12:13:27
    Author     : Emerson
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listagem de Contas</title>
        <link href="<c:url value="resources/css/bootstrap/dist/css/bootstrap.min.css" />" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
              <div class="navbar-header">
                <a class="navbar-brand" href="#">WebSiteName</a>
              </div>
              <ul class="nav navbar-nav">
                <li><a href="inicio">Inicio</a></li>
                <li><a href="cadastrarAlguem">Cliente</a></li>
                <li><a href="cadastrarConta">Conta</a></li>
                <li class="active"><a href="listarContas">Listar Contas</a></li>
                    <li><a href="transacaoBancaria">Movimentar Contas</a></li>
              </ul>
            </div>
        </nav>
        
        <div class="container">
            <table class="table table-bordered table-condensed">
                <tr>
                    <th>Banco</th>
                    <th>Agencia</th>
                    <th>Conta</th>
                    <th>CPF</th>
                    <th>Saldo</th>
                </tr>
                <tbody>
            <c:forEach var="conta" items="${sessionScope.contas}"> 
                <tr>
                    <td>${conta.banco}</td>
                    <td>${conta.agencia}</td>
                    <td>${conta.digito} - ${conta.digito}</td>
                    <td>${conta.cpf} </td>
                    <td>${conta.saldo} </td>
                </tr> 
            </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>
