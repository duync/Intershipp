<%-- 
    Document   : adminView
    Created on : Oct 24, 2019, 3:29:06 PM
    Author     : DELL
--%>
<%@page import="entities.Ticket"%>
<%@page import="model.TicketModel"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Ticket</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script>
            $(document).ready(function () {
                $("#myInput").on("keyup", function () {
                    var value = $(this).val().toLowerCase();
                    $("#myTable tr").filter(function () {
                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                    });
                });
            });
        </script>
    </head>
    <body>
        <h1>List Ticket</h1>
        <table border="1">
            <input id="myInput" type="text" placeholder="Search..">
            <tr>

                <th>IDticket</th>
                <th>IDbus</th>
                <th>IDseat</th>
                <th>idUser</th>
                <th>Date</th>
                <th>Action</th>

            </tr>


            <c:forEach items="${ticketList}" var="tic">
                <tbody id="myTable">
                    <tr>
                        <td><h3>${tic.idTicket}</h3></td>
                        <td><p>${tic.idBus}</p></td>
                        <td><p>${tic.idSeat}</p></td>
                        <td><p>${tic.idUser}</p></td>
                        <td><p>${tic.date}</p></td>     
                    </tr>
                </tbody>
            </c:forEach>

        </table>

    </body>
</html>
