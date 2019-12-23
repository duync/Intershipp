/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package helper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import sun.tools.jar.Main;

/**
 *
 * @author DELL
 */
public class MyConnect {

    public static Connection getJDBCConnection() {
        final String url = "jdbc:mysql://localhost:3306/bus";
        final String user = "root";
        final String password = "";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(url,user,password);
        }catch(ClassNotFoundException e){
            e.printStackTrace();
        }catch(SQLException e){
            e.printStackTrace();
        }
        return null;
    }
    public static void main(String[] args) {
        Connection connection =  getJDBCConnection();
        if(connection!=null){
            System.out.println("thành công");
        }else{
            System.out.println("thất bại");
        }
    }

}
