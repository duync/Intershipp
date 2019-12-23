/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

/**
 *
 * @author khang
 */
public class TicketPay {
    private int idBus;
    private String seatNum;
    private int idUser;
    private String date;

    public int getIdBus() {
        return idBus;
    }

    public void setIdBus(int idBus) {
        this.idBus = idBus;
    }

    public String getSeatNum() {
        return seatNum;
    }

    public void setSeatNum(String seatNum) {
        this.seatNum = seatNum;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
    public TicketPay(int idBus, String seatNum, int idUser,String date) {
        this.idBus = idBus;
        this.seatNum = seatNum;
        this.idUser = idUser;
        this.date = date;
    }
    public TicketPay() {
        this.idBus = 0;
        this.seatNum = "";
        this.idUser = 0;
        this.date = "";
    }
}
