<%-- 
    Document   : cadastroConta
    Created on : 20/05/2017, 10:13:43
    Author     : Emerson
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Contas</title>
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
                    <li class="active"><a href="cadastrarConta">Conta</a></li>
                    <li><a href="listarContas">Listar Contas</a></li>
                    <li><a href="transacaoBancaria">Movimentar Contas</a></li>
              </ul>
                <ul class="nav navbar-nav pull-right">
                    <li><a href="logout">Sair</a></li>
                </ul>
            </div>
        </nav>
        <div class="container">
        <h1>Cadastro de Conta</h1>
        
        <form method="post" action="persisteConta">
            <div class="form-group row">
                <label for="agencia" class="col-xs-12 col-form-label mr-2">Agência</label>
                <div class="col-xs-2">
                    <select id="banco" name="banco" class="form-control">
                        <option id="1">Banco de Brasil</option>
                        <option id="2">Bradesco</option>
                        <option id="3">Caixa Economica</option>
                        <option id="4">Sicredi</option>
                        <option id="5">Santander</option>
                        <option id="6">Itaú</option>
                        <option id="7">Safra</option>
                        
                    </select>
                </div>  
            </div>
            <div class="form-group row">
                <label for="agencia" class="col-xs-12 col-form-label mr-2">Agência</label>
                <div class="col-xs-2">
                    <input type="number" step="1" class="form-control" id="agencia" name="agencia" placeholder="Agência">
                </div>  
            </div>
            <div class="form-group row">
                <label for="conta" class="col-xs-12 col-form-label mr-2">Conta/Digito</label>
                <div class="col-xs-2">
                    <input type="text" class="form-control" id="conta" name="conta" placeholder="Conta">
                </div>
                <div class="col-xs-1">
                    <input type="text" class="form-control" id="digito" name="digito" placeholder="Digito">
                </div>
                <input type="hidden" name="saldo" id="saldo" value="0.0" />
            </div>
            
            <div class="form-group row">
                <label for="cpf" class="col-xs-12 col-form-label mr-2">Cliente</label>
                    <div class="col-xs-2">
                        <input type="text" class="form-control" id="cpf" name="cpf" placeholder="CPF">
                    </div>
                    <div class="col-xs-10">
                        <input type="text" class="form-control" id="nome" name="nome" placeholder="Nome">
                    </div>
            </div>
            <button type="submit" class="btn btn-primary">Gravar</button>
        </form>
        
        </div>
    </body>
</html>
