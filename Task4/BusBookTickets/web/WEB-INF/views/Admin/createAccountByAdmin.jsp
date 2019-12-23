<%-- 
    Document   : registerAccount
    Created on : Oct 24, 2019, 2:27:09 PM
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

    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script><!--        script angular -->
</head>
<body>
    <h1>Register</h1>
    <form action="registerAccount?yeucau=insert" method="post">
        <table border="1">
            <tr>
                <td>Username:</td>
                <td><input type="text" name="txtname" maxlength="16" ></td>
            </tr>

            <tr>
                <td>Password:</td>
                <td><input type="text" id="password" name="txtpass" equired></td>
            </tr>

            <tr>
                <td>Confirm Password</td>
                <td><input type="password" id="confirm_password" required></td>
            </tr>

            <!--            js for confirm PASSWORD-->
            <script type="text/javascript">var password = document.getElementById("password")
                        , confirm_password = document.getElementById("confirm_password");

                function validatePassword() {
                    if (password.value != confirm_password.value) {
                        confirm_password.setCustomValidity("Passwords Don't Match");
                    } else {
                        confirm_password.setCustomValidity('');
                    }
                }

                password.onchange = validatePassword;
                confirm_password.onkeyup = validatePassword;</script>

            <tr>
                <td>FullName:</td>
                <td><input type="text" name="txtfullname" ngModel pattern="[a-zA-Z ]{1,15}"></td>
            </tr>

            <tr>
                <td>Gender:</td>
                <td> 
                    <select name="txtgender">
                        <option value="Nam">NAM</option>
                        <option value="Nử">NỬ</option>
                    </select>
                </td>

            </tr>

            <tr>
                <td>Address:</td>
                <td><input type="text" name="txtaddress"></td>
            </tr>

            <tr>
                <td>PhoneNum:</td>
                <td><input type="number" name="txtphoneNum" pattern="\d*" maxlength="12"></td>
            </tr>

            <tr>
                <td>Role</td>
                <td>
                    <!--                        <input type="text" name="txtrole" pattern="\d*" maxlength="12">-->
                    <select name="txtrole">
                        <option value="Customer">Customer</option>
                        <option value="Seller">Seller</option>
                    </select>
                </td>
            </tr>

            <tr>
                <td>Email:</td>
                <td><input type="email" name="txtemail"></td>
            </tr>

            <tr>
                <td></td>
                <td><input class="button" type="submit" value="REGISTER"></td>
            </tr>
        </table>

    </form>
</body>
</html>
