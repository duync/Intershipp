<%-- 
    Document   : View
    Created on : Oct 7, 2019, 8:52:31 AM
    Author     : DELL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.SanPhamModel"%>
<%@page import="entities.Products"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <div class="card-header"><a href="shoppingCart.jsp" style="float: right;" class="btn btn-outline-primary"><i class="fa fa-shopping-cart" aria-hidden="true"></i> View Card</a>
            <h1>Products</h1>
            <p>All the available products in our store</p>
        </div>

<!--        <p><%=request.getAttribute("thongbao")%></p>
         <form action="ProductSeverlet?yeucau=search" method="post">
             <h5>Search</h5>
             ProductName <input type="text" name="txtProductName"/>
             <input type="submit" value="Search"/>
        </form>-->

        <%
            ArrayList spham_list = new SanPhamModel().getListSanPham();

        %>
        <div class="row">
            <c:forEach var="p" items="<%=spham_list%>">

                <div class="col-sm-3">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">${p.tensp}</h5>
                            <img src ="Img/${p.hinh}" class="card-img-top">
                            <p style="overflow: hidden;height:100px" class="card-text">${p.mota}</p>
                            <p>${p.gia} USD</p>
                            <p>${p.soluong} units in stock</p>
                            <a href="chitietSanPhamServlet?yeucau=xemsp&txtmasp=${p.masp}&txtmadm=${p.madm}" class="btn btn-primary"><i class="fa fa-info-circle" aria-hidden="true"></i> Details</a>
                            <a href="GioHangServlet?yeucau=muasp&txtmasp=${p.masp}" class="btn btn-warning"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Order Now</a>                        
                        </div>
                    </div>
                </div>

            </c:forEach>
        </div>
       
    </body>
</html>
