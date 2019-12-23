<%-- 
    Document   : viewseat
    Created on : Oct 30, 2019, 9:47:00 AM
    Author     : khang
--%>

<%@page import="entities.Bus"%>
<%@page import="model.BusModel"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
        <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700">
        <link rel="stylesheet" href="assets/css/styles.min.css">
        <link rel="stylesheet" href="assets/css/datepicker.css">script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/4.0.0/normalize.min.css">
        <link rel="stylesheet" href="assets/css/bookingSeat.css">

        <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
<!--        <style type="text/css">
            #dp1::-webkit-calendar-picker-indicator {
                margin-left: 15px;
                width: 20px;
                height: 20px;
                -webkit-appearance: none;
            }
            a{
                color: white;
            }
            
            .seat input[type=checkbox]:disabled + label:after {
               
                text-indent: 0;
                position: absolute;
                top: 4px;
                left: 50%;
                transform: translate(-50%, 0%);
              }
        </style>-->
    </head>
    <body>
      

        <div>
            <nav class="navbar navbar-default navbar-expand-xl fixed-top text-white text-monospace" style="background: #444444;">
                <div class="container-fluid"><a class="navbar-brand" href="#">Elm transport</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse"
                         id="navcol-1">
                        <ul class="nav navbar-nav ml-auto">
                            <li class="nav-item" role="presentation"><a class="nav-link active" href="#" style="margin-right: 40px;">Đăng nhập</a></li>
                            <li class="nav-item" role="presentation" style="margin-right: 20px;"><a class="nav-link" href="#">Đăng kí</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>

       
         
        <div style="position: relative;top: 50px; border: 5px solid gray; border-radius: 20px; height: 100px; width: 80%; margin-left: auto; margin-right: auto; text-align: center;">
  
            <h4> <img src="assets/img/icon_bus.png" style="width: 7%; height: 7%;">
                ${bus.getDeparture()} - ${bus.getDestination()}
            </h4>
    
            <h7 style="position: relative; top: -25px; left: -14.5px;"> Ngày khởi hành: ${dateBook}</h7>
        </div>

        <header class="dh-header-non-rectangular" style="position: relative; top: -40px; height: 370px;">
            <form action="BookTicketServlet?yeucau=bookticket&&txtBus=${txtBus}&&txtiduser=${Iduser}&&txtdate=${dateBook}" method="post">
                <div class="plane">
                    <div class="cockpit">
                       
                    </div>
                    <ol class="cabin" style="height: 250px;">
                        <li class="row row--1">
                            <ol class="seats" type="A">
                                <c:forEach begin="0" end="8" items="${listseat}" var="st">
                                    <li class="seat">
                                        <input type ="checkbox"  <c:if test="${st.status == 1}">style="background-color: #bada55;" disabled </c:if> name="chon" id="${st.idSeat}" value="${st.idSeat}" />
                                        <label <c:if test="${st.status == 1}">style="background-color: #bada55;" </c:if> for="${st.idSeat}">${st.getSeatNum()}</label>
                                        </li>
                                </c:forEach>
                            </ol>
                        </li>
                        <li class="row row--2">
                            <ol class="seats" type="A">
                                <c:forEach begin="9" end="17" items="${listseat}" var="st">
                                    <li class="seat">
                                        <input type="checkbox" <c:if test="${st.status == 1}">style="background-color: #bada55;" disabled </c:if> name="chon" id="${st.idSeat}" value="${st.idSeat}" />
                                        <label <c:if test="${st.status == 1}">style="background-color: #bada55;" </c:if> for="${st.idSeat}">${st.getSeatNum()}</label>
                                    </li>

                                </c:forEach>
                            </ol>
                        </li>
                        <li class="row row--3">
                            <ol class="seats" type="A">
                                <li class="seat">
                                    <input style="visibility: hidden;"/>
                                    <label style="visibility: hidden;" for="A">none</label>
                                </li>

                            </ol>
                        </li>
                        <li class="row row--1">
                            <ol class="seats" type="A">
                                <c:forEach begin="18" end="26" items="${listseat}" var="st">
                                    <li class="seat">
                                        <input type="checkbox" <c:if test="${st.status == 1}">style="background-color: #bada55;" disabled </c:if> name="chon" id="${st.idSeat}" value="${st.idSeat}" />
                                        <label <c:if test="${st.status == 1}">style="background-color: #bada55;" </c:if> for="${st.idSeat}">${st.getSeatNum()}</label>
                                    </li>

                                </c:forEach>
                            </ol>
                        </li>
                        <li class="row row--1">
                            <ol class="seats" type="A">
                                <c:forEach begin="27" end="35" items="${listseat}" var="st">
                                    <li class="seat">
                                        <input type="checkbox" <c:if test="${st.status == 1}">style="background-color: #bada55;" disabled </c:if> name="chon" id="${st.idSeat}"  value="${st.idSeat}"/>
                                        <label <c:if test="${st.status == 1}">style="background-color: #bada55;" </c:if> for="${st.idSeat}">${st.getSeatNum()}</label>
                                    </li>

                                </c:forEach>
                            </ol>
                        </li>

                    </ol>
                </div>

               
            </form>
        </header>



        <div style="position: relative; left: 450px;">
            <li class="seat" style="width: 150px;">
                <div type="checkbox"/>
                <label style="width: 35px;"></label>
                <b style="color: black; position: relative; top: -42px; left: 45px;">Ghế còn trống</b>
            </li>

            <li class="seat" style="width: 130px; position: relative; left: 150px;">
                <div type="checkbox"/>
                <label style="width: 35px; background: #bada55; position: relative; top: -35px; left: 60px;"></label>
                <b style="color: black; position: relative; top: -76px; left: 105px;">Ghế đã đặt</b>
            </li>
            
             <li class="seat" style="width: 130px; position: relative; left: 150px;">
                 <a href="SellerIndex.jsp">BACK</a>
            </li>
            
        </div>

        <div class="footer-basic" style="padding-top: 20px; padding-bottom: 0px;">
            <footer>
                <div class="social">
                    <a href="#"><i class="icon ion-social-instagram"></i></a>
                    <a href="#"><i class="icon ion-social-snapchat"></i></a>
                    <a href="#"><i class="icon ion-social-twitter"></i></a>
                    <a href="#"><i class="icon ion-social-facebook"></i></a>
                </div>
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
</html>
