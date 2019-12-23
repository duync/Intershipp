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
public class Bus {
    private int idBus;
    private String departure;
    private String destination;
    private String time;
    private int price;

    public int getIdBus() {
        return idBus;
    }

    public void setIdBus(int idBus) {
        this.idBus = idBus;
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

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public Bus(int idBus, String departure, String destination, String time, int price) {
        this.idBus = idBus;
        this.departure = departure;
        this.destination = destination;
        this.time = time;
        this.price = price;
    }
    public Bus()
    {
        this.idBus = 0;
        this.departure = "";
        this.destination = "";
        this.time = "";
        this.price = 0;
    }
}
