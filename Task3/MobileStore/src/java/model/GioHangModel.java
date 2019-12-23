/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entities.Items;
import entities.SanPham;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 *
 * @author DELL
 */
public class GioHangModel {

    HashMap<String, Items> cart;

    public GioHangModel() {
        cart = new HashMap<>();
    }

    public void addSanPham(String masp) {
        if (cart.containsKey(masp)) {
            Items item = cart.get(masp);
            int count = item.getSoluong();
            count = count + 1;
            item.setSoluong(count);
        } else {
            SanPham sanpham = new SanPhamModel().getSanPhamByMasp(masp);
            Items item = new Items(sanpham, 1);
            cart.put(masp, item);
        }
    }

    public ArrayList<Items> getListSanPham() {
        ArrayList<Items> listItems = new ArrayList<>();
        for (Items i : cart.values()) {
            listItems.add(i);
        }
        return listItems;
    }

    public void removeSanPham(String masp) {
        cart.remove(masp);
    }

    public void removeAllSanPham() {
        cart.clear();
    }
    public int getTongTien(){
        int tien = 0;
        for(Items item : cart.values()){
            tien +=(item.getSanpham().getGia()*item.getSoluong());
        }
        return tien;
    }

}
