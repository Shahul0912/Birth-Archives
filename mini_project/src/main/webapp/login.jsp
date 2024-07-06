<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Birth Archives - Login</title>
    <style>
        body {
            font-family: sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
        }

        .container {
            max-width: 500px;
            margin: 50px auto;
            padding: 30px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .hero {
            text-align: center;
            margin-bottom: 30px;
        }

        .hero img {
            width: 175px; /* Adjust width as needed for your logo */
            margin-bottom: 20px;
        }

        .hero h1 {
            font-size: 2em;
            margin-bottom: 10px;
        }

        .hero p {
            font-size: 1.2em;
            color: #666;
        }

        .login-form {
            padding: 20px;
        }

        .login-form h2 {
            font-size: 1.5em;
            margin-bottom: 20px;
            text-align: center;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 3px;
            box-sizing: border-box;
        }

        .login-form button {
            background-color: #32CD32; /* Green color for Birth Archives */
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
        }

        .login-form button:hover {
            background-color: #2AA72A;
        }

        .login-form p {
            text-align: center;
            margin-top: 10px;
        }

        .login-form a {
            color: #32CD32; /* Green color for Birth Archives */
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="hero">
            <img src="resources/logo.png" alt="Birth Archives Logo">  <h1>Birth Archives</h1>
            <p>Securely access and manage your birth certificates online.</p>
        </div>
        <form class="login-form" action="loginservlet" method='post'>
            <h2>Login</h2>
            <div class="form-group" >
            <% 
		String err_line="<p style='color:red'>Invalid Username/Password</p>";
		String success_line="<p style='color:#5bd1ff; font-size:18px; '>Account Created Successfully Login to Continue.</p>";
		String expired="<p style='color:red'>Session Expired Login to Continue.</p>";
	if(request.getParameter("invalid")!=null){out.println(err_line);}
	else if(request.getParameter("success")!=null){out.println(success_line);}
	else if(request.getParameter("expired")!=null){out.println(expired);}
	
	
	%>
                <label for="username">Username or Email</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit">LogIn</button>
            <p>Don't have an account? <a href="signup1.html">Sign Up</a></p>
            <p><a href="#">Forgot Password?</a></p>
        </form>
    </div>
</body>
</html>

<!-- **Key Changes:**

* The title and form name are changed to reflect login functionality.
* The username field is added, and the label is adjusted.
* A link to the signup page ("signup.html") is included for user convenience.
* A "Forgot Password?" link is added ( -->
