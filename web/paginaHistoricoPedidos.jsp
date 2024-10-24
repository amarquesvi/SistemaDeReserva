<%-- 
    Document   : paginaHistoricoPedidos
    Created on : 17 de out. de 2024, 16:57:00
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="Styles/historicopedidos.css"/>
    </head>
    <body>
    <div class="container">
        <header>
            <h1>Histórico de Pedidos</h1>
        </header>

        <div class="order-history">
            <div class="order">
                <h3>Pedido #12344</h3>
                <p>Data: 10/10/2024</p>
                <ul>
                    <li>Item: Cappuccino - R$ 12,00</li>
                    <li>Item: Torta de Limão - R$ 15,00</li>
                </ul>
                <p>Total: R$ 27,00</p>
                <div class="button-container">
                    <button class="edit-btn">Editar Pedido</button>
                    <button class="delete-btn">Excluir Item</button>
                </div>
            </div>

            <div class="order">
                <h3>Pedido #12345</h3>
                <p>Data: 12/10/2024</p>
                <ul>
                    <li>Item: Café Latte - R$ 10,00</li>
                    <li>Item: Brownie - R$ 8,00</li>
                </ul>
                <p>Total: R$ 18,00</p>
                <div class="button-container">
                    <button class="edit-btn">Editar Pedido</button>
                    <button class="delete-btn">Excluir Item</button>
                </div>
            </div>

            <div class="order">
                <h3>Pedido #12346</h3>
                <p>Data: 14/10/2024</p>
                <ul>
                    <li>Item: Espresso - R$ 7,00</li>
                    <li>Item: Croissant - R$ 12,00</li>
                </ul>
                <p>Total: R$ 19,00</p>
                <div class="button-container">
                    <button class="edit-btn">Editar Pedido</button>
                    <button class="delete-btn">Excluir Item</button>
                </div>
            </div>
        </div>
        
        <script src="Styles/historicopedidos.js"></script>
    </body>
</html>
