<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Proutos | BEIBE</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    </head>
    <body>
        <div class="content">
            <header class="funcionario-header">
                <a href="funcionario.jsp">Home</a>
                <a href="categorias.jsp">Categorias</a>
                <a href="/Telas">Logout</a>
            </header>
            <div class="form-holder">
                <h1>Produtos</h1>
                <table cellpadding=0 cellspacing=0>
                    <thead>
                    <th>Nº</th>
                    <th>Categoria</th>
                    <th>Título</th>
                    <th>Descrição</th>
                    <th>Ver</th>
                    <th>Excluir</th>
                    </thead>
                    <tbody>
                        <tr>
                            <td>20</td>
                            <td>Pele</td>
                            <td>Creme de espinhas</td>
                            <td>Creme para o tratamento de espinhas</td>
                            <td><button>Ver</button></td>
                            <td class="delete">X</td>
                        </tr>
                        <tr>
                            <td>25</td>
                            <td>Maquiagem</td>
                            <td>Rímel</td>
                            <td>Máscara para cílios</td>
                            <td><button>Ver</button></td>
                            <td class="delete">X</td>
                        </tr>
                        <tr>
                            <td>28</td>
                            <td>Cabelo</td>
                            <td>Shampoo anticaspa</td>
                            <td>Shampoo para o tratamento de caspa</td>
                            <td><button>Ver</button></td>
                            <td class="delete">X</td>
                        </tr>
                    </tbody>
                </table>
                <a href="criar-produto.jsp">Criar Produto</a>
            </div>
        </div>
    </body>
</html>
