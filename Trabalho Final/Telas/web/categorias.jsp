<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Categorias | BEIBE</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
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
                    <th>Ver</th>
                    <th>Excluir</th>
                    </thead>
                    <tbody>
                        <tr>
                            <td>20</td>
                            <td>Pele</td>
                            <td><button class="catView">Ver</button></td>
                            <td class="delete">X</td>
                        </tr>
                        <tr>
                            <td>25</td>
                            <td>Maquiagem</td>
                            <td><button class="catView">Ver</button></td>
                            <td class="delete">X</td>
                        </tr>
                        <tr>
                            <td>28</td>
                            <td>Cabelo</td>
                            <td><button class="catView">Ver</button></td>
                            <td class="delete">X</td>
                        </tr>
                    </tbody>
                </table>
                <div class="modal hidden">
                    <div class="modal-body hidden">
                        <h2 id="title"></h2>
                        <form>
                            <input type="text" class="hidden catChange" placeholder="Novo Título">
                            <button type="submit" class="catChange hidden">Alterar</button>
                            <button class="catEdit">Editar</button>
                            <button class="catCancel hidden">Cancelar</button>
                            <button class="cat-close">Fechar</button>
                        </form>
                        
                    </div>
                    <div class="modal-delete hidden">
                        <h2>Deseja mesmo excluir este item?</h2>
                        <button class="delete-cancel">Cancelar</button>
                        <form>
                            <input class="hidden" id="delete-id">
                            <button type="submit">Excluir</button>
                        </form>
                    </div>
                </div>
                <div class="hidden">
                    <div class="table-data">
                        <div id="20">
                            <p id="title20">Pele</p>
                        </div>
                    </div>
                </div>
                <a href="criar-categoria.jsp">Criar Categoria</a>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
