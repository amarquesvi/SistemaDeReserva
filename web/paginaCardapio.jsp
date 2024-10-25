<%-- 
    Document   : paginaCardapio
    Created on : 7 de out. de 2024, 15:39:18
    Author     : user
--%>

<%@page import="br.com.controle.Prato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="br.com.controle.Prato"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">
        <title>Cardápio</title>
        <link rel="stylesheet" href="Styles/cardapio.css"/>
    </head>
    <body>
        
        <!-- Navbar -->
        <header>
            <!-- Links --> 
            <div class="container">
                <div class="menu">
                    <nav>
                        <a href="#entradas" class="menu-link">Entradas</a>
                        <a href="#pratosprincipais" class="menu-link">Pratos Principais</a>
                        <a href="#sobremesas" class="menu-link">Sobremesas</a>
                        <a href="#bebidas" class="menu-link">Bebidas</a>
                    </nav>
                </div>
            </div>
        </header>

        <%-- Recupera a lista de pratos da requisição --%>
        <%
            List<Prato> pratos = (List<Prato>) request.getAttribute("pratos");
        %>

        <!-- Entradas -->
        <section id="entradas" class="section">
            <div class="content">
                <h2>Entradas</h2>
                <div class="products-container">
                    <% if (pratos != null) { 
                        for (Prato prato : pratos) { 
                            if (prato.getCategoria().equalsIgnoreCase("Entrada")) { %>
                                <div class="box">
                                    <div class="box-content">
                                        <img src="<%= prato.getNomePrato()%>" alt="<%= prato.getNomePrato()%>">
                                        <div class="description">
                                            <h3><%= prato.getNomePrato() %></h3>
                                            <span><%= prato.getDescricao() %></span>
                                            <p>Preço: R$ <%= prato.getPreco() %></p>
                                        </div>
                                    </div>
                                </div>
                    <%      } 
                        } 
                    } %>
                </div>
            </div>
        </section>

        <!-- Pratos Principais -->
        <section id="pratosprincipais" class="section">
            <div class="content">
                <h2>Pratos Principais</h2>
                <div class="products-container">
                    <% if (pratos != null) { 
                        for (Prato prato : pratos) { 
                            if (prato.getCategoria().equalsIgnoreCase("prato principal")) { %>
                                <div class="box">
                                    <div class="box-content">
                                        <img src="<%= prato.getIdPrato()%>" alt="<%= prato.getNomePrato() %>">
                                        <div class="description">
                                            <h3><%= prato.getNomePrato() %></h3>
                                            <span><%= prato.getDescricao() %></span>
                                            <p>Preço: R$ <%= prato.getPreco() %></p>
                                        </div>
                                    </div>
                                </div>
                    <%      } 
                        } 
                    } %>
                </div>
            </div>
        </section>

        <!-- Sobremesas -->
        <section id="sobremesas" class="section">
            <div class="content">
                <h2>Sobremesas</h2>
                <div class="products-container">
                    <% if (pratos != null) { 
                        for (Prato prato : pratos) { 
                            if (prato.getCategoria().equalsIgnoreCase("Sobremesa")) { %>
                                <div class="box">
                                    <div class="box-content">
                                        <img src="<%= prato.getNomePrato()%>" alt="<%= prato.getNomePrato()%>">
                                        <div class="description">
                                            <h3><%= prato.getNomePrato()%></h3>
                                            <span><%= prato.getDescricao() %></span>
                                            <p>Preço: R$ <%= prato.getPreco() %></p>
                                        </div>
                                    </div>
                                </div>
                    <%      } 
                        } 
                    } %>
                </div>
            </div>
        </section>

        <!-- Bebidas -->
        <section id="bebidas" class="section">
            <div class="content">
                <h2>Bebidas</h2>
                <div class="products-container">
                    <% if (pratos != null) { 
                        for (Prato prato : pratos) { 
                            if (prato.getCategoria().equalsIgnoreCase("Bebida")) { %>
                                <div class="box">
                                    <div class="box-content">
                                        <img src="<%= prato.getNomePrato() %>" alt="<%= prato.getNomePrato() %>">
                                        <div class="description">
                                            <h3><%= prato.getNomePrato() %></h3>
                                            <span><%= prato.getDescricao() %></span>
                                            <p>Preço: R$ <%= prato.getPreco() %></p>
                                        </div>
                                    </div>
                                </div>
                    <%      } 
                        } 
                    } %>
                </div>
            </div>
        </section>
    </body>
</html>

