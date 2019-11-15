/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import entidades.Barrio;
import entidades.Comuna;
import entidades.PuntoVerde;
import entidades.Residuo;
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

/**
 *
 * @author Comunidad IT - 15
 */
public class MapaServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();

        if (request.getSession().getAttribute("usuario") == null) {
            request.getRequestDispatcher("login").forward(request, response);
        }

        Connection con = null;
        Statement stm = null;
        ResultSet rs = null;

        String user = "root";
        String password = "";

        String url = "jdbc:mysql://localhost:3306/paginaecogodb?user=" + user
                + "&password=" + password;

        ArrayList<Barrio> listaBarrios = new ArrayList<>();
        ArrayList<PuntoVerde> listaPuntos = new ArrayList<>();

        try {
            Class.forName("com.mysql.jdbc.Driver");

            con = DriverManager.getConnection(url);

            stm = con.createStatement();

            /*String sql;
            sql = "SELECT barrios.*, comunas.com_nombre AS nombreComuna";

            sql += " FROM barrios, comunas";

            sql += " WHERE barrios.com_id = comunas.com_id";

            rs = stm.executeQuery(sql);*/
            String sql;
            sql = "SELECT puntos_verdes.*, barrios.*";

            sql += " FROM barrios, puntos_verdes";

            sql += " WHERE barrios.bar_id = puntos_verdes.bar_id";

            rs = stm.executeQuery(sql);

            while (rs.next()) {
                
                PuntoVerde punto = new PuntoVerde();
                
                punto.setId(rs.getInt("pv_id"));
                punto.setNombre(rs.getString("pv_nombre"));
                punto.setDireccion(rs.getString("pv_direccion"));
                punto.setEspecial(rs.getBoolean("pv_movil"));

                Barrio barrio = new Barrio();

                barrio.set_id(rs.getInt("bar_id"));
                barrio.set_nombre(rs.getString("bar_nombre"));
                punto.setBarrio(barrio);
                
                listaBarrios.add(barrio);
                listaPuntos.add(punto);

            /*while (rs.next()) {

                Barrio barrio = new Barrio();

                barrio.set_id(rs.getInt("bar_id"));
                barrio.set_nombre(rs.getString("bar_nombre"));

                Comuna comuna = new Comuna();
                comuna.set_id(rs.getInt("com_id"));
                comuna.set_nombre(rs.getString("nombreComuna"));

                barrio.set_comuna(comuna);

                listaBarrios.add(barrio);*/
            }

            stm.close();
            rs.close();

            con.close();

        } catch (ClassNotFoundException ex) {
            System.out.println("No se encontro el Driver de MySQL");
        } catch (SQLException e) {
            out.println(e.getMessage());

        }

        out.println("</body> \n"
                + "</html>");
        request.setAttribute("puntos", listaPuntos);
        request.setAttribute("barrios", listaPuntos);
        request.getRequestDispatcher("mapa.jsp").forward(request, response);

    }

    protected void procesarRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        if (request.getSession().getAttribute("usuario") == null) {
            request.getRequestDispatcher("login").forward(request, response);
        }

        Connection con = null;
        Statement stm = null;
        ResultSet rs = null;

        String user = "root";
        String password = "";

        String url = "jdbc:mysql://localhost:3306/paginaecogodb?user=" + user
                + "&password=" + password;

        ArrayList<Residuo> listaResiduos = new ArrayList<>();

        try {
            Class.forName("com.mysql.jdbc.Driver");

            con = DriverManager.getConnection(url);

            stm = con.createStatement();

            String sql;
            sql = "SELECT *";

            sql += " FROM residuos";

            rs = stm.executeQuery(sql);

            while (rs.next()) {

                Residuo residuo = new Residuo();
                
                residuo.setId(rs.getInt("residuo_id"));
                residuo.setNombre(rs.getString("nombreresiduo"));
                residuo.setConsejo(rs.getString("res_consejos"));
                residuo.setClasificacion(rs.getString("res_clasif"));
                residuo.setBeneficios(rs.getString("beneficios"));
                
                listaResiduos.add(residuo);
            }

            stm.close();
            rs.close();

            con.close();

        } catch (ClassNotFoundException ex) {
            System.out.println("No se encontro el Driver de MySQL");
        } catch (SQLException e) {
            out.println(e.getMessage());

        }

        out.println("</body> \n"
                + "</html>");

        request.setAttribute("residuos", listaResiduos);
        request.getRequestDispatcher("mapa.jsp").forward(request, response);

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

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
