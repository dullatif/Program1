/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package koneksip;
import java.sql.*;

/**
 *
 * @author Asus
 */
public class konek {

    public static Connection configDB() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public static Connection getKoneksi() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public static Connection getConnection() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    private Connection konek;
    public Connection connect() {
    try {
        Class.forName ("com.mysql.cj.jdbc.Driver");
        System.out.println("Berhasil Koneksi");
    } catch (ClassNotFoundException ex) {
        System.out.println("Gagal Koneksi"+ex);
    }
    String URL = "jdbc:mysql://localhost:3306/perpustakaan";
    try {
        konek = DriverManager.getConnection(URL,"root","");
        System.out.println("Berhasil Koneksi Database");
    } catch (SQLException ex) {
        System.out.println("Gagal Koneksi Database"+ex);
    }
    return konek;
    }
    
}
