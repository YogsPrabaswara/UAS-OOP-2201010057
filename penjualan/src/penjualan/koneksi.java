/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package penjualan;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Yogs
 */
public class koneksi {
        public static Connection getConnection() throws SQLException {
        Connection cnn = null;
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/penjualan", "root", "");
        } catch (ClassNotFoundException ex) {
            System.out.println("Koneksi ke Database Gagal");
        }
        
        return cnn;
    }
}
