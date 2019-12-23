/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import entities.Bus;
import helper.MyConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author khang
 */
public class BusModel {

    public ArrayList getList() {
        ArrayList<Bus> list = new ArrayList();

        Connection cn = new MyConnect().getJDBCConnection();
        if (cn == null) {
            return null;
        }
        try {
            String sql = "select * from bus";
            PreparedStatement ps = cn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Bus bus = new Bus(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5));
                list.add(bus);
            }
            ps.close();
            cn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
         public Bus getBus(int idBus) {
        Bus busnew = new Bus();
        try {

            String sql = "SELECT * from bus where bus.idBus = ? ";
            Connection conn = MyConnect.getJDBCConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, idBus);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
            busnew = new Bus(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return busnew;
    }
         public Bus getbusById(int idBus) {
        Bus bus = new Bus();

        Connection cn = new MyConnect().getJDBCConnection();
        if (cn == null) {
            return null;
        }
        try {
            String sql = "select * from bus where idBus = ?";
            PreparedStatement ps = cn.prepareStatement(sql);
            ps.setInt(1, idBus);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                bus = new Bus(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5));
            }
            ps.close();
            cn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return bus;
    }
}
