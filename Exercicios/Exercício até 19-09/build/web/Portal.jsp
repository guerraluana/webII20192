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
        <link rel="stylesheet" href="bootstrap.css" />
    </head>
    <body>
        <% 
            LoginBean bean = (LoginBean)session.getAttribute("LoginBean"); 
            if (bean == null){
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/erro.jsp");
                request.setAttribute("msg", "Faça login para continuar!");
                request.setAttribute("page", "index.html");
                rd.forward(request, response);
                return;
            } 
        %>
        <jsp:useBean id="LoginBean" class="beans.LoginBean" scope="session" />
        <h3> Bem vindo, <jsp:getProperty name="LoginBean" property="name" /> </h3>
        <a href="inserir.jsp" class="btn btn-primary"> Inserir </a>
        <div class="text-center"><a class="btn btn-danger" href="LogoutServlet">Sair</a></div>
        
        <jsp:useBean id="configuracao" class="beans.ConfigBean" scope="application"/>
        Em caso de problemas contactar o administrador: <jsp:getProperty name="configuracao" property="email" />
        <script src="bootstrap.js" />
    </body>
</html>
