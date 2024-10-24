/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package br.com.bean;

import br.com.controle.Reserva;
import br.com.entidade.ManterReservas;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Time;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/**
 *
 * @author vihma
 */
public class ReservaServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ReservaServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ReservaServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

// Verificar se o usuário está autenticado
        Integer id_usuario = (Integer) request.getSession().getAttribute("id");
        if (id_usuario != null) {
            // O usuário está autenticado, continue com a reserva
            // Recebendo os dados do formulário
            String local = request.getParameter("local");
            String dataReserva = request.getParameter("data");
            String horaReserva = request.getParameter("hora");

            // Criando um objeto Reserva e atribuindo os dados do formulário a ele
            Reserva r = new Reserva();
            r.setId_usuario(id_usuario); // Usando o ID do usuário recuperado da sessão
            r.setLocal_reserva(local);
            r.setData_reserva(dataReserva);
            r.setHora_reserva(horaReserva);

            // Chamando o método para inserir a reserva no banco de dados
            ManterReservas mr = new ManterReservas();
            try {
                //inserindo o obj reserva no banco de dados
                mr.inserir(r); 
                 //Armazena a mensagem da reserva na requisição com a chave "mensagem"
                request.setAttribute("mensagem", "Reserva concluída com sucesso!");
                 //Obtém o requestDispatcher p encaminhar a requisição e a resposta para a paginaReservar
                request.getRequestDispatcher("paginaReservar.jsp").forward(request, response);

            } catch (SQLException e) {
                Logger.getLogger(ReservaServlet.class.getName()).log(Level.SEVERE, null, e);
            } catch (Exception ex) {
                Logger.getLogger(ReservaServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            // O usuário não está autenticado, redirecionar para a página de login
            response.sendRedirect("paginaPrincipal.jsp");
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
