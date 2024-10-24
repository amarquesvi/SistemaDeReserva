<%-- 
    Document   : paginaReservar
    Created on : 5 de mai. de 2024, 11:43:36
    Author     : vihma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
        <link rel="stylesheet" href="Styles/reservar.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">
        <title>Faça sua Reserva</title>
</head>
<body>
    
    
   <div class="container">
        <h1>Reservar </h1>
        <div class="content-wrapper">
            
            <div class="box form-box">
                <form id="reservaForm" action="reserva.do" method="post">
                    <div class="form-group">
                        <label for="Reserva">Reserva</label>
                        <% 
                        request.setCharacterEncoding("UTF-8");
                        // Recuperar o parâmetro de consulta 'local' da URL
                        String local = request.getParameter("local");
                        String imagem = request.getParameter("imagem");
                        %>
                        <input type="hidden" id="local" name="local" value="<%= local %>">
                        <input type="hidden" id="imagem" name="imagem" value="<%= imagem %>">
                        <input type="text" id="nome" name="local" value="<%= local %>" readonly>
                    </div>
                    <div class="form-group">
                        <label for="data">Data:</label>
                        <input type="date" id="data" name="data">
                    </div>
                    <div class="form-group">
                        <label for="hora">Hora:</label>
                        <input type="time" id="hora" name="hora">
                    </div>
                    <div class="form-group">
                        <button type="submit">Confirmar reserva</button> 
                    </div>
                       
                    <p>${mensagem}</p>
                </form>
            </div>
            <div class="box image-box">
                <img src="<%= imagem %>" alt="<%= local %>">
            </div>
        </div>
    </div>

     <div class="button-wrapper">
        <a href="paginaPrincipal.jsp" class="button-voltar">Voltar à página principal</a>
    </div>
    
</body>

</html>