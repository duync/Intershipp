<%-- 
    Document   : ticketpay
    Created on : Nov 13, 2019, 9:51:13 AM
    Author     : khang
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <h2 style="width: 343px;">Lịch sử đặt vé</h2>
                    </div>
<!--                    <div class="col-md-4 d-flex justify-content-end align-self-start"><i class="fas fa-search d-xl-flex justify-content-xl-center align-items-xl-center"></i><input class="border rounded d-xl-flex justify-content-xl-center align-items-xl-center search-field" type="search" id="myInput" style="background-color: #eaeaea;width: 80%;height: 38px;padding: 0px;margin-left: 17px;"
                                                                                                                                                                                    name="search"></div>-->
                    <!--<div class="col-md-4 d-flex justify-content-center align-items-center"><button class="btn btn-primary d-flex align-items-center align-self-center" type="button" style="height: 38px;background-color: rgb(21,221,4);position: relative;left: 485px;"><a href="/WEB-INF/views/Admin/updateAccount.jsp" style="color: white;">CREATE USER &nbsp;</a><i class="fa fa-plus-circle"></i></button></div>-->
                </div>
                <c:forEach items="${listticketpay}" var="ltp">
                        <table border="1px ">
                            <thead>
                                <tr>
                                    <th>Điểm đi</th>
                                    <th>Điểm đến</th>
                                    <th>Số ghê</th>
                                    <th>Tên</th>
                                    <th>Số điện thoại</th>
                                    <th>Ngày</th>
                                    <th>Gia</th>
                                </tr>
                            </thead>
                    <tr>
                        <td>${bus.departure}</td>
                        <td>${bus.destination}</td>
                        <td>${ltp.seatNum}</td>
                        <td>${us.fullName}</td>
                        <td>${us.phoneNum}</td>
                        <td>${ltp.date}</td>
                        <td>${bus.price}</td>   
                    </tr>
                        </table>
                    </div>
                </c:forEach>
            </div>
        <a class="btn btn-danger" href="/WEB-INF/views/Customer/newViewBus.jsp">back</a>
        <p>Total: ${bus.price*listticketpay.size()}</p>
    </body>
</html>
