/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import entities.Ticket;
import helper.MyConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author khang
 */
public class BookTicketModel {
    public int bookTicket(Ticket a)
    {
        int kq=0;
        Connection cn = new MyConnect().getJDBCConnection();
        if(cn == null)
            return -1;
        
        try {
            String sql = "insert into ticket(idBus, idSeat, idUser, date,status) values(?,?,?,?,1)";
            PreparedStatement ps = cn.prepareStatement(sql);
            ps.setInt(1, a.getIdBus());
            ps.setInt(2, a.getIdSeat());
            ps.setInt(3, a.getIdUser());
            ps.setString(4, a.getDate());
            kq = ps.executeUpdate(); 
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return kq;
    }
}
