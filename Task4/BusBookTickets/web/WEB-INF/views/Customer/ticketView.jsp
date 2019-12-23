<%-- 
    Document   : viewseat
    Created on : Oct 30, 2019, 9:47:00 AM
    Author     : khang
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="REFRESH" content="WEB-INF/views/Customer/ticketView.jsp" charset=UTF-8">
    <title>JSP Page</title>

    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/gradient-navbar-1.css">
    <link rel="stylesheet" href="assets/css/gradient-navbar.css">
    <link rel="stylesheet" href="assets/css/Lista-Productos-Canito.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <style><c:import url="../../../assets/bootstrap/css/bootstrap.min.css"></c:import></style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript">
        function disableButton(btn) {
            document.getElementById(btn.id).disabled = true;
            alert("Button has been disabled.");
        }
    </script>
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
            <div class="row">
                <div class="col-md-12">
                    <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>Điểm đi</th>
                                <th>Điểm đến</th>
                                <th>Số ghế</th>
                                <th>Họ và tên</th>
                                <th>Số điện thoại</th>
                                <th>Ngày khởi hành</th>
                                <th>Trạng thái</th>
                            </tr>
                        </thead>

                    <c:forEach items="${listTicket}" var="st">
                        <tr>
                            <td>${st.departure}</td>
                            <td>${st.destination}</td>
                            <td>${st.idSeat}</td>
                            <td>${st.fullName}</td>
                            <td>${st.phoneNum}</td>
                            <td>${st.date}</td>
    <!--                    <td>${st.status}</td>-->
    <!--                    <td><a class="btndel"   href="getListTicketByCustomer?yeucau=cancelTicket&&idTicket=${st.idTicket}">Cancel Ticket</a></td>-->
                            <td><input  class="btndel" id="${st.idTicket}"  
                                        <c:if test = "${st.status == 0}">
                                            value="Đã hủy"
                                            disabled
                                        </c:if>
                                        <c:if test = "${st.status == 1}">
                                            value="Hủy vé"
                                        </c:if>
                                        onclick="window.location.href = 'getListTicketByCustomer?yeucau=cancelTicket&&idTicket=${st.idTicket}'" type="button"  style="background-color: rgba(255,204,0,1); font-size:70%;color:#08233e; margin-left: 10%; -moz-border-radius:10px;
                                                -webkit-border-radius:10px;
                                                border-radius:10px;
                                                border-bottom:1px solid #9f9f9f;
                                                box-shadow:inset 0 1px 0 rgba(255,255,255,0.5);
                                                cursor:pointer;
                                                font:2.4em Futura, ‘Century Gothic’, AppleGothic, sans-serif;" ></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">
    $('.btndel').click(function () {

        var r = confirm("Xác nhận hủy");
        if (r == true) {
            var id = $(this).attr('id');
            $(this).attr("disabled", "true");

        } else {
        }
    });

</script>
</html>
