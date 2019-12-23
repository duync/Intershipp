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
public class Seat {
    private int idSeat;
    private String seatNum;
    private int idBus;
    private int status;

    public String getSeatNum() {
        return seatNum;
    }

    public void setSeatNum(String seatNum) {
        this.seatNum = seatNum;
    }
    
    public int getIdSeat() {
        return idSeat;
    }

    public void setIdSeat(int idSeat) {
        this.idSeat = idSeat;
    }

    public int getIdBus() {
        return idBus;
    }

    public void setIdBus(int idBus) {
        this.idBus = idBus;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Seat(int idSeat, String seatNum, int idBus, int status) {
        this.idSeat = idSeat;
        this.seatNum= seatNum;
        this.idBus = idBus;
        this.status = status;
    }
    public Seat()
    {
        this.idSeat = 0;
        this.idBus = 0;
        this.status = 0;
    }
    public Seat(int idSeat, int idBus)
    {
        this.idSeat=idSeat;
        this.idBus=idBus;
    }
}
