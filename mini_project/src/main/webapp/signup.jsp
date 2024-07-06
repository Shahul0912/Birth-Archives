<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Birth Archives - Sign Up</title>
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

        .signup-form {
            padding: 20px;
        }

        .signup-form h2 {
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

        .signup-form button {
            background-color: #32CD32; /* Green color for Birth Archives */
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
        }

        .signup-form button:hover {
            background-color: #2AA72A;
        }

        .signup-form p {
            text-align: center;
            margin-top: 10px;
        }

        .signup-form a {
            color: #32CD32; /* Green color for Birth Archives */
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="hero">
            <img src="resources/logo.png" alt="Birth Archives Logo">  <h1>Welcome to Birth Archives</h1>
            <p>Securely access and manage your birth certificates online.</p>
        </div>
        <form class="signup-form" action='./signupservlet' method='post'>
            <h2>Sign Up</h2>
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="confirm-password">Confirm Password</label>
                <input type="password" id="confirm-password" name="confirm-password" required>
            </div>
            <button type="submit">Create Account</button>
            <p>Already have an account? <a href="login.jsp">Log In</a>
            </p>
            </form>
            </div>	
            </body>
            </html>
            
