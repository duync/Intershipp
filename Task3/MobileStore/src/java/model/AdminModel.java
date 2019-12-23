/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entities.Products;
import entities.SanPham;
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
public class AdminModel {

    public AdminModel() {

    }

    public ArrayList getListProducts() {
        ArrayList<Products> list = new ArrayList<>();
        Connection cn = new MyConnect().getcn();
        if (cn == null) {
            return null;
        }
        try {
            String sql = "select * from Product";
            PreparedStatement ps = cn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Products pro = new Products(rs.getString(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7));
                list.add(pro);
            }
            ps.close();
            cn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public int insertSP(SanPham sp) {
        int kq = 0;
        Connection cn = new MyConnect().getcn();
        if (cn == null) {
            return -1;
        }
        try {
            String sql = "insert into SANPHAM values(?,?,?,?,?,?,?,?)";
            PreparedStatement ps = cn.prepareStatement(sql);
            ps.setString(1,sp.getMasp());
            ps.setString(2,sp.getTensp());
            ps.setInt(3,sp.getGia());  
            ps.setString(4,sp.getMota());
            ps.setString(5,sp.getTrangthai());
            ps.setString(6,sp.getHinh());
            ps.setInt(7,sp.getMadm());
            kq = ps.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return kq;
    }

    public ArrayList getListProducts(String ProductName) {
        if (ProductName.equals("")) {
            return getListProducts();
        }
        ArrayList<Products> list = new ArrayList<>();
        Connection cn = new MyConnect().getcn();
        if (cn == null) {
            return null;
        }
        try {
            String sql = "select * from Product Where ProductName like ?";
            PreparedStatement ps = cn.prepareStatement(sql);
            ps.setString(1, ProductName);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Products pro = new Products(rs.getString(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7));
                list.add(pro);
            }
            ps.close();
            cn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
