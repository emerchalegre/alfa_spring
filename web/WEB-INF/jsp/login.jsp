<%-- 
    Document   : login
    Created on : 20/05/2017, 12:56:57
    Author     : Emerson
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login - Frameworks Java</title>
        <link href="<c:url value="resources/css/bootstrap/dist/css/bootstrap.min.css" />" rel="stylesheet" type="text/css" />
        <link href="<c:url value="resources/css/signin.css" />" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <div class="container">
            
            <form class="form-signin" action="logar" method="post">
                <h2 class="form-signin-heading">Login</h2>
                <label for="inputLogin" class="sr-only">Usuário</label>
                <input type="text" id="inputLogin" name="inputLogin" class="form-control" placeholder="Usuário" required autofocus>
                <label for="inputPassword" class="sr-only">Senha</label>
                <input type="password" id="inputPassword" name="inputPassword" class="form-control" placeholder="Senha" required>
                <button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
            </form>
            <c:if test="${not empty submitDone}">
                <h4 style="text-align: center; color: red;">Usuário/Senha inválido</h4>
            </c:if>
        </div>
    </body>
</html>
