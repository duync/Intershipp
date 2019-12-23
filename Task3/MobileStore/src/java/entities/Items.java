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
public class Items {

    private SanPham sanpham;
    private int soluong;

    public Items() {

    }

    public Items(SanPham sanpham, int soluong) {
        this.sanpham = sanpham;
        this.soluong = soluong;
    }

    /**
     * @return the sanpham
     */
    public SanPham getSanpham() {
        return sanpham;
    }

    /**
     * @param sanpham the sanpham to set
     */
    public void setSanpham(SanPham sanpham) {
        this.sanpham = sanpham;
    }

    /**
     * @return the soluong
     */
    public int getSoluong() {
        return soluong;
    }

    /**
     * @param soluong the soluong to set
     */
    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

}
