<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Birth Archives - Register Birth</title>
  <style>
body {
      display: flex; /* Enable flexbox for the body */
      justify-content: center; /* Center elements horizontally */
      align-items: center; /* Center elements vertically (optional) */
      min-height: 100vh; /* Set minimum body height for vertical centering */
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
    }

    .container {
      max-width: 500px; /* Adjust width as needed */
      margin: 0 auto; /* Alternative centering approach (optional) */
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
    .form-group9{
        text-align: center;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="hero">
      <img src="resources/logo.png" alt="Birth Archives Logo">  
      <h1>Welcome to Birth Archives</h1>
      <p>Securely register and manage your birth certificates online.</p>
    </div>
    <form class="signup-form" action='birthRegServlet' method='post'>
      <h2>Register a New Birth</h2>
      <div class="form-group">
        <label for="child_name">Child's Name:</label>
        <input type="text" id="child_name" name="child_name" required>
      </div>
      <div class="form-group">
        <label for="appt">Select the time of birth:</label>
        <input type="time" id="appt" name="appt" >
      </div>
      <div class="form-group">
        <label for="Place_name">Place of Birth:</label>
        <input type="text" id="Place_name" name="birth_place" placeholder="eg: Kerela, Tamil Nadu" required>
      </div>
      <div class="form-group">
        <label>Date of Birth:</label>
        <input type="date" id="date_of_birth" name="date_of_birth" required>
      </div>
      <div class="form-group">
        <label for="gender">Gender:</label>
        <select name="gender" id="gender" required>
          <option value="">Select</option>
          <option value="Male">Male</option>
          <option value="Female">Female</option>
          <option value="Other">Other</option>
        </select>
      </div>
      <div class="form-group">
        <h2>Parents' Information</h2>
        <div class="parent-details">
          <h3>Father</h3>
          <label for="father_name">Full Name:</label>
          <input type="text" id="father_name" name="father_name" required>
        </div>
        <div class="parent-details">
          <h3>Mother</h3>
          <label for="mother_name">Full Name:</label>
          <input type="text" id="mother_name" name="mother_name" required>
        </div>
      </div>
      <div class="form-group">
        <h2>Hospital Information</h2>
        <label for="hospital_name">Hospital Name:</label>
        <input type="text" id="hospital_name" name="hospital_name">
      </div>
      <div class="form-group">
        <label for="POB_file">Proof of Birth-id number (provided by hospital):</label>
        <input type="text" id="POB_file" name="birthid" required>
      
      </div>
      <div class="form-group">
        <label for="cert_file">Doctor's UID (Unique Identification Number):</label>
        <input type="text" id="cert_file" name="doctorid" required>
        
      </div>
      <div class="form-group">
        <label for="address_proof">ID Proof (Father's Aadhar Number):</label>
        <input type="text" id="address_proof" name="idproof" required>
        
      </div>
      <button type="submit">Register</button>
      </form>
      <p>Don't have an account? <a href="">Sign Up</a></p>
    </div>
    </body>
    </html>
    