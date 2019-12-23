/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entities.KhachHang;
import helper.MyConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author DELL
 */
public class KhachHangModel {
    
    public KhachHangModel() {
        
    }
    
    public int LoginKhachHang(KhachHang kh) {
        Connection cn = new MyConnect().getcn();
        if (cn == null) {
            return -1;
        }
        try {
            String sql = "select * from admin where username like ?";
            PreparedStatement ps = cn.prepareStatement(sql);
            ps.setString(1, kh.getUsername());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                if (rs.getString(1).equals(kh.getUsername()) && rs.getString(2).equals(kh.getPassword())) {
                    return 1;
                } else {
                    return 2;
                }
            } else {
                return 3;
            }
        } catch (Exception e) {
        }
        return 0;
    }
}
