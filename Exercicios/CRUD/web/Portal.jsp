<%-- 
    Document   : Portal
    Created on : 19/09/2019, 15:19:59
    Author     : matheus
--%>

<%@page import="beans.LoginBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Portal</title>
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
        <jsp:useBean id="LoginBean" class="beans.LoginBean" scope="session" />
        
         <nav class="navbar navbar-default">
            <div class="container-fluid">
              <div class="navbar-header">
                <a class="navbar-brand" href="#">Web 2</a>
              </div>
              <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="ClientesServlet">Cadastro de Clientes</a></li>
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
            
        </div>
        
        <div class="footer navbar-fixed-bottom" style="position:absolute;bottom:0;width:100%">
            <div class="container text-center">
                <small>
                    <jsp:useBean id="configuracao" class="beans.ConfigBean" scope="application"/>
                    Em caso de problemas contactar o administrador: <jsp:getProperty name="configuracao" property="email" />
                </small>
            </div>
        </div>
        
        <script src="bootstrap.js" />
    </body>
</html>
