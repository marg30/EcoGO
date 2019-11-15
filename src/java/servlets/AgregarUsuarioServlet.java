package servlets;

import entidades.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.DAOs.UsuariosDao;

public class AgregarUsuarioServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();        
        
        String username = request.getParameter("username");
        String nombre = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        UsuariosDao usuarioDao = new UsuariosDao();
        
        Usuario usuarioAGuardar = new Usuario();
        
        
        Connection con;
        Statement stm;
        ResultSet rs = null;

        String bdUser = "root";
        String bdPassword = "";

        String url = "jdbc:mysql://localhost:3306/paginaecogodb?user=" + bdUser
                + "&password=" + bdPassword;
        
       try {
            Class.forName("com.mysql.jdbc.Driver");

            con = DriverManager.getConnection(url);

            stm = con.createStatement();

            String sql;
            
            /*sql = "INSERT INTO 'usuarios' (usuario_nombre, usuario_password, usuario_mail, usuario_username)";
            
            sql += " FROM usuarios";
            
            sql += " WHERE usuario_username = '" + username + "'";
            
            sql += "' AND usuario_password = '" + password + "'";
            
            sql +="' AND usuario_mail = '" + email + "'";
            
            sql +="' AND usuario_nombre = '" + nombre + "'";*/
            
            sql = "INSERT INTO usuarios";
            sql += "VALUES('" + nombre + "', '" + password + "', '" + email + "', '" + email + "', '" + username + "' )";
            stm.executeUpdate(sql);
            
            
            stm.close();
            rs.close();

            con.close();
            request.getRequestDispatcher("inicio.jsp").forward(request, response);

        } catch (ClassNotFoundException ex) {
            System.out.println("No se encontro el Driver de MySQL");
        } catch (SQLException e) {
            out.println(e.getMessage());

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
