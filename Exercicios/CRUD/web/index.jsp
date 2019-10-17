<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="bootstrap.css" />
    </head>
    <body>
        <div class="container">
            <% 
                String alert = "";
                alert = (String)request.getAttribute("msg"); 
                if (alert != null) {
                    out.println("<div class=\"alert alert-secondary\" role=\"alert\">" + alert + "</div>");
                }
            %>
            <div>
                <form action="LoginServlet" method="POST">
                    <div class="form-group col-6 col-sm-3 mx-auto">
                        <label for="login">Login:</label>
                        <input type="text" name="login" class="form-control"/>
                    </div>
                    <div class="form-group col-6 col-sm-3 mx-auto">
                        <label for="senha">Senha:</label>
                        <input type="password" name="senha" class="form-control"/>
                    </div>
                    <div class="col-12 text-center">
                        <button class="btn btn-success" type="submit">Logar</button>
                    </div>
                </form>
                <div class="col-8 mx-auto text-center">
                    <jsp:useBean id="configuracao" class="beans.ConfigBean" scope="application"/>
                    Em caso de problemas contactar o administrador: <jsp:getProperty name="configuracao" property="email" />
                </div>
            </div>
        </div>
        <script src="bootstrap.js" />
    </body>
</html>
