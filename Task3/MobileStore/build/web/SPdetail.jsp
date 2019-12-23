<%-- 
    Document   : chitietSP
    Created on : Oct 14, 2019, 2:49:19 PM
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
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    </head>
    <body>
        <p><%=request.getAttribute("thongbao")%></p>
        <div class="container">
            <div class="jumbotron">   
                <h1>Product</h1>
            </div>

            <div class="row">
                <div class="col-sm-6">
                    <div>
                        <img <img src ="Img/${sanpham.hinh} "class="classcard-img-top" width="100%">
                    </div>
                </div>
                <div class="col-sm-6">
                    <div>
                        <h3>${sanpham.tensp}</h3>
                        <p>${sanpham.mota}</p>
                        <p><b>Item Code : </b><span class="badge badge-warning">${sanpham.masp}</span></p>
                        <p><b>Manufaceture: </b>${dm.tendm}</p>
                        <p><b>Category : </b><a href="">${sanpham.theloai}</a></p>
                        <b>Avaible units in stock</b><p>${sanpham.soluong}</p>
                        <h5>${sanpham.gia} USD</h5>
                        
                        <a  href="listSP.jsp" class="btn btn-success">Back</a>      
                        <a href="GioHangServlet?yeucau=muasp&txtmasp=${sanpham.masp}" class="btn btn-warning"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Order Now</a>
                    </div>
                </div>

            </div>




    </body>
</html>
