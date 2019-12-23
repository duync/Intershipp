/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entities.User;
import helper.MyConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author DELL
 */
public class KhachHangModel {

    public KhachHangModel() {

    }

    public User LoginKhachHang(User us) {
        User user = new User();
        try {

            String sql = "select * from user where username = ?";
            Connection conn = MyConnect.getJDBCConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, us.getUsername());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                if (rs.getString(2).equals(us.getUsername()) && rs.getString(3).equals(us.getPassword())) {
                    user.setIdUser(rs.getInt(1));
                    user.setUsername(rs.getString(2));
                    user.setPassword(rs.getString(3));
                    user.setFullName(rs.getString(4));
                    user.setGender(rs.getString(5));
                    user.setAddress(rs.getString(6));
                    user.setPhoneNum(rs.getString(7));
                    user.setRole(rs.getString(8));
                    user.setEmail(rs.getString(9));
                    return user;
                }
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public int InsertAccount(User a) {
        int kq = 0;
        try {

            String sql = "insert into user (username, password, fullName, gender, address, phoneNum, role, email) values (?,?,?,?,?,?,?,?)";
            Connection conn = MyConnect.getJDBCConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, a.getUsername());
            ps.setString(2, a.getPassword());
            ps.setString(3, a.getFullName());
            ps.setString(4, a.getGender());
            ps.setString(5, a.getAddress());
            ps.setString(6, a.getPhoneNum());
            ps.setString(7, a.getRole());
            ps.setString(8, a.getEmail());
            ps.executeUpdate();
            return 1;
        } catch (SQLException e) {

        }
        return 0;
    }

    public ArrayList getListUser() {
        ArrayList<User> list = new ArrayList<>();
        try {
            String sql = "select * from user where role = 'Customer' or role = 'Seller' ";
            Connection conn = MyConnect.getJDBCConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                User user = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9));
                list.add(user);
            }
            ps.close();
            conn.close();
        } catch (SQLException e) {

        }
        return list;
    }

    public User getUserById(int idUser) {

        User user = null;
        try {
            String sql = "select * from user where idUser like ?";
            Connection conn = MyConnect.getJDBCConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, idUser);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                user = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9));
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return user;
    }

    public int updateAccount(User user) {
        int kq = 0;
        try {

            String sql = "update user set Password = ?, fullName= ?, gender = ?, address = ?, phoneNum = ?, role = ?, email = ?  where idUser = ?";
            Connection conn = MyConnect.getJDBCConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, user.getPassword());
            ps.setString(2, user.getFullName());
            ps.setString(3, user.getGender());
            ps.setString(4, user.getAddress());
            ps.setString(5, user.getPhoneNum());
            ps.setString(6, user.getRole());
            ps.setString(7, user.getEmail());
            ps.setInt(8, user.getIdUser());

            ps.executeUpdate();
            return 1;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

}
