<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home | BEIBE</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
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
                            <td><button class="questionView">Ver</button></td>
                        </tr>
                        <tr>
                            <td>25</td>
                            <td>Problema com creme</td>
                            <td>Aberto</td>
                            <td>20/09/2019</td>
                            <td><button class="questionView">Ver</button></td>
                        </tr>
                        <tr>
                            <td>28</td>
                            <td>Problema com Maquiagem</td>
                            <td>Aberto</td>
                            <td>22/09/2019</td>
                            <td><button class="questionView">Ver</button></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="modal hidden">
                <div class="modal-body hidden">
                    <h2 id="title"></h2>
                    <p>Status: <span id="status"></span></p>
                    <p>Aberto em: <span id="openDate"></span></p>
                    <p>Concluído em: <span id="closeDate"></span></p>
                    <p>Solicitação: <br /><span id="question"></span></p>
                    <p>Resposta do atendimento: <br /><span id="answer"></span></p>
                    <form class="questReply">
                        <input type="text">
                        <button type="submit">Responder</button>
                    </form>
                    <button class="modal-close">Fechar</button>
                </div>
            </div>
            <div class="hidden">
                <div class="table-data">
                    <div id="20">
                        <p id="title20">Creme para espinhas</p>
                        <p id="status20">Concluído</p>
                        <p id="openDate20">12/09/2019</p>
                        <p id="closeDate20">14/09/2019</p>
                        <p id="question20">Estou usando o creme há  um mês e a espinha só aumenta.</p>
                        <p id="answer20">Vá ao médico, pode ser câncer!</p>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
