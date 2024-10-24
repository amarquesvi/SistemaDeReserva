/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


// Seleciona o elemento da mensagem
var mensagem = document.getElementById('mensagem');

// Define um tempo em milissegundos para a mensagem permanecer visível 
var tempoVisivel = 2000;

// Adiciona uma classe 'ocultar' à mensagem após o tempo especificado
setTimeout(function() {
    mensagem.classList.add('ocultar');
}, tempoVisivel);

