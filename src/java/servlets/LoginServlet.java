package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.DAOs.UsuariosDao;

public class LoginServlet extends HttpServlet {

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

        
        if ( request.getSession().getAttribute("usuario") != null ) {
            request.getRequestDispatcher("InicioServlet").forward(request, response);
        }
        else{
            
            if ( request.getParameter("user") != null && request.getParameter("password") != null )
            {     
                UsuariosDao usuarioDao = new UsuariosDao();
                
                try {
                    if ( usuarioDao.existeUsuario(request.getParameter("user"), request.getParameter("password")) ) {
                        request.getSession().setAttribute("usuario", request.getParameter("user"));
                        request.getRequestDispatcher("InicioServlet").forward(request, response);
                    }
                    else{
                        request.getRequestDispatcher("login.jsp").forward(request, response);
                    }
                } catch (Exception e) {
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }
                
            }
            else{
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
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