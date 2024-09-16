<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Reset Password</title>
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
            background-color: #ffffff;
            border-radius: 8px;
            border-top:4px solid #6a1b9a;
            border-bottom:4px solid #6a1b9a;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .container h2 {
            color: #6a1b9a; 
            margin-bottom: 20px;
            align-items: center;
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
        .form-group input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            background-color: #6a1b9a; /* Purple color for submit button */
            color: white;
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
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Reset Password</h2>
        <form action="ResetPasswordServlet" method="post">
            <div class="form-group">
                <input type="text" id="username" name="username" placeholder="Username" required />
            </div>
            <div class="form-group">
                <input type="password" id="newPassword" name="newPassword" placeholder="New Password" required />
            </div>
            <div class="form-group">
                <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm Password" required />
            </div>
            <div class="form-group">
                <% if (request.getAttribute("errorMessage") != null) { %>
                    <div class="error-message"><%= request.getAttribute("errorMessage") %></div>
                <% } %>
            </div>
            <div class="form-group">
                <input type="submit" value="Reset Password" />
            </div>
            <div class="text-center">
                <p>Remembered your password? <a href="Login.jsp">Login here</a></p>
            </div>
        </form>
    </div>
</body>
</html>
