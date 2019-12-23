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
public class SanPham {

    private String masp;
    private String tensp;
    private int gia;
    private String mota;
    private String trangthai;
    private String hinh;
    private int madm;
    private int soluong;
    private String theloai;

    public SanPham() {
        this.masp = "";
        this.tensp = "";
        this.gia = 0;
        this.mota = "";
        this.trangthai = "";
        this.hinh = "";
        this.madm = 0;
        this.soluong = 0;
        this.theloai = "";
    }

    public SanPham(String masp, String tensp, int gia, String mota, String trangthai, String hinh, int madm, int soluong,String theloai) {
        this.masp = masp;
        this.tensp = tensp;
        this.gia = gia;
        this.mota = mota;
        this.trangthai = trangthai;
        this.hinh = hinh;
        this.madm = madm;
        this.soluong = soluong;
        this.theloai = theloai;
    }

    /**
     * @return the masp
     */
    public String getMasp() {
        return masp;
    }

    /**
     * @param masp the masp to set
     */
    public void setMasp(String masp) {
        this.masp = masp;
    }

    /**
     * @return the tensp
     */
    public String getTensp() {
        return tensp;
    }

    /**
     * @param tensp the tensp to set
     */
    public void setTensp(String tensp) {
        this.tensp = tensp;
    }

    /**
     * @return the gia
     */
    public int getGia() {
        return gia;
    }

    /**
     * @param gia the gia to set
     */
    public void setGia(int gia) {
        this.gia = gia;
    }

    
    /**
     * @return the mota
     */
    public String getMota() {
        return mota;
    }

    /**
     * @param mota the mota to set
     */
    public void setMota(String mota) {
        this.mota = mota;
    }

    /**
     * @return the trangthai
     */
    public String getTrangthai() {
        return trangthai;
    }

    /**
     * @param trangthai the trangthai to set
     */
    public void setTrangthai(String trangthai) {
        this.trangthai = trangthai;
    }

    /**
     * @return the hinh
     */
    public String getHinh() {
        return hinh;
    }

    /**
     * @param hinh the hinh to set
     */
    public void setHinh(String hinh) {
        this.hinh = hinh;
    }

    /**
     * @return the madm
     */
    public int getMadm() {
        return madm;
    }

    /**
     * @param madm the madm to set
     */
    public void setMadm(int madm) {
        this.madm = madm;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public String getTheloai() {
        return theloai;
    }

    public void setTheloai(String theloai) {
        this.theloai = theloai;
    }

}
