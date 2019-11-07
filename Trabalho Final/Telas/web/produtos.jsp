<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Proutos | BEIBE</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
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
                    <th>Peso</th>
                    <th>Ver</th>
                    <th>Excluir</th>
                    </thead>
                    <tbody>
                        <tr>
                            <td>20</td>
                            <td>Pele</td>
                            <td>Creme de espinhas</td>
                            <td>Creme para o tratamento de espinhas</td>
                            <td>20g</td>
                            <td><button class="prodView">Ver</button></td>
                            <td class="delete">X</td>
                        </tr>
                        <tr>
                            <td>25</td>
                            <td>Maquiagem</td>
                            <td>Rímel</td>
                            <td>Máscara para cílios</td>
                            <td>20g</td>
                            <td><button class="prodView">Ver</button></td>
                            <td class="delete">X</td>
                        </tr>
                        <tr>
                            <td>28</td>
                            <td>Cabelo</td>
                            <td>Shampoo anticaspa</td>
                            <td>Shampoo para o tratamento de caspa</td>
                            <td>20g</td>
                            <td><button class="prodView">Ver</button></td>
                            <td class="delete">X</td>
                        </tr>
                    </tbody>
                </table>
                <div class="modal hidden">
                    <div class="modal-body hidden">
                        <h2 id="title"></h2>
                        <form>
                            <input type="text" class="hidden prodChange" placeholder="Novo Título">
                            <p>Categoria: <br /><span id="type"></span></p>
                            <select class="hidden prodChange" >
                                <option>Nova categoria</option>
                            </select>
                            <p>Descrição: <br /><span id="desc"></span></p>
                            <textarea class="hidden prodChange" placeholder="Nova Descrição"></textarea>
                            <p>Peso: <br /><span id="peso"></span></p>
                            <input class="hidden prodChange"type="text" id="weightIn" placeholder="Novo Peso">
                            <button type="submit" class="prodChange hidden">Alterar</button>
                            <button class="prodEdit">Editar</button>
                            <button class="prodCancel hidden">Cancelar</button>
                            <button class="prod-close">Fechar</button>
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
                            <p id="title20">Creme de espinhas</p>
                            <p id="type20">Pele</p>
                            <p id="desc20">Creme para o tratamento de espinhas  </p>
                            <p id="peso20">20g</p>
                        </div>
                    </div>
                </div>
                <a href="criar-produto.jsp">Criar Produto</a>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
