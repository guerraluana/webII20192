<%-- 
    Document   : clienteVisualizar
    Created on : 02/10/2019, 21:57:57
    Author     : matheus
--%>

<%@page import="beans.Cliente"%>
<%@page import="beans.LoginBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Cliente</title>
        <link rel="stylesheet" href="css/bootstrap.css" />
    </head>
    <body>
        <% 
            LoginBean bean = (LoginBean)session.getAttribute("LoginBean"); 
            if (bean == null){
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
                request.setAttribute("msg", "Usuário deve se autenticar para acessar o sistema!");
                rd.forward(request, response);
                return;
            }
            
            //Cliente cliente = (Cliente)request.getAttribute("cliente");
        %>
        
        <nav class="navbar navbar-default">
            <div class="container-fluid">
              <div class="navbar-header">
                <a class="navbar-brand" href="#">Web 2</a>
              </div>
              <ul class="nav navbar-nav">
                <li><a href="Portal.jsp">Home</a></li>
                <li class="active"><a href="ClientesServlet">Cadastro de Clientes</a></li>
              </ul>
              <ul class="nav navbar-nav navbar-right">
                <!--<li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>-->
                <li><a>Olá, <jsp:getProperty name="LoginBean" property="name" /></a></li>
                <li><a href="LogoutServlet"><span class="glyphicon glyphicon-log-out"></span> Sair</a></li>
              </ul>
            </div>
        </nav> 
        
        <jsp:useBean id="cliente" class="beans.Cliente" scope="request" />
        
        <div class="container">
            <div class="col-xs-6 col-xs-offset-3">
                <form action="AlterarClienteServlet" method="post">
                    <input type="hidden" name="id" value="<jsp:getProperty name="cliente" property="id" />"/>
                    <div class="form-group">
                        <label>Nome</label>
                        <input type="text" name="nome" class="form-control" value="<jsp:getProperty name="cliente" property="nome" />">
                    </div>

                    <div class="form-group">
                        <label>Email</label>
                        <input type="text" name="email" class="form-control" value="<jsp:getProperty name="cliente" property="email" />">
                    </div>

                    <div class="form-group">
                        <label>CPF</label>
                        <input type="text" name="cpf" class="form-control" value="<jsp:getProperty name="cliente" property="cpf" />">
                    </div>

                    <div class="form-group">
                        <label>Data</label>
                        <input type="date" name="data" class="form-control" value="<jsp:getProperty name="cliente" property="data" />">
                    </div>

                    <div class="form-group">
                        <label>CEP</label>
                        <input type="number" name="cep" class="form-control" value="<jsp:getProperty name="cliente" property="cep" />">
                    </div>

                    <div class="form-group">
                        <label>Rua</label>
                        <input type="text" name="rua" class="form-control" value="<jsp:getProperty name="cliente" property="rua" />">
                    </div>

                    <div class="form-group">
                        <label>Número</label>
                        <input type="numver" name="numero" class="form-control" value="<jsp:getProperty name="cliente" property="numero" />">
                    </div>

                    <div class="form-group">
                        <label>UF</label>
                        <input type="text" name="uf" class="form-control" value="<jsp:getProperty name="cliente" property="uf" />">
                    </div>

                    <div class="form-group">
                        <label>Cidade</label>
                        <input type="text" name="cidade" class="form-control" value="<jsp:getProperty name="cliente" property="cidade" />">
                    </div>

                    <br />

                    <div class="">
                        <a href="ClientesServlet" class="btn btn-danger pull-left"> Voltar </a>
                        <button type="submit" class="btn btn-success pull-right"> Atualizar </button>
                    </div>
                </form>
            </div>        
        </div>
    </body>
</html>
