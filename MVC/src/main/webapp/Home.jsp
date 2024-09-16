<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Home Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3e5f5; 
            color: #333;
            text-align: center;
            padding: 50px;
            margin: 0;
        }
        .message {
            font-size: 1.2em;
            margin: 20px 0;
            color: #6a1b9a; 
        }
        a {
            color: #6a1b9a; 
            text-decoration: none;
            font-weight: bold;
        }
        a:hover {
            text-decoration: underline;
        }
        .container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            display: inline-block;
        }
        h2 {
            color: #6a1b9a; 
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Welcome</h2>
        <div class="message">
            <p><strong>Login Successful</strong></p>
        </div>
        <div class="message">
            <p><a href="Login.jsp">Logout</a></p>
        </div>
    </div>
</body>
</html>
