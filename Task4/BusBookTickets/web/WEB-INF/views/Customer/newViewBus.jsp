<%-- 
    Document   : newViewBus
    Created on : Nov 1, 2019, 8:44:41 AM
    Author     : khang
--%>

<%@page import="model.BusModel"%>
<%@page import="java.util.ArrayList"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <!--<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">-->
    <style><c:import url="../../../assets/bootstrap/css/bootstrap.min.css"></c:import></style>
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700">
    <link rel="stylesheet" href="assets/css/styles.min.css">
    <link rel="stylesheet" href="assets/css/datepicker.css">script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style type="text/css">
        #dp1::-webkit-calendar-picker-indicator {
            margin-left: 15px;
            width: 20px;
            height: 20px;
            -webkit-appearance: none;
        }
        a{
            color: white;
        }
    </style>
</head>
<body>

    <div>
        <nav class="navbar navbar-default navbar-expand-xl fixed-top text-white text-monospace" style="background: #444444;">
            <div class="container-fluid"><a class="navbar-brand" href="#">Elm transport</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse"
                     id="navcol-1">

                    <ul class="nav navbar-nav ml-auto">
                        <div class="dropdown" style="margin-right: 35px;" >
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fa fa-user-o" aria-hidden="true"></i>
                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="getListTicketByCustomer">Xem lịch sử đặt vé</a>
                                <a class="dropdown-item" href="GetAccountCustomer?yeucau=laythongtin&txtId=${Iduser}">Thông tin cá nhân</a>
                        </div>
                    </div>
                    <li class="nav-item" role="presentation"><a class="nav-link active" href="#" style="margin-right: 40px;">Đăng nhập</a></li>
                    <li class="nav-item" role="presentation" style="margin-right: 20px;"><a class="nav-link" href="#">Đăng kí</a></li>
                </ul>
            </div>
        </div>
    </nav>
</div>

<header class="dh-header-non-rectangular" style="height: 430px;">


    <div class="container" >

        <form action="ViewBusServlet" method="post">

            <% ArrayList listBus = new BusModel().getList();%>

            <div class="col-md-12 dh-header-non-rectangular-container" style="position: relative; top: 0px;">

                <h1 style="color: white; text-shadow: 1px 0px 10px cyan, -1px 0px 10px magenta; font-size: 60px; position: relative; top: 55px;">Start your journey</h1>


                <div class="form-group" style="position: relative; top: 80px;">
                    <input name="txtdate" id="dp1" type="date" class="form-control clickable input-md" placeholder="&#xf133; Choose a date" style="position: relative; width: 24%; left: 18%;">

                    <select class="form-control clickable input-md" style="position: relative;top: -38px; left: 43%; width: 25%;"
                            id="id" name="txtBus">
                        <c:forEach items="<%= listBus%>" var="bus">
                            <option value="${bus.idBus}">${bus.getDeparture()}-${bus.getDestination()} 
                            </c:forEach>
                    </select>

                    <button style="position: relative;top: -75px; left: 27%; width: 15%;" class="btn btn-warning" type="submit">Đặt vé</button>
                </div>

                <img src ="./assets/img/banner1.jpg" style="z-index: -100; width: 120%; padding: 0px; position: relative; left: -105px; top: -250px; opacity: 0.9;" />
            </div>
        </form>
</header>

<div class="footer-basic" style="padding-top: 20px; padding-bottom: 0px;">
    <footer>
        <div class="social"><a href="#"><i class="icon ion-social-instagram"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-facebook"></i></a></div>
        <ul class="list-inline">
            <li class="list-inline-item"><a href="#">Home</a></li>
            <li class="list-inline-item"><a href="#">Services</a></li>
            <li class="list-inline-item"><a href="#">About</a></li>
            <li class="list-inline-item"><a href="#">Terms</a></li>
            <li class="list-inline-item"><a href="#">Privacy Policy</a></li>
        </ul>
        <p class="copyright">Elm transport © 2019</p>
    </footer>
</div>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/bootstrap/js/custom.js"></script>
</body>
<script>
    $("#id").change(function () {
        var x = $(this).val();
        document.getElementById("book").href = "ViewSeatServlet?yeucau=book&&txtBus=" + x;
    });
</script>
</html>
