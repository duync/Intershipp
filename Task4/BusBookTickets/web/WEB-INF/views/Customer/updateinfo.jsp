<%-- 
    Document   : updateinfo
    Created on : Nov 12, 2019, 9:19:30 AM
    Author     : khang
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset= utf-8">
    <title>JSP Page</title>
    <style><c:import url="../../../assets/bootstrap/css/bootstrap.min.css"></c:import></style>
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/gradient-navbar-1.css">
    <link rel="stylesheet" href="assets/css/gradient-navbar.css">
    <link rel="stylesheet" href="assets/css/Lista-Productos-Canito.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"> 
    <!-- Link icon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
</head>
<body>
    <h1 style="padding-left: 35%;">Cập nhật thông tin khách hàng</h1>
    <div>
        <div class="container">
            <table class="table table-striped">
                <tbody>
                    <tr>
                        <td colspan="1">
                            <form class="well form-horizontal" action="updateCustomerServlet?yeucau=update" method="post" >

                                <input id="fullName" name="txtId" value="${newcus.idUser}" type="text" hidden="true">

                            <div class="form-group">
                                <label class="col-md-4 control-label">Tên đăng nhập</label>
                                <div class="col-md-8 inputGroupContainer">
                                    <div class="input-group"><span class="input-group-addon"><i class="fa fa-user-circle-o"></i></span><input id="fullName" name="txtname" value="${newcus.getUsername()}" readonly="" placeholder="Username" class="form-control" required="true"  type="text"></div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label">Mật khẩu</label>
                                <div class="col-md-8 inputGroupContainer">
                                    <div class="input-group"><span class="input-group-addon"><i class="fa fa-key" aria-hidden="true"></i></span><input id="addressLine1" name="txtpass" value="${newcus.getPassword()}" placeholder="Password" class="form-control" required="true" type="text"></div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label">Họ và tên</label>
                                <div class="col-md-8 inputGroupContainer">
                                    <div class="input-group"><span class="input-group-addon"><i class="fa fa-id-card-o" aria-hidden="true"></i></span><input id="addressLine2" name="txtfullname" value="${newcus.getFullName()}" placeholder="Fullname" class="form-control" required="true" type="text"></div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label">Giới tính</label>
                                <div class="col-md-8 inputGroupContainer">
                                    <div class="input-group"><span class="input-group-addon"><i class="fa fa-transgender" aria-hidden="true"></i></span> 
                                        <input id="addressLine1" name="txtgender" value="${newcus.getGender()}" readonly="" placeholder="Gender" class="form-control" required="true" type="text">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label">Địa chỉ</label>
                                <div class="col-md-8 inputGroupContainer">
                                    <div class="input-group"><span class="input-group-addon"><i class="fa fa-address-book" aria-hidden="true"></i></span><input id="state" name="txtaddress" value="${newcus.getAddress()}" placeholder="Address" class="form-control" required="true" type="text"></div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label">Số điện thoại</label>
                                <div class="col-md-8 inputGroupContainer">
                                    <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span><input id="postcode" name="txtphoneNum" value="${newcus.getPhoneNum()}" placeholder="" class="form-control" required="true" type="text"></div>
                                </div>
                            </div>
                            <!--                                    <input name="txtrole" value="Customer" hidden="true">-->
                            <div class="form-group">
                                <label class="col-md-4 control-label">Địa chỉ email</label>
                                <div class="col-md-8 inputGroupContainer">
                                    <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span><input id="email" name="txtemail" value="${newcus.getEmail()}" placeholder="Email" class="form-control" required="true" value="" type="text"></div>
                                </div>
                            </div>

                            <div class="form-group">
                                <button style="margin-left: 54%;width: 12%;" id = "btnSubmit" class="btn btn-primary" type="submit" value="submit">Cập nhật</button>
                            </div>
                        </form>
                    </td>

                </tr>
            </tbody>
        </table>
    </div>
</div>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>