<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cadastro | BEIBE</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    </head>
    <body>
        <div class="content">
            <div class="form-holder">
                <h1>Cadastro</h1>
                <form>
                    <input type="text" placeholder="Nome">
                    <input type="text" id="cpf" placeholder="CPF">
                    <input type="email" id="email" placeholder="Email">
                    <input type="text" placeholder="Endereço">
                    <input class="small" type="text" id="housenumber" placeholder="Nº">
                    <input class="medium" type="text" placeholder="Comp">
                    <input type="text" placeholder="Bairro">
                    <input type="text" id="cep" placeholder="CEP">
                    <input class="medium" type="text" placeholder="Cidade">
                    <input class="small" type="text" placeholder="UF">
                    <input type="phone" id="phone" placeholder="Telefone">
                    <input type="password" placeholder="Senha">
                    <input type="password" placeholder="Confirmar Senha">
                    <input type="submit" class="button" value="Cadastrar">
                </form>
            </div>
        </div>
        <script type="text/javascript" src="js/main.js"></script>
    </body>
</html>
