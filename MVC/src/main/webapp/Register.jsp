<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Register</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f4f8;
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
            padding: 30px;
            background-color: #ffffff;
            border-radius: 8px;
            border-top:4px solid #6a1b9a;
            border-bottom:4px solid #6a1b9a;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .container h2 {
            color: #6a1b9a;
            margin-bottom: 20px;
            text-align: center;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group input[type="text"],
        .form-group input[type="password"] {
            width: calc(100% - 20px);
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .form-group input[type="submit"],
        .form-group input[type="reset"] {
            width: 48%;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            color: #ffffff;
        }
        .form-group input[type="submit"] {
            background-color: #6a1b9a;
        }
        .form-group input[type="submit"]:hover {
            background-color: #180161;
        }
        .form-group input[type="reset"] {
            background-color: #e1bee7;
        }
         .form-group input[type="reset"]:hover {
            background-color: #8C3061;
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
            var fullname = document.form.fullname.value;
            var email = document.form.email.value;
            var username = document.form.username.value;
            var password = document.form.password.value;
            var conpassword = document.form.conpassword.value;

            if (fullname.trim() === "") {
                alert("Full Name can't be blank");
                return false;
            } else if (email.trim() === "") {
                alert("Email can't be blank");
                return false;
            } else if (username.trim() === "") {
                alert("Username can't be blank");
                return false;
            } else if (password.length < 6) {
                alert("Password must be at least 6 characters long.");
                return false;
            } else if (password !== conpassword) {
                alert("Confirm Password should match with the Password");
                return false;
            }
            return true;
        }
    </script>
</head> 
<body>
    <div class="container">
        <h2>Register</h2>
        <form name="form" action="RegisterServlet" method="post" onsubmit="return validate()">
            <div class="form-group">
                <input type="text" id="fullname" name="fullname" placeholder="Full Name" />
            </div>
            <div class="form-group">
                <input type="text" id="email" name="email" placeholder="Email" />
            </div>
            <div class="form-group">
                <input type="text" id="username" name="username" placeholder="Username" />
            </div>
            <div class="form-group">
                <input type="password" id="password" name="password" placeholder="Password" />
            </div>
            <div class="form-group">
                <input type="password" id="conpassword" name="conpassword" placeholder="Confirm Password" />
            </div>
            <div class="form-group text-center">
                <input type="submit" value="Register" />
                <input type="reset" value="Reset" />
            </div>
            <div class="text-center">
                <p>Already have an account? <a href="Login.jsp">Login here</a></p>
            </div>
        </form>
    </div>
</body>
</html>
