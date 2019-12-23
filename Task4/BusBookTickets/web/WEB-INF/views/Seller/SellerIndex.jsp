<%-- 
    Document   : adminView
    Created on : Oct 24, 2019, 3:29:06 PM
    Author     : DELL
--%>
<%@page import="model.BusModel"%>
<%@page import="entities.Ticket"%>
<%@page import="model.TicketModel"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seller Department</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    </head>
    <body>
        <h1>List Ticket</h1>

        <form action="ViewBusSellerServlet" method="post">

            <% ArrayList listBus = new BusModel().getList();%>

            <div>

              


                <div class="form-group" style="">
                    <input name="txtdate" id="dp1" type="date" class="form-control clickable input-md" placeholder="&#xf133; Choose a date" style="position: relative; width: 24%; left: 0%;">

                    <select class="form-control clickable input-md" style="position: relative;top: 0px; left: 0%; width: 25%;"
                            id="id" name="txtBus">
                        <c:forEach items="<%= listBus%>" var="bus">
                            <option value="${bus.idBus}">${bus.getDeparture()}-${bus.getDestination()} 
                            </c:forEach>
                    </select>

                    <button style="position: relative;top: 0px; left: 0%; width: 15%;" class="btn btn-warning" type="submit">Đặt vé</button>
                </div>

               
            </div>
        </form>

        <table border="1" id="myTable">        
            <input id="myInput" onkeyup="myFunction()" type="text" placeholder="Tìm theo điểm đến..">
            <input id="myInput2" onkeyup="myFunction2()" type="text" placeholder="Tìm số điện thoại..">
            <input id="myInput3" onchange="myFunction3()" type="date" placeholder="Tìm theo số đt người dùng..">
            <tr>
                <th>IDticket</th>
                <th>departure</th>
                <th>destionation</th>
                <th>idSeat</th>
                <th>FullName</th>
                <th>phoneNumber</th>
                <th>Date</th>
                <th>Status</th>
                <th>Action</th>

            </tr>


            <c:forEach items="${ticketList}" var="tic">
                <tbody >
                    <tr>
                        <td><h3>${tic.idTicket}</h3></td>
                        <td><p>${tic.departure}</p></td>
                        <td class="search"><p>${tic.destination}</p></td>
                        <td><p>${tic.idSeat}</p></td>
                        <td><p>${tic.fullName}</p></td>
                        <td class="search2"><p>${tic.phoneNum}</p></td>
                        <td class="search3"><p>${tic.date}</p></td>
                        <td><p>${tic.status}</p></td>
                        <td><a class="btndel" href="#" value="${tic.idTicket}"> remove</a></td>


                    </tr>
                </tbody>
            </c:forEach>

        </table>

    </body>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".btndel").click(function () {
                var txt;
                var id = $(this).attr("value");
                var r = confirm("Are you sure?");
                if (r == true) {
                    $(this).attr("href", "ticketServlet?yeucau=delete&txtId=" + id);
//                        window.location = "ticketServlet?yeucau=delete&txtId=${tic.idTicket}";
                } else {
                    txt = "You pressed Cancel!";
                }
            });
        });
    </script>

    <script>
        function myFunction() {
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("myInput");
            filter = input.value.toUpperCase();
            table = document.getElementById("myTable");
            tr = table.getElementsByTagName("tr");
            for (i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td")[2];
                if (td) {
                    txtValue = td.textContent || td.innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        tr[i].style.display = "";
                    } else {
                        tr[i].style.display = "none";
                    }
                }
            }
        }
        function myFunction2() {
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("myInput2");
            filter = input.value.toUpperCase();
            table = document.getElementById("myTable");
            tr = table.getElementsByTagName("tr");
            for (i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td")[5];
                if (td) {
                    txtValue = td.textContent || td.innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        tr[i].style.display = "";
                    } else {
                        tr[i].style.display = "none";
                    }
                }
            }
        }
        function myFunction3() {
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("myInput3");
            filter = input.value.toUpperCase();
            table = document.getElementById("myTable");
            tr = table.getElementsByTagName("tr");
            for (i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td")[6];
                if (td) {
                    txtValue = td.textContent || td.innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        tr[i].style.display = "";
                    } else {
                        tr[i].style.display = "none";
                    }
                }
            }
        }
    </script>


</html>
