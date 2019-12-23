/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entities.Ticket;
import entities.TicketUser;
import helper.MyConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author DELL
 */
public class TicketModel {

    public TicketModel() {
    }

//    public List<Ticket> getListTicket() {
//        ArrayList<Ticket> list = new ArrayList<>();
//        Connection conn = MyConnect.getJDBCConnection();
//        if (conn == null) {
//            return null;
//        }
//        try {
//            String sql = "select * from ticket";
//            PreparedStatement ps = conn.prepareStatement(sql);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                Ticket tic = new Ticket(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getString(5));
//                list.add(tic);
//            }
//            ps.close();
//            conn.close();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return list;
//    }
    public int delete(Ticket a) {
        int kq = 0;

        try {
            Connection conn = MyConnect.getJDBCConnection();
            String sql = "update ticket set status = 0 where idTicket = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, a.getIdTicket());

            kq = ps.executeUpdate(); // delete thành công trả về  1
        } catch (Exception e) {
            e.printStackTrace();
        }

        return kq;
    }

    public ArrayList<TicketUser> getTicketByIdUser(int idUser) {
        ArrayList<TicketUser> list = new ArrayList();
        try {

            String sql = "SELECT idTicket, departure, destination, idSeat, fullName, phoneNum, date, status from ticket, bus, user where bus.idBus = ticket.idBus and user.idUser = ticket.idUser and ticket.idUser = ? ";
            Connection conn = MyConnect.getJDBCConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, idUser);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                TicketUser ticketUser = new TicketUser(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8));
                list.add(ticketUser);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public int cancelTicket(int idTicket) {
        int kq = 0;
        try {
            String sql = "update ticket set status = 0 where idTicket = ? ";
            Connection conn = MyConnect.getJDBCConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, idTicket);
            kq = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return kq;
    }

    public List<TicketUser> getListTicket() {
        List<TicketUser> list = new ArrayList<>();
        Connection conn = MyConnect.getJDBCConnection();
        if (conn == null) {
            return null;
        }
        try {
            String sql = "select idTicket, departure, destination, idSeat, fullname, phoneNum, date, status from ticket, bus, user where ticket.idUser = user.idUser and bus.idBus = ticket.idBus;";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                TicketUser tic = new TicketUser(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8));
                list.add(tic);
            }
            ps.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
