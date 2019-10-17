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
        <title>Detalhes Cliente</title>
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
            
            Cliente cliente = (Cliente)request.getAttribute("cliente");
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
                
        
        
        <div class="container">
            <div class="col-sm-10">
                <label class="text-right">Nome:</label>
                <% out.println(cliente.getNome());%>
                
                <br />
                
                <label class="text-right">Email:</label>
                <% out.println(cliente.getEmail());%>

                <br />

                <label class="text-right">CPF:</label>
                <% out.println(cliente.getCpf());%>

                <br />

                <label class="text-right">Data:</label>
                <% out.println(cliente.getData());%>

                <br />

                <label class="text-right">Endereço:</label>
                <% out.println(cliente.getRua() + ", " + cliente.getNumero() + " - " + cliente.getCep() + ", " + cliente.getCidade() + ", " + cliente.getUf());%>
                
                <br />
                
                <a href="ClientesServlet" class="btn btn-danger"> Voltar </a>
                <a href="FormAlterarClienteServlet?id=<% out.println(cliente.getId()); %>" class="btn btn-primary"> Editar </a>
                
            </div>
        </div>
                
    </body>
</html>
