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
public class DanhMuc {

    private int madm;
    private String tendm;

    public int getMadm() {
        return madm;
    }

    public void setMadm(int madm) {
        this.madm = madm;
    }

    public String getTendm() {
        return tendm;
    }

    public void setTendm(String tendm) {
        this.tendm = tendm;
    }

    public DanhMuc() {
        this.madm = 0;
        this.tendm = "";
    }

    public DanhMuc(int madm, String tendm) {
        this.madm = madm;
        this.tendm = tendm;
    }

}
