/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import helper.MyConnect;
import java.sql.Connection;
import entities.Seat;
import entities.viewSeat;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author khang
 */
public class SeatModel {
//Show ghế trống và status = 0
    public boolean checkStatus(int idSeat, int idBus, String date) {
        ArrayList<viewSeat> list = new ArrayList();
        Connection cn = new MyConnect().getJDBCConnection();

        try {

            String sql = "select ticket.idSeat from ticket where  idBus = ? and date = ? and status = 1 and idSeat=?;";
            PreparedStatement pr = cn.prepareStatement(sql);
            pr.setInt(1, idBus);
            pr.setString(2, date);
            pr.setInt(3, idSeat);
            ResultSet rs = pr.executeQuery();
            if (rs.first()) {
                return  true;
            }
        } catch (SQLException e) {
            System.out.println(e);
            }
        return false;
    }
    
    public ArrayList getidSeat(int idBus) {
        ArrayList<viewSeat> list = new ArrayList();
        Connection cn = new MyConnect().getJDBCConnection();

        try {

            String sql = "select seat.idSeat, seat.seatNum, status from seat where seat.idBus = ?;";
            PreparedStatement pr = cn.prepareStatement(sql);
            pr.setInt(1, idBus);
            ResultSet rs = pr.executeQuery();
            while (rs.next()) {
                viewSeat viewseat = new viewSeat(rs.getInt(1), rs.getString(2), rs.getInt(3));
                list.add(viewseat);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
     public Seat getSeatByIdseat(int idseat){
   Seat newseat = new Seat();
        try {

            String sql = "SELECT * from seat where idSeat = ? ";
            Connection conn = MyConnect.getJDBCConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, idseat);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
            newseat = new Seat(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return newseat;
    }
}
