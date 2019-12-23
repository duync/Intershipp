<%-- 
    Document   : shoppingCart
    Created on : Oct 15, 2019, 2:18:56 PM
    Author     : DELL
--%>

<%@page import="entities.SanPham"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container">
            <div class="jumbotron">   
                <h1>Cart</h1>
                <p>All the selected products in your cart</p>
            </div>
            <button type="button" class="btn btn-success" style="float: right;"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Check out</button>
            <a href="GioHangServlet?yeucau=xoatatca" class="btn btn-danger"><i class="fa fa-close" style="font-size:18px; color:white"></i> Clear Cart</a>

            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Product</th>
                        <th scope="col">Quantity</th>
                        <th scope="col">Unit price</th>
                        <th scope="col">Price</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <c:set var="total" value="${0}"></c:set>

                <c:forEach var="i" items="${giohang}">
                    <c:set var="total" value="${total+(i.sanpham.gia*i.soluong)}"></c:set>
                        <tr>
                            <th>${i.sanpham.tensp}</th>
                        <th>${i.soluong}</th>
                        <th>${i.sanpham.gia}</th>
                        <th>${i.sanpham.gia*i.soluong}</th>
                        <th><a href="GioHangServlet?yeucau=xoasp&txtmasp=${i.sanpham.masp}" class="btn btn-danger"><i class="fa fa-close" style="font-size:18px; color:white"></i> Remove</a></th>
                    </tr>
                </c:forEach>
                <tr>
                    <td></td>
                    <td></td>
                    <th>Grand Total</th>
                    <th>${total}</th>
                    <td></td>
                </tr>
            </table>


            <a href="listSP.jsp" class="btn btn-success"><i class="fa fa-arrow-circle-left" style="font-size:18px"></i> Continue shopping</a>

    </body>
</html>
