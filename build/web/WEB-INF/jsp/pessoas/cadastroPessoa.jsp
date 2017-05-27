<%-- 
    Document   : cadastro
    Created on : 25/04/2017, 23:25:23
    Author     : Edson OliveiraJr <edson@din.uem.br> - www.din.uem.br/~smarty
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link href="<c:url value="resources/css/bootstrap/dist/css/bootstrap.min.css" />" rel="stylesheet" type="text/css" />
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
              <div class="navbar-header">
                <a class="navbar-brand" href="#">WebSiteName</a>
              </div>
              <ul class="nav navbar-nav">
                <li><a href="inicio">Inicio</a></li>
                <li class="active"><a href="cadastrarAlguem">Cliente</a></li>
                <li><a href="cadastrarConta">Conta</a></li>
                <li><a href="listarContas">Listar Contas</a></li>
                <li><a href="transacaoBancaria">Movimentar Contas</a></li>
              </ul>
            </div>
        </nav>

        <h1> Preencha o formulário abaixo</h1><br />

        <form action="persistePessoa" method="post">

            <!-- DADOS PESSOAIS-->
            <fieldset>
                <legend>Dados Pessoais</legend>
                <table cellspacing="10">
                    <tr>
                        <td>
                            <label for="nome">Nome: </label>
                        </td>
                        <td align="left">
                            <input type="text" class="form-control" name="nome">
                        </td>
                        <td>
                            <label for="sobrenome">Sobrenome: </label>
                        </td>
                        <td align="left">
                            <input type="text" class="form-control"  name="sobrenome">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Nascimento: </label>
                        </td>
                        <td align="left">
                            <input type="text" class="form-control" name="dia" size="2" maxlength="2" value="dd"> 
                            <input type="text" class="form-control" name="mes" size="2" maxlength="2" value="mm"> 
                            <input type="text" class="form-control" name="ano" size="4" maxlength="4" value="aaaa">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="rg">RG: </label>
                        </td>
                        <td align="left">
                            <input type="text" class="form-control" name="rg" size="13" maxlength="13"> 
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>CPF:</label>
                        </td>
                        <td align="left">
                            <input type="text" class="form-control" name="cpf" size="9" maxlength="9"> - <input type="text" class="form-control" name="cpf2" size="2" maxlength="2">
                        </td>
                    </tr>
                </table>
            </fieldset>

            <br />
            <!-- ENDEREÇO -->
            <fieldset>
                <legend>Dados de Endereço</legend>
                <table cellspacing="10">

                    <tr>
                        <td>
                            <label for="rua">Rua:</label>
                        </td>
                        <td align="left">
                            <input type="text" class="form-control" name="rua">
                        </td>
                        <td>
                            <label for="numero">Numero:</label>
                        </td>
                        <td align="left">
                            <input type="text" class="form-control" name="numero" size="4">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="bairro">Bairro: </label>
                        </td>
                        <td align="left">
                            <input type="text" class="form-control" name="bairro">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="estado">Estado:</label>
                        </td>
                        <td align="left">
                            <select name="estado"> 
                                <option value="ac">Acre</option> 
                                <option value="al">Alagoas</option> 
                                <option value="am">Amazonas</option> 
                                <option value="ap">Amapá</option> 
                                <option value="ba">Bahia</option> 
                                <option value="ce">Ceará</option> 
                                <option value="df">Distrito Federal</option> 
                                <option value="es">Espírito Santo</option> 
                                <option value="go">Goiás</option> 
                                <option value="ma">Maranhão</option> 
                                <option value="mt">Mato Grosso</option> 
                                <option value="ms">Mato Grosso do Sul</option> 
                                <option value="mg">Minas Gerais</option> 
                                <option value="pa">Pará</option> 
                                <option value="pb">Paraíba</option> 
                                <option value="pr">Paraná</option> 
                                <option value="pe">Pernambuco</option> 
                                <option value="pi">Piauí</option> 
                                <option value="rj">Rio de Janeiro</option> 
                                <option value="rn">Rio Grande do Norte</option> 
                                <option value="ro">Rondônia</option> 
                                <option value="rs">Rio Grande do Sul</option> 
                                <option value="rr">Roraima</option> 
                                <option value="sc">Santa Catarina</option> 
                                <option value="se">Sergipe</option> 
                                <option value="sp">São Paulo</option> 
                                <option value="to">Tocantins</option> 
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="cidade">Cidade: </label>
                        </td>
                        <td align="left">
                            <input type="text" class="form-control" name="cidade">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="cep">CEP: </label>
                        </td>
                        <td align="left">
                            <input type="text" class="form-control" name="cep" size="5" maxlength="5"> - <input type="text" class="form-control" name="cep2" size="3" maxlength="3">
                        </td>
                    </tr>
                </table>
            </fieldset>
            <br />

            <!-- DADOS DE LOGIN -->
            <fieldset>
                <legend>Dados de login</legend>
                <table cellspacing="10">
                    <tr>
                        <td>
                            <label for="email">E-mail: </label>
                        </td>
                        <td align="left">
                            <input type="text" class="form-control" name="email">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="imagem">Imagem de perfil:</label>
                        </td>
                        <td>
                            <input type="file" name="imagem" >

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="login">Login de usuário: </label>
                        </td>
                        <td align="left">
                            <input type="text" class="form-control" name="login">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="pass">Senha: </label>
                        </td>
                        <td align="left">
                            <input type="password" name="pass">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="passconfirm">Confirme a senha: </label>
                        </td>
                        <td align="left">
                            <input type="password" name="passconfirm">
                        </td>
                    </tr>
                </table>
            </fieldset>
            <br />
            <input type="submit" class="btn btn-primary">
            <input type="reset" class="btn btn-default" value="Limpar">
        </form>



    </body>
</html>
