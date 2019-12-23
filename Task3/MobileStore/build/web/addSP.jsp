<%-- 
    Document   : chitietSP
    Created on : Oct 14, 2019, 2:49:19 PM
    Author     : DELL
--%>
<%@page import="model.DanhMucModel"%>
<%@page import="entities.SanPham"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
                integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
                integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    </head>
    <body>
        <% ArrayList dmuc_list = new DanhMucModel().getListDanhMuc();%>
        <div class="container">
            <div class="jumbotron">
                <button type="button" class="btn btn-danger" style="float: right;">Logout</button>
                <h1>Product</h1>
                <p>Add products</p>
            </div>
            <!-- body  -->
            <div class="container">
                <p>Add new product</p>
                <hr />
                <form action="SanPhamServlet1?yeucau=insert" method="post" enctype= "multipart/form-data">
                    <div class="form-group row">
                        <label for="colFormLabel" class="col-sm-2 col-form-label">Mã Sản Phẩm</label>
                        <div class="col-sm-10">
                            <input type="text" name="txtmasp" class="form-control" id="colFormLabel" style="width:35%">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="colFormLabel" class="col-sm-2 col-form-label">Product Name</label>
                        <div class="col-sm-10">
                            <input type="text" name="txttensp" class="form-control" id="colFormLabel" style="width:35%">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="colFormLabel" class="col-sm-2 col-form-label">Unit Price</label>
                        <div class="col-sm-10">
                            <input type="text" name="txtgia" class="form-control" id="colFormLabel" style="width:35%">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="colFormLabel" class="col-sm-2 col-form-label">Units In Stock</label>
                        <div class="col-sm-10">
                            <input type="text" name="txtsoluong" class="form-control" id="colFormLabel" style="width:35%">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="colFormLabel" class="col-sm-2 col-form-label">Description</label>
                        <div class="col-sm-10">
                            <textarea class="form-control" name="txtmota"  id="exampleFormControlTextarea1" rows="2"
                                      style="width:35%"></textarea>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="colFormLabel" class="col-sm-2 col-form-label">Manufacturer</label>
                        <div class="col-sm-10">
                            <!--<input type="email" class="form-control" id="colFormLabel" style="width:35%">-->
                            <select name="txtmadm">
                                <c:forEach var = "dm" items="<%=dmuc_list%>">
                                    <option value="${dm.madm}">${dm.tendm}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="colFormLabel" class="col-sm-2 col-form-label">Category</label>
                        <div class="col-sm-10">
                            <select class="form-conttrol" name="txttheloai">
                                <option value="SamSung">SamSung</option>
                                <option value="Apple">Apple</option>
                                <option value="Oppo">Oppo</option>
                                <option value="Xiaomi">Xiaomi</option>
                                <option value="Huawei">Huawei</option>
                                <option value="LG">LG</option>
                                <option value="Sony">Sony</option>
                                <option value="HTC">HTC</option>
                                <option value="Nokia">Nokia</option>
                                
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="colFormLabel" class="col-sm-2 col-form-label">Condition</label>
                        <div class="col-sm-10">
                            <input type="radio"  name="txttrangthai" value="New"><label>New</label>
                            <input type="radio" name="txttrangthai" value="Old"><label>Old</label>
                            <input type="radio"  name="txttrangthai" value="Refurbished"><label>Refurbished</label>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="colFormLabel" class="col-sm-2 col-form-label">Product Images File</label>
                        <div class="col-sm-10">
                            <input type="file" name="txthinh" class="form-control-file" id="exampleFormControlFile1">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="colFormLabel" class="col-sm-2 col-form-label"></label>
                        <div class="col-sm-10">
                            <button class="btn btn-primary" type="submit" value="Insert">Add Product </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>

    </body>
</html>
