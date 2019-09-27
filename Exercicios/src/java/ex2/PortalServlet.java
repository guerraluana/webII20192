package ex2;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author francielle.ti
 */
@WebServlet(name = "PortalServlet", urlPatterns = {"/PortalServlet"})
public class PortalServlet extends HttpServlet {

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

        HttpSession session = request.getSession();
        String nome = (String) session.getAttribute("nome");
        String login = (String) session.getAttribute("login");
        String senha = (String) session.getAttribute("senha");

        List<Usuario> usuariosCadastrados = new ArrayList<Usuario>();

        Usuario u = new Usuario("Herikson", "herikson", "herikson");
        usuariosCadastrados.add(u);
        Usuario u2 = new Usuario("Matheus", "matheus", "matheus");
        usuariosCadastrados.add(u2);
        Usuario u3 = new Usuario("Luana", "luana", "luana");
        usuariosCadastrados.add(u3);
        Usuario u4 = new Usuario("Francielle", "francielle", "francielle");
        usuariosCadastrados.add(u4);
        
        if(nome != null && senha != null && login != null){
          Usuario usuario = new Usuario(nome, login, senha);
          usuariosCadastrados.add(usuario);          
        }

        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PortalServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<form action=\"CadastrarUsuarioServlet\" method=\"POST\">");
            out.println("<div>");
            out.println("<label for=\"nome\">Nome: </label>");
            out.println("<input type=\"nome\" name=\"nome\" />");
            out.println("</div>");
            out.println("<div>");
            out.println("<label for=\"login\">Login: </label>");
            out.println("<input type=\"text\" name=\"login\" />");
            out.println("</div>");
            out.println("<div>");
            out.println("<label for=\"senha\">Senha: </label>");
            out.println("<input type=\"password\" name=\"senha\" />");
            out.println("</div>");
            out.println("<div class=\"button\">");
            out.println("<button style= \"margin-left: 135px\" type=\"submit\">Salvar</button>");
            out.println("</div>");
            out.println("</form>");

            out.println("<table style =\"border: 1px solid black;>\"");
            out.println("<tr>");
            out.println("<th>Nome</th>");
            out.println("<th>Login</th>");
            out.println("<th>Senha</th>");
            out.println("</tr>");

            for (int i = 0; i < usuariosCadastrados.size(); i++) {
                out.println("<tr>");
                out.println("<td>" + usuariosCadastrados.get(i).getNome() + "</td>");
                out.println("<td>" + usuariosCadastrados.get(i).getLogin() + "</td>");
                out.println("<td>" + usuariosCadastrados.get(i).getSenha() + "</td>");
                out.println("</tr>");
            }

            out.println("</table>");

            out.println("<a href=\"LogoutServlet\">Sair</a>");
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
