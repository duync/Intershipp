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
public class Products {
    private String ProductName;
    private int Price;
    private int Stock;
    private String Description;
    private String Manufactures;
    private String Conditon;
    private String Img;

    public Products(String ProductName, int Price, int Stock, String Description, String Manufactures, String Conditon, String Img) {
        this.ProductName = ProductName;
        this.Price = Price;
        this.Stock = Stock;
        this.Description = Description;
        this.Manufactures = Manufactures;
        this.Conditon = Conditon;
        this.Img = Img;
    }
    
    

    public String getProductName() {
        return ProductName;
    }

    public void setProductName(String ProductName) {
        this.ProductName = ProductName;
    }

    public int getPrice() {
        return Price;
    }

    public void setPrice(int Price) {
        this.Price = Price;
    }

    public int getStock() {
        return Stock;
    }

    public void setStock(int Stock) {
        this.Stock = Stock;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public String getManufactures() {
        return Manufactures;
    }

    public void setManufactures(String Manufactures) {
        this.Manufactures = Manufactures;
    }

    public String getConditon() {
        return Conditon;
    }

    public void setConditon(String Conditon) {
        this.Conditon = Conditon;
    }

    public String getImg() {
        return Img;
    }

    public void setImg(String Img) {
        this.Img = Img;
    }
}
