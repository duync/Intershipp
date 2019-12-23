/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;


import entities.DanhMuc;
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
public class DanhMucModel {
    public DanhMucModel(){
    
}
      public ArrayList getListDanhMuc() {
        ArrayList<DanhMuc> list = new ArrayList<>();
        Connection cn = new MyConnect().getcn();
        if (cn == null) {
            return null;
        }
        try {
            String sql = "select * from DANHMUC";
            PreparedStatement ps = cn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
               DanhMuc dm = new DanhMuc(rs.getInt(1), rs.getString(2));
                list.add(dm);
            }
            ps.close();
            cn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
       public DanhMuc getDanhmucbyMadm(int madm) {
          DanhMuc dm = null;
       
        Connection cn = new MyConnect().getcn();
        if (cn == null) {
            return null;
        }
        try {
            String sql = "select * from DANHMUC where MADM like ?";
            PreparedStatement ps = cn.prepareStatement(sql);
            ps.setInt(1, madm);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
               dm = new DanhMuc(rs.getInt(1), rs.getString(2));
            }
            ps.close();
            cn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return dm;
    }
}
