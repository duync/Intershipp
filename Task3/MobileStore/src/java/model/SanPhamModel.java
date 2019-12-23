/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

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
public class SanPhamModel {

    public SanPhamModel() {
    }

    public ArrayList getListSanPham() {
        ArrayList<SanPham> list = new ArrayList<>();
        Connection cn = new MyConnect().getcn();
        if (cn == null) {
            return null;
        }
        try {
            String sql = "select * from SANPHAM";
            PreparedStatement ps = cn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                SanPham sp = new SanPham(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8),rs.getString(9));
                list.add(sp);
            }
            ps.close();
            cn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public int insertSanPham(SanPham a) {
        int kq = 0;
        Connection cn = new MyConnect().getcn();
        if (cn == null) {
            return -1;
        }
        try {
            String sql = "INSERT  INTO  SANPHAM VALUES (?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = cn.prepareStatement(sql);
            ps.setString(1, a.getMasp());
            ps.setString(2, a.getTensp());
            ps.setInt(3, a.getGia());
            ps.setString(4, a.getMota());
            ps.setString(5, a.getTrangthai());
            ps.setString(6, a.getHinh());
            ps.setInt(7, a.getMadm());
            ps.setInt(8, a.getSoluong());
            ps.setString(9,a.getTheloai());
            kq = ps.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return kq;
    }

    public SanPham getSanPhamByMasp(String masp) {
        SanPham sp = null;
//        int kq = 0;
        Connection cn = new MyConnect().getcn();
        if (cn == null) {
            return null;
        }
        try {
            String sql = "select * from SANPHAM where MASP like ?";
            PreparedStatement ps = cn.prepareStatement(sql);
            ps.setString(1, masp);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                sp = new SanPham(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8),rs.getString(9));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();

        }
        return sp;
    }

//    public SanPham getdetailSanPham(String masp) {
//          SanPham sp = null;
//       
//        Connection cn = new MyConnect().getcn();
//        if (cn == null) {
//            return null;
//        }
//        try {
//            String sql = "select * from SANPHAM where MASP like ?";
//            PreparedStatement ps = cn.prepareStatement(sql);
//            ps.setString(1, masp);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//               sp = new SanPham(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8), rs.getInt(9));
//            }
//            ps.close();
//            cn.close();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return sp;
//    }

}
