<%-- 
    Document   : updateAccount
    Created on : Oct 25, 2019, 8:28:35 AM
    Author     : DELL
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
    <h1 style="padding-left: 37%;">Cập nhật thông tin tài khoản</h1>


    <div>
        <div class="container">
            <table class="table table-striped">
                <tbody>
                    <tr>
                        <td colspan="1">
                            <form class="well form-horizontal" action="updateAccount?yeucau=update" method="post" >
                                <div class="form-group">
                                    <label class="col-md-4 control-label">Mã người dùng</label>
                                    <div class="col-md-8 inputGroupContainer">
                                        <div class="input-group"><span class="input-group-addon"><i class="fa fa-user-secret"></i></span><input id="fullName" name="txtId" placeholder="Iduser" class="form-control" required="true" value="${acc.idUser}" readonly="" type="text"></div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label">Tên đăng nhập</label>
                                <div class="col-md-8 inputGroupContainer">
                                    <div class="input-group"><span class="input-group-addon"><i class="fa fa-user"></i></span><input id="fullName" name="txtname" value="${acc.getUsername()}" readonly="" placeholder="Username" class="form-control" required="true"  type="text"></div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label">Mật khẩu</label>
                                <div class="col-md-8 inputGroupContainer">
                                    <div class="input-group"><span class="input-group-addon"><i class="fa fa-key"></i></span><input id="addressLine1" name="txtpass" value="${acc.getPassword()}" placeholder="Password" class="form-control" required="true" type="text"></div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label">Họ và tên</label>
                                <div class="col-md-8 inputGroupContainer">
                                    <div class="input-group"><span class="input-group-addon"><i class="fa fa-user-circle"></i></span><input id="addressLine2" name="txtfullname" value="${acc.getFullName()}" placeholder="Fullname" class="form-control" required="true" type="text"></div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label">Giới tính</label>
                                <div class="col-md-8 inputGroupContainer">
                                    <div class="input-group"><span class="input-group-addon"><i class="fa fa-venus-mars"></i></i></span> 
                                        <input id="addressLine1" name="txtgender" value="${acc.getGender()}" readonly="" placeholder="Gender" class="form-control" required="true" type="text">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label">Địa chỉ</label>
                                <div class="col-md-8 inputGroupContainer">
                                    <div class="input-group"><span class="input-group-addon"><i class="fa fa-map-marker"></i></span><input id="state" name="txtaddress" value="${acc.getAddress()}" placeholder="Address" class="form-control" required="true" type="text"></div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label">Số điện thoại</label>
                                <div class="col-md-8 inputGroupContainer">
                                    <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span><input id="postcode" name="txtphoneNum" value="${acc.getPhoneNum()}" placeholder="" class="form-control" required="true" type="text"></div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label">Chức vụ</label>
                                <div class="col-md-8 inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon" style="max-width: 100%;"><i class="glyphicon glyphicon-list"></i></span>
                                        <!--<input id="state" name="txtrole" value="${acc.getRole()}" placeholder="Address" class="form-control" required="true" type="text">-->
                                        <select style="height: 31px;" value="${acc.getRole()}" name = "txtrole" class="form-control">
                                            <option value="Seller">Seller</option>
                                            <option value="Customer">Customer</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label">Địa chỉ email</label>
                                <div class="col-md-8 inputGroupContainer">
                                    <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span><input id="email" name="txtemail" value="${acc.getEmail()}" placeholder="Email" class="form-control" required="true" value="" type="text"></div>
                                </div>
                            </div>

                            <div class="form-group">
                                <button  id = "btnSubmit" style="margin-left: 58%;" class="btn btn-primary" type="submit" value="submit">SUBMIT</button>
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
