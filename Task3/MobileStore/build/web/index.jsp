<%-- 
    Document   : index
    Created on : Oct 7, 2019, 8:34:44 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="jumbotron">
                <h1>Mobile Store</h1>
            </div>
        </div>
        <form action="KhachHangServerlet" method="post">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-md-offset-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">Please sign in</h3>
                            </div>
                            <div class="panel-body">
                                <form accept-charset="UTF-8" role="form">
                                    <fieldset>
                                        <div class="form-group">
                                            <input class="form-control" placeholder="User Name" name="txtname" type="text">
                                        </div>
                                        <div class="form-group">
                                            <input class="form-control" placeholder="Password" name="txtpass" type="password"
                                                   value="">
                                        </div>
                                        <input class="btn btn-lg btn-success btn-block" type="submit" value="Login">
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>
