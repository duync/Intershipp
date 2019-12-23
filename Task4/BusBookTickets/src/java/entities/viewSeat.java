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
public class viewSeat {

    public viewSeat() {
    }
    private int idSeat;
    private String seatNum;
    private int status;
    private int idUser;
    private int idBus;

    public viewSeat(int idSeat, String seatNum, int status, int idUser, int idBus) {
        this.idSeat = idSeat;
        this.seatNum = seatNum;
        this.status = status;
        this.idUser = idUser;
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

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
    
   
    public viewSeat(int idSeat, String seatNum, int status) {
        this.idSeat = idSeat;
        this.seatNum = seatNum;
        this.status = status;
    }
}
