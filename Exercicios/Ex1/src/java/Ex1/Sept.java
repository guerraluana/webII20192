/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Ex1;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Franzinha
 */
@WebServlet(name = "Sept", urlPatterns = {"/Sept"})
public class Sept extends HttpServlet {

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
            out.println("<title>SEPT</title>");            
            out.println("<style>body{text-align:center;}table{margin: 0 auto;}</style>");       
            out.println("</head>");
            out.println("<body>");
            out.println("<font color=blue  face= verdana size=6>");
            out.println("SEPT - Setor de Educação Profissional e Tecnológica");
            out.println("</font");
            out.println("<font face=arial>");
            out.println("<br><br>Rua Dr. Alcides Vieira Arcoverde, 1225 - CEP: 81520-260 - Jardim das Américas - Curitiba (PR) - Brasil  </br> </br>");
            out.println("</font>");
            out.println("<table border=2 cellspacing=0> <tr> <th>CURSO</th> <th>PÁGINA</th> </tr>" 
                    + "<tr> <td>TADS</td> <td><a href=\"http://www.sept.ufpr.br/portal/analisesistemas\"/>http://www.sept.ufpr.br/portal/analisesistemas/</a></td> </tr>"
                    + "<tr> <td>TNI</td> <td><a href=http://www.sept.ufpr.br/portal/negociosimobiliarios/>http:http://www.sept.ufpr.br/portal/negociosimobiliarios/</a></td> </tr>"
                    + "<tr> <td>Gestão Pública</td> <td><a href=http://www.sept.ufpr.br/portal/gestaopublica/>http://www.sept.ufpr.br/portal/gestaopublica/</a></td> </tr>"
                    + "<tr> <td>BIOINFO</td> <td><a href=http://www.bioinfo.ufpr.br/>http://www.bioinfo.ufpr.br/</a></td> </tr>"
                    + "<tr> <td>Produção Cênica</td> <td><a href=http://www.sept.ufpr.br/portal/producaocenica/>http://www.sept.ufpr.br/portal/producaocenica/</a></td> </tr>"
                    + "<tr> <td>Luteria</td> <td><a href=http://www.sept.ufpr.br/portal/luteria/>http://www.sept.ufpr.br/portal/luteria/</a></td> </tr>"
                    + "<tr> <td>Secretariado</td> <td><a href=http://www.sept.ufpr.br/portal/secretariado/>http://www.sept.ufpr.br/portal/secretariado/</a></td> </tr>"
                    + "<tr> <td>IAA</td> <td><a href=http://www.iaa.ufpr.br/>http://www.iaa.ufpr.br/</a></td> </tr>"
                    + "<tr> <td>Gestão da Qualidade</td> <td><a href=http://www.sept.ufpr.br/portal/gestaoqualidade/>http://www.sept.ufpr.br/portal/gestaoqualidade/</a></td> </tr>"
                    + "<tr> <td>Engenharia de Software</td> <td><a href=http://www.engenhariadesoftware.ufpr.br:28080/engenhariadesoftware/>http://www.engenhariadesoftware.ufpr.br:28080/engenhariadesoftware/</a></td> </tr>"
                    + "<tr> <td>Comunicação Institucional</td> <td><a href=http://www.sept.ufpr.br/portal/comunicacaoinstitucional/>http://www.sept.ufpr.br/portal/comunicacaoinstitucional/</a></td> </tr>"
                    + "<tr> <td>Agente Comunitario</td> <td><a href=http://200.17.200.17/agentecomunitario.html>http://200.17.200.17/agentecomunitario.html</a></td> </tr>"
                    + "<tr> <td>Petróleo e Gás</td> <td><a href=http://www.sept.ufpr.br/portal/petroleogas/>http://www.sept.ufpr.br/portal/petroleogas/</a></td> </tr>"
                    + "</table>");
            
            
            out.println("<br><a href=index.html>Meu TADS</a></br>");
            
            
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
