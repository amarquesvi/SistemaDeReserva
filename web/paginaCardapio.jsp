<%-- 
    Document   : paginaCardapio
    Created on : 7 de out. de 2024, 15:39:18
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        
        <!-- Entradas -->
        <section id="entradas" class="section">
            <div class="content">
                <h2>Entradas</h2>
                <div class="products-container">
                    <!-- Subopções de reservas para Cafeterias -->
                    <div class="box">
                        <div class="box-content">
                            <img src="https://plus.unsplash.com/premium_photo-1693237028550-649978657ec7?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Croissant recheado">
                            <div class="description">
                                <h3>Croissant Recheado</h3>
                                <span>A salada caprese, oferecida como entrada, é feita com tomates frescos, mussarela, manjericão e temperada com azeite e sal. É uma opção leve e saborosa para começar a refeição.  <br>R$56,00
                                </span>
                            </div>
                        </div>
                    </div>
                    
                    
                    
                    <div class="box">
                        <div class="box-content">
                            <img src="https://images.unsplash.com/photo-1676300184943-09b2a08319a3?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Creme Brulee">
                            <div class="description">
                                <h3>Creme Brulee</h3>
                                <span>A salada caprese, oferecida como entrada, é feita com tomates frescos, mussarela, manjericão e temperada com azeite e sal. É uma opção leve e saborosa para começar a refeição.</span>
                            </div>
                        </div>
                    </div>
                    
                    
                    <div class="box">
                        <div class="box-content">
                            <img src="https://images.unsplash.com/photo-1570197571499-166b36435e9f?q=80&w=1412&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Salada Caprese">
                            <div class="description">
                                <h3>Salada Caprese</h3>
                                <span>A salada caprese, oferecida como entrada, é feita com tomates frescos, mussarela, manjericão e temperada com azeite e sal. É uma opção leve e saborosa para começar a refeição.</span>
                            </div>
                        </div>
                    </div>
                    
                    
                    
                    <div class="box">
                        <div class="box-content">
                            <img src="https://plus.unsplash.com/premium_photo-1667663175869-db111748c3c7?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Tábua de Frios">
                            <div class="description">
                                <h3>Tábua de frios</h3>
                                <span>A salada caprese, oferecida como entrada, é feita com tomates frescos, mussarela, manjericão e temperada com azeite e sal. É uma opção leve e saborosa para começar a refeição.</span>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </section>
        
         <!-- Pratos Pincipais -->
        <section id="pratosprincipais" class="section">
            <div class="content">
                <h2>Pratos Principais</h2>
                <div class="products-container">
                    <!-- Subopções de pratos principais -->
                   
         <div class="box">
                        <div class="box-content">
                            <img src="https://images.unsplash.com/photo-1570197571499-166b36435e9f?q=80&w=1412&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Salada Caprese">
                            <div class="description">
                                <h3>Salada Caprese</h3>
                                <span>A salada caprese, oferecida como entrada, é feita com tomates frescos, mussarela, manjericão e temperada com azeite e sal. É uma opção leve e saborosa para começar a refeição.</span>
                            </div>
                        </div>
                    </div>
                    
                    
                    
                    <div class="box">
                        <div class="box-content">
                            <img src="https://images.unsplash.com/photo-1676300184943-09b2a08319a3?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Salada Caprese">
                            <div class="description">
                                <h3>Creme Brulee</h3>
                                <span>A salada caprese, oferecida como entrada, é feita com tomates frescos, mussarela, manjericão e temperada com azeite e sal. É uma opção leve e saborosa para começar a refeição. </span>
                            </div>
                        </div>
                    </div>
                    
                    
                    <div class="box">
                        <div class="box-content">
                            <img src="https://images.unsplash.com/photo-1570197571499-166b36435e9f?q=80&w=1412&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Salada Caprese">
                            <div class="description">
                                <h3>Salada Caprese</h3>
                                <span>A salada caprese, oferecida como entrada, é feita com tomates frescos, mussarela, manjericão e temperada com azeite e sal. É uma opção leve e saborosa para começar a refeição.</span>
                            </div>
                        </div>
                    </div>
                    
                    
                    
                    <div class="box">
                        <div class="box-content">
                            <img src="https://images.unsplash.com/photo-1570197571499-166b36435e9f?q=80&w=1412&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Salada Caprese">
                            <div class="description">
                                <h3>Salada Caprese</h3>
                                <span>A salada caprese, oferecida como entrada, é feita com tomates frescos, mussarela, manjericão e temperada com azeite e sal. É uma opção leve e saborosa para começar a refeição.</span>
                            </div>
                        </div>
                    </div>
                    
                </div>
        
                
                <!-- Sobremesas -->
        <section id="sobremesas" class="section">
            <div class="content">
                <h2>Sobremesas </h2>
                <div class="products-container">
                    <!-- Subopções de sobremesas -->
                   
         <div class="box">
                        <div class="box-content">
                            <img src="https://images.unsplash.com/photo-1570197571499-166b36435e9f?q=80&w=1412&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Salada Caprese">
                            <div class="description">
                                <h3>Salada Caprese</h3>
                                <span>A salada caprese, oferecida como entrada, é feita com tomates frescos, mussarela, manjericão e temperada com azeite e sal. É uma opção leve e saborosa para começar a refeição.</span>
                            </div>
                        </div>
                    </div>
                    
                    
                    
                    <div class="box">
                        <div class="box-content">
                            <img src="https://images.unsplash.com/photo-1676300184943-09b2a08319a3?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Salada Caprese">
                            <div class="description">
                                <h3>Creme Brulee</h3>
                                <span>A salada caprese, oferecida como entrada, é feita com tomates frescos, mussarela, manjericão e temperada com azeite e sal. É uma opção leve e saborosa para começar a refeição.</span>
                            </div>
                        </div>
                    </div>
                    
                    
                    <div class="box">
                        <div class="box-content">
                            <img src="https://images.unsplash.com/photo-1570197571499-166b36435e9f?q=80&w=1412&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Salada Caprese">
                            <div class="description">
                                <h3>Salada Caprese</h3>
                                <span>A salada caprese, oferecida como entrada, é feita com tomates frescos, mussarela, manjericão e temperada com azeite e sal. É uma opção leve e saborosa para começar a refeição.</span>
                            </div>
                        </div>
                    </div>
                    
                    
                    
                    <div class="box">
                        <div class="box-content">
                            <img src="https://images.unsplash.com/photo-1570197571499-166b36435e9f?q=80&w=1412&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Salada Caprese">
                            <div class="description">
                                <h3>Salada Caprese</h3>
                                <span>A salada caprese, oferecida como entrada, é feita com tomates frescos, mussarela, manjericão e temperada com azeite e sal. É uma opção leve e saborosa para começar a refeição.</span>
                            </div>
                        </div>
                    </div>
                    
                </div>
        
                
                   
                <!-- Bebidas -->
        <section id="bebidas" class="section">
            <div class="content">
                <h2>Bebidas </h2>
                <div class="products-container">
                    <!-- Subopções de sobremesas -->
                   
         <div class="box">
                        <div class="box-content">
                            <img src="https://images.unsplash.com/photo-1570197571499-166b36435e9f?q=80&w=1412&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Salada Caprese">
                            <div class="description">
                                <h3>Salada Caprese</h3>
                                <span>A salada caprese, oferecida como entrada, é feita com tomates frescos, mussarela, manjericão e temperada com azeite e sal. É uma opção leve e saborosa para começar a refeição.</span>
                            </div>
                        </div>
                    </div>
                    
                    
                    
                    <div class="box">
                        <div class="box-content">
                            <img src="https://images.unsplash.com/photo-1676300184943-09b2a08319a3?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Salada Caprese">
                            <div class="description">
                                <h3>Creme Brulee</h3>
                                <span>A salada caprese, oferecida como entrada, é feita com tomates frescos, mussarela, manjericão e temperada com azeite e sal. É uma opção leve e saborosa para começar a refeição.</span>
                            </div>
                        </div>
                    </div>
                    
                    
                    <div class="box">
                        <div class="box-content">
                            <img src="https://images.unsplash.com/photo-1570197571499-166b36435e9f?q=80&w=1412&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Salada Caprese">
                            <div class="description">
                                <h3>Salada Caprese</h3>
                                <span>A salada caprese, oferecida como entrada, é feita com tomates frescos, mussarela, manjericão e temperada com azeite e sal. É uma opção leve e saborosa para começar a refeição.</span>
                            </div>
                        </div>
                    </div>
                    
                    
                    
                    <div class="box">
                        <div class="box-content">
                            <img src="https://images.unsplash.com/photo-1570197571499-166b36435e9f?q=80&w=1412&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Salada Caprese">
                            <div class="description">
                                <h3>Salada Caprese</h3>
                                <span>A salada caprese, oferecida como entrada, é feita com tomates frescos, mussarela, manjericão e temperada com azeite e sal. É uma opção leve e saborosa para começar a refeição.</span>
                            </div>
                        </div>
                    </div>
                    
                </div>
        
        
    </body>
</html>
