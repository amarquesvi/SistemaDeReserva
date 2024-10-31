<%@page import="br.com.controle.Prato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.text.Normalizer"%>

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

        <section id="cart-section" class="section">
            <div class="content">
                <h2>Carrinho</h2>
                <div id="cart">
                    <p>O carrinho está vazio.</p> <!-- Mensagem padrão -->
                </div>
            </div>
        </section>


        <%-- Recupera a lista de pratos da requisição --%>
        <%
            List<Prato> pratos = (List<Prato>) request.getAttribute("pratos");
        %>

        <%
            String[] categorias = {"Entrada", "Prato Principal", "Sobremesa", "Bebida"};
            for (String categoria : categorias) {
        %>
        <section id="<%= categoria.toLowerCase()%>" class="section">
            <div class="content">
                <h2><%= categoria + (categoria.equals("Prato Principal") ? "s" : "s")%></h2>
                <div class="products-container">
                    <% if (pratos != null) {
                            for (Prato prato : pratos) {
                                if (prato.getCategoria().equalsIgnoreCase(categoria)) { %>

                    <div class="box">
                        <div class="box-content">
                            <%
                                String nomePrato = prato.getNomePrato(); // Obtém o nome do prato
                                String nomeSemAcentos = Normalizer.normalize(nomePrato, Normalizer.Form.NFD)
                                        .replaceAll("[^\\p{ASCII}]", "");
                                String nomeProcessado = nomeSemAcentos.replaceAll("\\s+", "").toLowerCase();
                            %>
                            <img src="assets/<%= nomeProcessado%>.jpg" alt="<%= prato.getNomePrato()%>">
                            <div class="description">
                                <h3 id="nome-<%= prato.getIdPrato()%>"><%= prato.getNomePrato()%></h3>
                                <span><%= prato.getDescricao()%></span>
                                <p id="preco-<%= prato.getIdPrato()%>">Preço: R$ <%= prato.getPreco()%></p>
                                <button 
                                    onclick="addToCart(this)" 
                                    data-name="<%= prato.getNomePrato()%>" 
                                    data-price="<%= prato.getPreco()%>">Adicionar ao Carrinho</button>
                            </div>
                        </div>
                    </div>
                    <%      }
                            }
                        } %>
                </div>
            </div>
        </section>
        <% }%>

        <script>
            let cart = [];
            let total = 0;

            function addToCart(button) {
                const itemName = button.getAttribute('data-name');
                const itemPrice = parseFloat(button.getAttribute('data-price'));

                console.log('Item Adicionado:', itemName, itemPrice); // Adicione esta linha
                console.log(cart)

                // Adiciona o item ao carrinho
                cart.push({name: itemName, price: itemPrice});
                total += itemPrice;

                // Atualiza a exibição do carrinho
                updateCartDisplay();
            }


            function updateCartDisplay() {
                const cartDisplay = document.getElementById('cart');
                cartDisplay.innerHTML = ''; // Limpa o conteúdo anterior

                for (let i = 0; i < cart.length; i++) {
                    const itemElement = document.createElement('div');
                    itemElement.innerHTML = `${cart[i].name}: R$ ${cart[i].price.toFixed(2)}`; // Usando innerHTML
                                cartDisplay.appendChild(itemElement);
                            }

                            const totalElement = document.createElement('div');
                            totalElement.innerHTML = `Total: R$ ${total.toFixed(2)}`; // Usando innerHTML
                            cartDisplay.appendChild(totalElement);
                        }


        </script>
    </body>
</html>
