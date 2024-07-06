<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Marriage Registration Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h1 {
            color: #4CAF50;
        }
        p {
            font-size: 1.2em;
        }
         .actions a {
            background-color: #32CD32; /* Green color for Birth Archives */
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
        }
         .hero img {
            width: 175px; /* Adjust width as needed for your logo */
            margin-bottom: 20px;

        .actions a:hover {
            background-color: #2AA72A;
        }
    </style>
</head>
<body>
    <div class="container">
    <div class="hero">
      <img src="resources/logo.png" alt="Birth Archives Logo">
      </div>
        <h1>Registration Successful!</h1>
        <h2>Congratulations! </h2>
        <p>Your Child's birth has been registered successfully.</p>
        <p>Thank you for registering with us.</p><br>
        <p> You will be posted the birth certificate soon.</p>
         <div class='actions'>
   
            <a href="dashboard.jsp">Go to DashBoard</a>
         </div>
    </div>
    
  
</body>
</html>