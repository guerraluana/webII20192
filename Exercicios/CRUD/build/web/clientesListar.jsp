<%-- 
    Document   : clienteListar
    Created on : 02/10/2019, 21:19:48
    Author     : matheus
--%>

<%@page import="beans.Cliente"%>
<%@page import="java.util.List"%>
<%@page import="beans.LoginBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listagem de Clientes</title>
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
            <table class="table table-striped col-sm-4">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nome</th>
                        <th>CPF</th>
                        <th>Email</th>
                        <th>Ações</th>
                    </tr>
                </thead>
                <tbody>
                    <%  
                        List<Cliente> clientes = (List<Cliente>)request.getAttribute("clientes"); 
                        for(int i=0;i<clientes.size();i++){
                            out.println("<tr>");
                            out.println("<td>" + clientes.get(i).getId() + "</td>");
                            out.println("<td>" + clientes.get(i).getNome() + "</td>");
                            out.println("<td>" + clientes.get(i).getCpf() + "</td>");
                            out.println("<td>" + clientes.get(i).getEmail() + "</td>");
                            out.println("<td>"
                                    + "<a href=\"VisualizarClienteServlet?id=" + clientes.get(i).getId() + "\"><span class=\"glyphicon glyphicon-eye-open\"></span></a>&nbsp;&nbsp;&nbsp;"
                                    + "<a href=\"FormAlterarClienteServlet?id=" + clientes.get(i).getId() + "\"><span class=\"glyphicon glyphicon-pencil\"></span></a>&nbsp;&nbsp;&nbsp;"
                                    + "<a href=\"RemoverClienteServlet?id=" + clientes.get(i).getId() + "\"><span class=\"glyphicon glyphicon-trash\"></span></a>"
                                    + "</td>");
                            out.println("</tr>");
                        }
                    %>
                </tbody>
            </table>
        </div>
        <br />
        <div class="col-xs-12 text-center">
            <a class="btn btn-success" href="FormNovoClienteServlet"> Novo Cliente </a>
        </div>
    </body>
</html>
