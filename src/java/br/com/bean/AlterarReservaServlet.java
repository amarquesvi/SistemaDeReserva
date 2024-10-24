/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package br.com.bean;

import br.com.controle.Reserva;
import br.com.controle.Usuario;
import br.com.entidade.ManterReservas;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import static java.lang.System.out;
import java.sql.Date;
import java.sql.Time;

/**
 *
 * @author vihma
 */
public class AlterarReservaServlet extends HttpServlet {

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
            out.println("<title>Servlet AlterarReservaServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AlterarReservaServlet at " + request.getContextPath() + "</h1>");
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
      // Recupera o ID da reserva a ser alterada
    int idReserva = Integer.parseInt(request.getParameter("id"));

    // Recupera os novos dados da reserva
    String dataReserva = request.getParameter("data_reserva");
        String horaReserva = request.getParameter("hora_reserva");

    // Recupera o usuário da sessão
    HttpSession session = request.getSession();
    Usuario usuario = (Usuario) session.getAttribute("usuario");
    int idUsuario = usuario.getId(); // ID do usuário logado na sessão

    // Cria um objeto Reserva com os novos dados
    Reserva reserva = new Reserva();
    reserva.setId_reserva(idReserva);
    reserva.setData_reserva(dataReserva);
    reserva.setHora_reserva(horaReserva);
    reserva.setId_usuario(idUsuario); // Define o ID do usuário na reserva

    // Chama o método para alterar a reserva
    ManterReservas manterReservas = new ManterReservas();
    try {
        manterReservas.alterar(reserva);
        response.sendRedirect("paginaMinhasReservas.jsp"); // Redireciona para a página de reservas
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<p class='text-center text-danger'>Erro ao alterar a reserva. Por favor, tente novamente.</p>");
    }

        
        
        
        
        processRequest(request, response);
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
