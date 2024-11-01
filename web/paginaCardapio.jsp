<%@page import="java.util.ArrayList"%>
<%@page import="br.com.controle.Prato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.text.Normalizer"%>
<%@page import="com.google.gson.Gson"%>

<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta charset="UTF-8">
        <title>Cardápio</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="Styles/cardapio.css"/>
    </head>
    <body>

        <header>
            <div class="container">
                <nav class="menu">
                    <a href="#entradas" class="menu-link">Entradas</a>
                    <a href="#pratosprincipais" class="menu-link">Pratos Principais</a>
                    <a href="#sobremesas" class="menu-link">Sobremesas</a>
                    <a href="#bebidas" class="menu-link">Bebidas</a>
                </nav>
            </div>
        </header>

        <section id="cart-section" class="section">
            <div class="content">
                <h2>Carrinho</h2>
                <div id="cart">
                    <p>O carrinho está vazio.</p>
                </div>
            </div>
            <div id="cartDisplay">
                <form id="payment-form" action="processarPagamento.jsp" method="POST">
                    <input type="hidden" name="id_usuario" value="<!-- ID do usuário aqui -->" /> <!-- Defina o ID do usuário -->
                    <input type="hidden" name="metodo_pagamento" value="Cartão de Crédito" /> <!-- Exemplo de método de pagamento -->
                    <input type="hidden" name="valor_total" id="valor_total" value="0.00" /> <!-- Total do carrinho -->

                    <button type="button" onclick="efetuarPagamento()">Efetuar Pagamento</button>
                </form>
            </div>
        </section>

        <%
            List<Prato> pratos = (List<Prato>) request.getAttribute("pratos");
            String[] categorias = {"Entrada", "Prato Principal", "Sobremesa", "Bebida"};
        %>

        <% for (String categoria : categorias) {%>
        <section id="<%= categoria.toLowerCase()%>" class="section">
            <div class="content">
                <h2><%= categoria + "s"%></h2>
                <div class="products-container">
                    <% if (pratos != null) {
                            for (Prato prato : pratos) {
                                if (prato.getCategoria().equalsIgnoreCase(categoria)) { %>
                    <div class="box">
                        <div class="box-content">
                            <%
                                String nomePrato = prato.getNomePrato();
                                String nomeSemAcentos = Normalizer.normalize(nomePrato, Normalizer.Form.NFD)
                                        .replaceAll("[^\\p{ASCII}]", "");
                                String nomeProcessado = nomeSemAcentos.replaceAll("\\s+", "").toLowerCase();
                            %>
                            <img src="assets/<%= nomeProcessado%>.jpg" alt="<%= prato.getNomePrato()%>">
                            <div class="description">
                                <h3 id="nome-<%= prato.getIdPrato()%>"><%= prato.getNomePrato()%></h3>
                                <span><%= prato.getDescricao()%></span>
                                <p id="preco-<%= prato.getIdPrato()%>">Preço: R$ <%= prato.getPreco()%></p>
                                <button onclick="addToCart(<%= prato.getIdPrato()%>)">Adicionar ao Carrinho</button>
                            </div>
                        </div>
                    </div>
                    <%
                                }
                            }
                        } %>
                </div>
            </div>
        </section>
        <% }%>

        <script>
            const pratos = <%= new Gson().toJson(pratos != null ? pratos : new ArrayList<>())%>; // Se pratos for null, inicializa como lista vazia
            console.log(pratos)
            let cart = {};

            function addToCart(idPrato) {
                console.log(idPrato)
                console.log('Tentando adicionar ao carrinho:' + idPrato);

                const pratoSelecionado = pratos.find(p => p.idPrato === idPrato);
                if (pratoSelecionado) {
                    const name = pratoSelecionado.nomePrato;
                    console.log('Nome do prato:' + name);

                    const quantity = 1; // Definindo quantidade fixa como 1

                    console.log(cart)
                    if (cart[idPrato]) {
                        cart[idPrato].quantity += quantity; // Incrementa a quantidade
                        cart[idPrato].total += pratoSelecionado.preco * quantity; // Atualiza o total
                    } else {
                        cart[idPrato] = {nome: name, total: pratoSelecionado.preco * quantity, quantity}; // Cria nova entrada no carrinho
                    }
                    updateCartDisplay();
                } else {
                    console.log(`Prato não encontrado: ${idPrato}`);
                }
            }

            function removeFromCart(idPrato) {
                if (cart[idPrato]) {
                    delete cart[idPrato];
                    updateCartDisplay();
                }
            }

            function updateCartDisplay() {
                const cartDisplay = document.getElementById('cart');
                cartDisplay.innerHTML = ''; // Limpa o conteúdo anterior

                if (Object.keys(cart).length === 0) {
                    cartDisplay.innerHTML = '<p>O carrinho está vazio.</p>';
                } else {
                    const itemList = document.createElement('ul');
                    let total = 0;

                    Object.entries(cart).forEach(([idPrato, item]) => {
                        total += item.total; // Soma o total aqui
                        console.log('Item no carrinho:' + item.nome + ' Total: R$ ' + item.total.toFixed(2) + ' Quantidade:' + item.quantity);
                        const li = document.createElement('li');
                        li.innerHTML = 'Produto: ' + item.nome + ': R$ ' + item.total.toFixed(2) + ' Quantidade: ' + item.quantity + '<button onclick="removeFromCart(' + idPrato + ')">Remover</button>';
                        itemList.appendChild(li);
                    });

                    cartDisplay.appendChild(itemList);
                    cartDisplay.innerHTML += '<div>Total: R$ ' + total.toFixed(2) + '</div>'; // Atualiza a exibição do total

                    // Atualiza o valor total no formulário de pagamento
                    document.getElementById('valor_total').value = total.toFixed(2);
                    document.getElementById('total-value').innerText = total.toFixed(2);
                }
            }

            function efetuarPagamento() {
                // Aqui você pode adicionar validações se necessário antes de enviar o formulário
                document.getElementById('payment-form').submit(); // Envia o formulário
            }
        </script>


    </body>
</html>
