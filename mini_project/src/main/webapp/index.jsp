<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Everlasting Love - Marriage Registration</title>
  <style>
    body {
      font-family: sans-serif;
      margin: 0;
      padding: 0;
      height: 100vh;
      z-index:2;

    }
    .main{
        height: 100vh;
      background-image: url('babylogo.jpg');
      background-repeat: no-repeat;
      background-position: center;
      background-size: cover;
      z-index: 0;

    }

    .blur-background{
             background-color: rgba(240,240,240,0.3); 
            height:100vh;
            position:relative;
    }
    .go-down{
        text-align:center;
        position:absolute;
        bottom:0px;
        margin-left:50%;
        transform:translateX(-50%);

    }

    .love-quote{
            width:30%;
            position:absolute;
            text-align: left;
            top:25%;
            left:4%;
            padding:10px;
            color:black;
            
            /* glass bg code down  */
            background: rgba(202, 201, 201, 0.16);
border-radius: 16px;
box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
backdrop-filter: blur(1.4px);
-webkit-backdrop-filter: blur(1.4px);
border: 1px solid rgba(202, 201, 201, 0.3);

        
    }
    
      


    header {
      display: flex;
      justify-content: space-between; /* Optional: Adjust alignment of logo and navigation links */
      align-items: center;
     padding:0px;
     margin:0px;
     height:150px;
    }

    .logo {

      width: 170; /* Adjust logo width as needed */
      height:180px ; /* Adjust logo height as needed */
      padding:30px;
      /* margin-left: 37%; */
    }

    nav ul {
      list-style: none;
      margin: 0;
      padding: 0;
      display: flex;
    }

    nav li {
      margin-left: 1rem;
    }

    nav a {
      text-decoration: none;
      color: #000;
    }

    main {
      flex: 1; /* Make main content take up remaining space */
    }

    li a:hover{
        text-decoration: none;
        color:blue;;

    }
    #signup{
        text-decoration: none;
        
        display: block;
        padding:10px;
        text-align: center;
 
        
        background-color: rgb(17, 18, 20);
        border-radius: 4px;
        color:white;
        border-radius: 15px;
        /* width:75px; */
        margin-left: auto;
        margin-right: auto;
    }
    #signup:hover{

        background-color: rgb(67, 67, 240);

    }
    .line1{
        font-size:26px;
        color:black
        /* font-weight: bol; */
    }
    .line2{ font-size:46px;}
    .line3{ font-size:22px;}
    .line1,.line2,.line3 {color:black;}
    .line2,.line3{font-family: Geneva,Verdana, Tahoma, sans-serif}
    #logo-div ,#logo-div p{
        display:inline-block;
        
    }
    #logo-div p{
        font-size:28px;
        color:white;
        font-family:  Geneva, Verdana,Tahoma, sans-serif;
        position: absolute;
        top:16px;

        text-shadow: 1px 1px 2px rgb(77, 77, 73);
    }
  </style>
</head>

<body>
    <div class="main">
        <div xclass="blur-background">

      <header>
    <div id="logo-div">
        <img src="resources/logo.png" alt="birth achive" class="logo">
    
    </div>
    <nav>
      <ul>
        <li><a href="index.jsp">Home</a></li>
        <li><a href="about.jsp">About Us</a></li>
        <li><a href="signup.jsp">Signup</a></li>
        <li><a href="login.jsp">Login</a></li>
        <li><a href="help.jsp">Help</a></li>
        <li><a href="">Contact</a></li>
      </ul>
    </nav>
  </header>

  <div class="love-quote">
    <div class="line1">Welcome to Birth Archives!</div>
    <div class="line2"> <b>Securing your Life's Foundation</b><br>
               Register your newborn with Birth Archives</div>
    <!-- <div class="line3">  </div> --><br>
    <a href="signup.jsp" id="signup">Register Now!</a>
    <div> </div>            


  </div>
  <!-- <div class="go-down">
    <p>Everlasting Love 2024</p>
    <a href="#">Privacy Policy</a>
    <a href="#">Terms and Conditions</a>
  </div> -->
    </div>
</div>
</body>

</html>
