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

public class ExcluirReservaServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ExcluirReservaServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ExcluirReservaServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
           //Obtém o parâmetro id da requisição e converte para inteiro
          int idReserva = Integer.parseInt(request.getParameter("id"));
          
          //Obtém a sessão atual 
        HttpSession session = request.getSession();
        
        //Recupera o obj Usuario da sessão
        Usuario usuario = (Usuario) session.getAttribute("usuario");
        
        //Obtem o id a partir do objeto Usuario
        int idUsuario = usuario.getId();

        // cria uma instancia para gerencia-las
        ManterReservas manterReservas = new ManterReservas();
        try {
            //tenta ecluir a reserva com o id especificado para o usuario especificado
            manterReservas.excluir(idReserva, idUsuario);
            
            //redireciona a mesma página com a exlusão feita 
            response.sendRedirect("paginaMinhasReservas.jsp");
        } catch (Exception e) {
            //imprime o stack trace da exceção para o console
            e.printStackTrace();
            // exibe mensagem de erro, caso tenha problema para excluir
            out.println("<p class='text-center text-danger'>Erro ao excluir a reserva. Por favor, tente novamente.</p>");
        }
        
        
        
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
