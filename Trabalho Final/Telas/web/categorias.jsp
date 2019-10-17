<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Categorias | BEIBE</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    </head>
    <body>
        <div class="content">
            <header class="funcionario-header">
                <a href="funcionario.jsp">Home</a>
                <a href="produtos.jsp">Produtos</a>
                <a href="/Telas">Logout</a>
            </header>
            <div class="form-holder">
                <h1>Categorias</h1>
                <table cellpadding=0 cellspacing=0>
                    <thead>
                    <th>Nº</th>
                    <th>Título</th>
                    <th>Descrição</th>
                    <th>Ver</th>
                    <th>Excluir</th>
                    </thead>
                    <tbody>
                        <tr>
                            <td>20</td>
                            <td>Pele</td>
                            <td>Loções e cremes para pele</td>
                            <td><button>Ver</button></td>
                            <td class="delete">X</td>
                        </tr>
                        <tr>
                            <td>25</td>
                            <td>Maquiagem</td>
                            <td>Produtos de maquiagem em geral</td>
                            <td><button>Ver</button></td>
                            <td class="delete">X</td>
                        </tr>
                        <tr>
                            <td>28</td>
                            <td>Cabelo</td>
                            <td>Shampoos e condicionadores</td>
                            <td><button>Ver</button></td>
                            <td class="delete">X</td>
                        </tr>
                    </tbody>
                </table>
                <a href="criar-categoria.jsp">Criar Categoria</a>
            </div>
        </div>
    </body>
</html>
