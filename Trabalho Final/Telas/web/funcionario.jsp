<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home | BEIBE</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    </head>
    <body>
        <div class="content">
            <header class="funcionario-header">
                <a href="categorias.jsp">Categorias</a>
                <a href="produtos.jsp">Produtos</a>
                <a href="/Telas">Logout</a>
            </header>
            <div class="form-holder">
                <h1>Atendimentos</h1>
                <table cellpadding=0 cellspacing=0>
                    <thead>
                    <th>Nº</th>
                    <th>Título</th>
                    <th>Status</th>
                    <th>Data de Criação</th>
                    <th>Ver</th>
                    </thead>
                    <tbody>
                        <tr>
                            <td>20</td>
                            <td>Creme para espinhas</td>
                            <td>Concluído</td>
                            <td>12  /09/2019</td>
                            <td><button>Ver</button></td>
                        </tr>
                        <tr>
                            <td>25</td>
                            <td>Problema com creme</td>
                            <td>Aberto</td>
                            <td>20/09/2019</td>
                            <td><button>Ver</button></td>
                        </tr>
                        <tr>
                            <td>28</td>
                            <td>Problema com Maquiagem</td>
                            <td>Aberto</td>
                            <td>22/09/2019</td>
                            <td><button>Ver</button></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
