/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jms.ConnectionFactory;

/**
 *
 * @author graciedaily
 */
public class ConnectDB {
    private static final String URL = "jdbc:mysql://localhost:3306/Grace?useSSL=false";
    private static final String USER = "root";
    private static final String PASSWORD = "11111111";

    public static Connection getInstance() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ConnectionFactory.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
        
        
    }
    public static void main(String[] args) {
      Connection c= getInstance();
        System.out.println(c);
       
    }
}
