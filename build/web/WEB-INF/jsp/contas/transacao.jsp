<%-- 
    Document   : transacao
    Created on : 20/05/2017, 13:53:37
    Author     : Emerson
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transação Bancária</title>
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
                    <li><a href="listarContas">Listar Contas</a></li>
                    <li class="active"><a href="transacaoBancaria">Movimentar Contas</a></li>
                </ul>
                <ul class="nav navbar-nav pull-right">
                    <li><a href="logout">Sair</a></li>
                </ul>
            </div>
        </nav>
        <div class="container">
            <div class="col-xs-6">
                <form class="form" action="movimentar" method="post" ${requestScope.hiddenTransaction}>
                    <fieldset>
                        <legend>Transação</legend>
                        <input type="hidden" class="form-control" id="banco" name="banco" value="${requestScope.banco}">
                        <input type="hidden" class="form-control" id="agencia" name="agencia" value="${requestScope.agencia}">
                        <input type="hidden" class="form-control" id="conta" name="conta" value="${requestScope.conta}">
                        <input type="hidden" class="form-control" id="digito" name="digito" value="${requestScope.digito}">
                        
                        <div class="form-group row">
                            <label for="saldo" class="col-xs-12 col-form-label mr-2">Saldo</label>
                            <div class="col-xs-4">
                                <input type="number" step="0.01" class="form-control" id="saldo" value="${requestScope.saldo}" name="saldo" disabled >
                            </div>  
                        </div>
                        <div class="form-group row">
                            <label for="valor" class="col-xs-12 col-form-label mr-2">Valor</label>
                            <div class="col-xs-4">
                                <input type="number" step="0.01" class="form-control" id="valor" name="valor">
                            </div>  
                        </div>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="tipotransacao" id="tipotransacao1" value="0">
                                Sacar
                            </label>
                            <label class="form-check-label" style="margin-left: 30px;">
                                <input type="radio" class="form-check-input" name="tipotransacao" id="tipotransacao2" value="1">
                                Depositar
                            </label>
                        </div>
                        <div class="form-check">
                        
                        </div>
                    </fieldset>
                    <button type="submit" class="btn btn-success">Confirmar</button>
                </form>
            </div>
        </div>
        <c:if test="${not empty msgErrorTransacao}">
            <script>
                alert("${msgErrorTransacao}");
            </script>
        </c:if>
    </body>
</html>
