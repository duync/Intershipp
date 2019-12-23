/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

/**
 *
 * @author DELL
 */
public class TicketUser {

    public TicketUser() {
    }
    private int idTicket;
    private String departure;
    private String destination;
    private int idSeat;
    private String fullName;
    private String phoneNum;
    private String date;
    private int status;

    public TicketUser(int idTicket, String departure, String destination, int idSeat, String fullName, String phoneNum, String date, int status) {
        this.idTicket = idTicket;
        this.departure = departure;
        this.destination = destination;
        this.idSeat = idSeat;
        this.fullName = fullName;
        this.phoneNum = phoneNum;
        this.date = date;
        this.status = status;
    }

    public int getIdTicket() {
        return idTicket;
    }

    public void setIdTicket(int idTicket) {
        this.idTicket = idTicket;
    }

    public String getDeparture() {
        return departure;
    }

    public void setDeparture(String departure) {
        this.departure = departure;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public int getIdSeat() {
        return idSeat;
    }

    public void setIdSeat(int idSeat) {
        this.idSeat = idSeat;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

}
