<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.io.IOException" %>   
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.ResultSet" %>    
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

  <style>
    /* Change header background color */
    header {
      background: blue; /* Blood red color */
    }

    /* Change middle section background color */
    .middle {
      background:white; /* Blood red color */
      /* You can add more styles as needed */
    }

    /* Change footer background color */
    footer {
    
      background-color: #b8241a; /* Blood red color */
      /* You can add more styles as needed */
    }



  </style>

  <!-- Custom CSS for hover effects -->
  <style>
    /* Styling for Donor and Receiver sections */
    .section-container {
      display: flex;
      justify-content: space-around;
      align-items: center;
      margin-top: 50px;
    }

    .section-link {
      text-decoration: none;
      color:white; /* White text color */
      padding: 20px;
      background-color: rgb(199, 35, 35);
      transition: color 0.3s, background-color 0.3s;
      border-radius: 10px;
    }

    .section-link:hover {

      
      color: #FFFFFF; /* White text color */
      background-color: #f91313; /* Blood red color on hover */
    }
  </style>



    <nav class="navbar navbar-expand-lg text-light" style="background-color:#b8241a;opacity:0.9;">
      <a class="navbar-brand text-light href="#" >
        <img src="logo.png" width="50" height="50" class="d-inline-block align-top " alt="">
        <b class="display-5 times"> <b><b style="font-family: 'Times New Roman', Times, serif" >BDMS</b></b></b>
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse " id="navbarNavDropdown">
        <ul class="navbar-nav ">
          <li class="nav-item active ">
            <a class="nav-link text-light ms-5" style="font-family: 'Times New Roman', Times, serif" href="index.jsp"><h3>Home</h3> <span class="sr-only"></span></a><hr>
          </li>
          <li class="nav-item">
            <a class="nav-link text-light ms-5 " style="font-family: 'Times New Roman', Times, serif" href="donor.jsp"><h3>Donor</h3></a><hr>
          </li>
          <li class="nav-item">
            <a class="nav-link text-light ms-5" style="font-family: 'Times New Roman', Times, serif" href="receiver.jsp"><h3>Reciever</h3></a><hr>
          </li>
          <li class="nav-item">
            <a class="nav-link text-light ms-5 " style="font-family: 'Times New Roman', Times, serif" href="searchpage.jsp"><h3>Search</h3></a><hr>
          </li>
            <li class="nav-item">
            <a class="nav-link text-light ms-5 " style="font-family: 'Times New Roman', Times, serif" href="login.jsp"><h3>Login</h3></a><hr>
          </li>
         
        </ul>
      </div>
    </nav>
  </header>
        <body style="background-image:url(bg2.webp);background-size:cover; ">
  
  
  <main  style="justify-content: center;align-items: center;">
  
  



  </main>

    <footer class="text-center text-light fixed-bottom" style="opacity:0.9">
      <!-- Grid container -->
     
        <!-- Section: Social media -->
  
      <!-- Grid container -->
    
      <!-- Copyright -->
      <div class="text-center p-3" style="background-color: rgba(209, 178, 178, 0.05);">
        © 2020 Copyright:
        <a class="text-body" href="http://prajwals-portfolio.s3-website.ap-south-1.amazonaws.com">www.prajwal&rahul.com</a>
      </div>
      <!-- Copyright -->
    </footer>
  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
 <script src="script.js"></script>
</body>
</html>