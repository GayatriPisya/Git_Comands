<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            width: 400px;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            border-top:4px solid #6a1b9a;
            border-bottom:4px solid #6a1b9a;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .container h2 {
            color: #6a1b9a;
            align-items: center;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group input[type="text"],
        .form-group input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .form-group input[type="submit"],
        .form-group input[type="reset"] {
            width: 48%;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        .form-group input[type="submit"] {
            background-color: #6a1b9a;
            color: white;
        }
        .form-group input[type="submit"]:hover {
            background-color: #180161;
        }
        .form-group input[type="reset"] {
            background-color: #e1bee7;
            color: white;
        }
        .form-group input[type="reset"]:hover {
            background-color: #8C3061;
        }
        .error-message {
            color: #dc3545;
            margin-bottom: 15px;
        }
        .text-center {
            text-align: center;
        }
        a {
            color: #6a1b9a;
            text-decoration: none;
            font-weight: bold;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
    <script>
        function validate() {
            var uid = document.form.uid.value;
            var pwd = document.form.pwd.value;

            if (uid.trim() === "") {
                alert("UserId can't be blank");
                return false;
            } else if (pwd.trim() === "") {
                alert("Password can't be blank");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <div class="container">
        <h2>Login</h2>
        <form name="form" action="LoginServlet" method="post" onsubmit="return validate()">
            <div class="form-group">
                <input type="text" id="uid" name="uid" placeholder="UserId" required />
            </div>
            <div class="form-group">
                <input type="password" id="pwd" name="pwd" placeholder="Password" required />
            </div>
            <div class="form-group">
                <% if (request.getAttribute("ERROR") != null) { %>
                    <div class="error-message"><%= request.getAttribute("ERROR") %></div>
                <% } %>
            </div>
            <div class="form-group text-center">
                <input type="submit" value="Log In" />
                <input type="reset" value="Reset" />
            </div>
            <div class="text-center">
                <p><a href="ResetPassword.jsp">Forgot Password?</a></p>
                <p>Don't have any account? <a href="Register.jsp">Register here</a></p>
            </div>
        </form>
    </div>
</body>
</html>
