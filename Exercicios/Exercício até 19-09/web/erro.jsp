<%-- 
    Document   : erro
    Created on : 19/09/2019, 16:27:31
    Author     : matheus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="col-8 mx-auto alert alert-danger" role="alert"> <% out.println(request.getAttribute("msg")); %> </div>
        <div class="col-12 text-center"><a class="btn btn-primary" href=<%= request.getAttribute("page") %>> Voltar </a></div>

        <jsp:useBean id="configuracao" class="beans.ConfigBean" scope="application"/>
        Em caso de problemas contactar o administrador: <jsp:getProperty name="configuracao" property="email" />
    </body>
</html>
