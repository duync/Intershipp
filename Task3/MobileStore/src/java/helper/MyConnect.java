/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package helper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author DELL
 */
public class MyConnect {

    String servername;
    String port;
    String db_name;
    String db_user;
    String db_pass;

    public MyConnect() {
        servername = "127.0.1";
        port = "1433";
        db_name = "MobileStore";
        db_user = "sa";
        db_pass = "123456789";
    }

    public Connection getcn() {
        Connection cn = null;
        try {
            String db_url = "jdbc:sqlserver://localhost\\ASM_SOF301:1433;databaseName=MobileStore";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            cn = DriverManager.getConnection(db_url, db_user, db_pass);
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return cn;
    }
}
