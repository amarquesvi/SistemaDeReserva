<%-- 
    Document   : paginaMinhasReservas
    Created on : 4 de mai. de 2024, 17:19:37
    Author     : vihma
--%>

<%@page import="java.util.List"%>
<%@page import="br.com.controle.Reserva"%>
<%@page import="br.com.controle.Usuario"%>
<%@page import="br.com.entidade.ManterReservas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Minhas Reservas</title>
        <link rel="stylesheet" href="Styles/minhasreservas.css"/>

    </head>

    <body>
        <div class="container">
            <h2 class="text-center">Minhas Reservas</h2>
            <div class="table-responsive">
                <%
                    //Obtém o obj Usuario da sessão
                    Usuario usuario = (Usuario) session.getAttribute("usuario");
                    // cverifica se o mesmo está autenticado
                    if (usuario == null) {
                    // caso não, exige mensagem de erro
                        out.println("<p class='text-center text-warning'>Usuário não autenticado.</p>");
                    } else {
                    // se estiver, obtém as reservas associadas a esse usuario
                        ManterReservas manterReservas = new ManterReservas();
                        List<Reserva> listaReservas = manterReservas.buscarReservasPorUsuario(usuario.getId());
                        
                        // se a lista estiver vazia, exibe mensagem 
                        if (listaReservas.isEmpty()) {
                            out.println("<p class='text-center text-warning'>Não há reservas feitas.</p>");
                        } else {
                %>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Local</th>
                            <th>Data</th>
                            <th>Hora</th>
                            <th>Ações</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            for (Reserva reserva : listaReservas) {
                        %>
                        <tr>
                            <td class="text-center"><%= reserva.getId_reserva() %></td>
                            <td class="text-center"><%= reserva.getLocal_reserva() %></td>
                            <td class="text-center"><%= reserva.getData_reserva() %></td>
                            <td class="text-center"><%= reserva.getHora_reserva() %></td>
                            <td class="text-center">
                                <button onclick="exibirFormulario('<%= reserva.getId_reserva() %>')">Alterar</button>

                                <!-- Formulário de Alteração (Inicialmente Oculto) -->
                                <form id="form<%= reserva.getId_reserva() %>" class="hidden-form" action="alterarReserva.do" method="post" style="display: none;">
                                    <input type="hidden" name="id" value="<%= reserva.getId_reserva() %>">
                                    <label for="data_reserva">Nova Data:</label>
                                    <input type="date" id="data_reserva" name="data_reserva">
                                    <label for="hora_reserva">Nova Hora:</label>
                                    <input type="time" id="hora_reserva" name="hora_reserva">
                                    <button type="submit" class="btn">Alterar</button>
                                </form>


                                <!-- Botão para Excluir -->
                                <form action="excluir.do" method="post">
                                    <input type="hidden" name="id" value="<%= reserva.getId_reserva() %>">
                                    <button type="submit">Excluir</button>
                                </form>
                            </td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
                <%
                        }
                    }
                %>
            </div>
        </div>

        <script>
            function exibirFormulario(idReserva) {
                // Oculta todos os formulários de alteração
                var forms = document.querySelectorAll('.hidden-form');
                forms.forEach(function (form) {
                    form.style.display = 'none';
                });

                // Exibe o formulário de alteração correspondente ao ID da reserva clicada
                var formToShow = document.getElementById('form' + idReserva);
                formToShow.style.display = 'block';
            }
        </script>
    </body>
</html>