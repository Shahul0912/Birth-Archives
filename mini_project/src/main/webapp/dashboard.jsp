<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <% if( session.getAttribute("uname")==null ){response.sendRedirect("login.jsp?expired=true");}%>
    
    
<!DOCTYPE html>

<html lang="en">
<head>
    <!-- <link rel="html-import" href="header.html" > -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Birth Archives -Dashboard</title>
    <style>
        body {
            font-family: sans-serif;
            margin: 0;
            padding: 0;
        }
        .hero img {
            width: 175px; /* Adjust width as needed for your logo */
            margin-bottom: 20px;
        }

        .container {
            max-width: 800px; /* Adjust width as needed */
            margin: 50px auto;
            padding: 30px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .header h1 {
            font-size: 1.8em;
        }

        .welcome {
            color: #32CD32; /* Green color for Birth Archives */
        }

        .actions {
            display: flex;
            gap: 10px;
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

        .actions a:hover {
            background-color: #2AA72A;
        }
    </style>
</head>

  
<body>
    <div data-include="header.html"></div>
    <div class="container">
        <div class="hero">
            <img src="resources/logo.png" alt="Birth Archives Logo">  
            <h1>Welcome to Birth Archives</h1>
            <!-- <p>Securely register and manage your birth certificates online.</p> -->
          </div>
        <div  class="header">
            <!-- <h1>Birth Archives</h1> -->
           <h2 class="welcome">Welcome, <% out.println(session.getAttribute("uname")); %>!</h2>  </div>
        <div class="content">
            <p>Manage your birth certificates and register new ones easily.</p>
            <div class="actions">
           <a href="registration.jsp">Register a New Birth</a>  
              <a href="showCertificates.jsp">View Existing Certificates</a>
           </div> 
        </div>
    </div>
</body>
</html>


