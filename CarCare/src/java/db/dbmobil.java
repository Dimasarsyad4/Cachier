/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author asus
 */
public class dbmobil {
    private Connection connection = null;
    
    public Connection setconnection(){
        try{
            String url = "jdbc:mysql://localhost:3306/mobil";
            String user = "root";
            String pass = "";
            String db = "mobil";
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(url, user, pass);
        } 
        catch (ClassNotFoundException | SQLException e){    
        }
        return connection;
    }
}
