<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Relatórios | BEIBE</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type='text/css' href="js/libs/Datepicker/datepicker.min.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
    </head>
    <body>
        <div class="content">
            <header class="gerente-header">
                <a href="gerente.jsp">Home</a>                
                <a href="atendimentos.jsp">Atendimentos</a>
                <a href="usuarios.jsp">Usuários</a>
                <a href="/Telas">Logout</a>
            </header>
            <div class="form-holder">
                <h1>Relatórios</h1>
                <button>Funcionários</button>
                <button>Produtos mais reclamados</button>
                <button id='date-report'>Atendimento por data</button>
                <button id='quest-report'>Reclamações</button>
            </div>
            <div class="modal hidden">
                <div class="modal-body date-modal hidden">
                    <form>
                        <p>Data inicial: <input class='datepicker' type="text"></p>
                        <p>Data final: <input class='datepicker' type="text"></p>
                        <button type="submit">Gerar Relatório</button>
                        <button id="date-modal-close" type="submit">Fechar</button>
                    </form>
                </div>
                <div class="modal-body quest-modal hidden">
                    <form>
                        <span>Situação:</span>
                        <select>
                            <option>Todas</option>
                            <option>Em aberto</option>
                            <option>Finalizadas</option>
                        </select>
                        <button type="submit">Gerar Relatório</button>                        
                        <button id="quest-modal-close" type="submit">Fechar</button>
                    </form>
                </div>
            </div>
        </div>
        <script src="js/libs/JQuery/jquery.min.js"></script>
        <script src="js/libs/Datepicker/datepicker.min.js"></script>        
        <script src="js/libs/DataTables/dataTables.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
