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
public class Ticket {
    private int idTicket;
    private int idBus;
    private int idSeat;
    private int idUser;
    private String date;

    public int getIdTicket() {
        return idTicket;
    }

    public void setIdTicket(int idTicket) {
        this.idTicket = idTicket;
    }

    public int getIdBus() {
        return idBus;
    }

    public void setIdBus(int idBus) {
        this.idBus = idBus;
    }

    public int getIdSeat() {
        return idSeat;
    }

    public void setIdSeat(int idSeat) {
        this.idSeat = idSeat;
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

    public Ticket(int idTicket, int idBus, int idSeat, int idUser, String date) {
        this.idTicket = idTicket;
        this.idBus = idBus;
        this.idSeat = idSeat;
        this.idUser = idUser;
        this.date = date;
    }
    public Ticket(int idBus, int idSeat, int idUser, String date) {
        this.idBus = idBus;
        this.idSeat = idSeat;
        this.idUser = idUser;
        this.date = date;
    }
    public Ticket() {
        this.idTicket = 0;
        this.idBus = 0;
        this.idSeat = 0;
        this.idUser = 0;
        this.date = "";
    }
}
