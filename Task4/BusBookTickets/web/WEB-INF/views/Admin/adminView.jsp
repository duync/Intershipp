<%-- 
    Document   : adminView
    Created on : Oct 24, 2019, 3:29:06 PM
    Author     : DELL
--%>


<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP Page</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/gradient-navbar-1.css">
    <link rel="stylesheet" href="assets/css/gradient-navbar.css">
    <link rel="stylesheet" href="assets/css/Lista-Productos-Canito.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <style><c:import url="../../../assets/bootstrap/css/bootstrap.min.css"></c:import></style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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

    <div>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h2 style="width: 343px;">USERS LIST</h2>
                </div>
                <div class="col-md-4 d-flex justify-content-end align-self-start"><i class="fa fa-search fa-2x"  ></i><input class="border rounded d-xl-flex justify-content-xl-center align-items-xl-center search-field" type="search" id="myInput" style="background-color: #eaeaea;width: 80%;height: 38px;padding: 0px;margin-left: 17px;"
                                                                                                                             name="search"></div>
                <div class="col-md-4 d-flex justify-content-center align-items-center"><button class="btn btn-primary d-flex align-items-center align-self-center" type="button" style="height: 38px; background-color: rgb(21,221,4);position: relative; left: 125px;"><a href="<c:url value="/WEB-INF/views/Admin/createAccountByAdmin.jsp"/>" style="color: white;">Tạo tài khoản. </a><i class="fa fa-plus-circle"></i></button></div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                    <thead>
                        <tr>
                            <th>Mã người dùng</th>
                            <th>Tên đăng nhập</th>
                            <th>Mật khẩu</th>
                            <th>Họ và tên</th>
                            <th>Giới tính</th>
                            <th>Địa chỉ</th>
                            <th>Số điện thoại</th>
                            <th>Vai trò</th>
                            <th>Email</th>
                            <th>Action</th>
                        </tr>
                    </thead>

                    <c:forEach items="${accountList}" var="acc">
                        <tbody id="myTable">
                            <tr>
                                <td><h3>${acc.idUser}</h3></td>
                                <td><p>${acc.getUsername()}</p></td>
                                <td><p>${acc.getPassword()}</p></td>
                                <td><p>${acc.getFullName()}</p></td>
                                <td><p>${acc.getGender()}</p></td>
                                <td><p>${acc.getAddress()}</p></td>
                                <td><p>${acc.getPhoneNum()}</p></td>
                                <td><p>${acc.getRole()}</p></td>
                                <td><p>${acc.getEmail()}</p></td>
                                <td><a class="btn btn-danger" href="getListAccount?yeucau=laythongtin&txtId=${acc.idUser}"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Cập nhật</a></td>
                            </tr>
                        </tbody>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
</div>

</body>
</html>
