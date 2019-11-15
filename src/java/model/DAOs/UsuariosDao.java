package model.DAOs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UsuariosDao {
    
    
    public boolean existeUsuario(String username, String password) throws SQLException, ClassNotFoundException{
        Connection con;
        Statement stm;
        ResultSet rs;

        String bdUser = "root";
        String bdPassword = "";

        String url = "jdbc:mysql://localhost:3306/paginaecogodb?user=" + bdUser
                + "&password=" + bdPassword;
        
        boolean usuarioExistente = false;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");

            con = DriverManager.getConnection(url);

            stm = con.createStatement();

            String sql;
            
            sql = "SELECT *";
            
            sql += " FROM usuarios";
            
            sql += " WHERE usuario_username = '" + username;
            
            sql += "' AND usuario_password = '" + password + "'";

            rs = stm.executeQuery(sql);

            rs.last();
            
            if (rs.getRow() == 1){
                usuarioExistente = true;
            }
            
            stm.close();
            rs.close();

            con.close();

        } catch (ClassNotFoundException | SQLException ex) {
            throw ex;
        }
        
        return usuarioExistente;
    }
    
    /*public void guardar() throws ClassNotFoundException, SQLException{
        
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
            
            sql = "INSERT (usuario_nombre, usuario_password, usuario_mail, usuario_fecha_de_nac , usuario_username)";
            
            sql += " FROM usuarios";
            
            sql += " WHERE usuario_username = '" + username;
            
            sql += "' AND usuario_password = '" + password + "'";

            stm.executeQuery(sql);

            
            stm.close();
            rs.close();

            con.close();

        } catch (ClassNotFoundException | SQLException ex) {
            throw ex;
        }
        
    }*/
}

