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



    <nav class="navbar navbar-expand-lg text-light" style="background-color:#b8241a;opacity:0.7;">
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
  
  
    <form  id="sform" action="doSearch" method="get">
  

    <div class="display-4 text-center text-light" style="font-family: 'Times New Roman', Times, serif"> <b><b>WHAT'S YOUR TYPE.....???</b></b></div>

    <div class=" mt-3 mb-3 ml-0 mr-0 mx-auto " style="width:fit-content;">
        <select class="form-select text-center" aria-label=" Default select example" name="type" required>
            <option selected>Select your bloodgroup</option>
            <option value="A+">A+</option>
            <option value="A-">A-</option>
            <option value="B+">B+</option>
            <option value="B-">B-</option>
            <option value="O+">O+</option>
            <option value="O-">O-</option>
            <option value="AB+">AB+</option>
            <option value="AB-">AB-</option>
            <option value="Rh">Rh</option>

          </select>
          
          		<select  name="place" class="mt-3 mb-3 ml-0 mr-0 mx-auto form-select text-center" aria-label=" Default select example" required>
    <option value="">Select Your place</option>
    <option value="Bagalkot">Bagalkot</option>
    <option value="Ballari">Ballari</option>
    <option value="Belagavi">Belagavi</option>
    <option value="Bengaluru Rural">Bengaluru Rural</option>
    <option value="Bengaluru Urban">Bengaluru Urban</option>
    <option value="Bidar">Bidar</option>
    <option value="Chamarajanagar">Chamarajanagar</option>
    <option value="Chikkaballapur">Chikkaballapur</option>
    <option value="Chikkamagaluru">Chikkamagaluru</option>
    <option value="Chitradurga">Chitradurga</option>
    <option value="Dakshina Kannada">Dakshina Kannada</option>
    <option value="Davanagere">Davanagere</option>
    <option value="Dharwad">Dharwad</option>
    <option value="Gadag">Gadag</option>
    <option value="Hassan">Hassan</option>
    <option value="Haveri">Haveri</option>
    <option value="Kalaburagi">Kalaburagi</option>
    <option value="Kodagu">Kodagu</option>
    <option value="Kolar">Kolar</option>
    <option value="Koppal">Koppal</option>
    <option value="Mandya">Mandya</option>
    <option value="Mysuru">Mysuru</option>
    <option value="Raichur">Raichur</option>
    <option value="Ramanagara">Ramanagara</option>
    <option value="Shivamogga">Shivamogga</option>
    <option value="Tumakuru">Tumakuru</option>
    <option value="Udupi">Udupi</option>
    <option value="Uttara Kannada">Uttara Kannada</option>
    <option value="Vijayapura">Vijayapura</option>
    <option value="Yadgir">Yadgir</option>
</select>
          		
          
    </div>
    <div class="mt-3 mb-3 mx-auto text-center " >
        <input class="btn btn-outline-light" type="submit" value=" Search">  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
            <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"/>
           </svg>
    
        
    </div>

    </form>



  </main>

    <footer class="text-center text-light fixed-bottom " style="opacity:0.7;">
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