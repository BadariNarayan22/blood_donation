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
    html{
    backgroun-image:url(background2.jpeg);
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

    <body style="background-image:url(background4.webp);background-size:cover;">
<main class="">
 <header>
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
  
  <div>          <b class="display-5 times"> <b><b style="font-family: 'Times New Roman', Times, serif;display:flex;justify-content:center;align-items:center;" >Manage Database</b></b></b></div>
  
  
 <div class="container">
  <div class="row">
    <div class="col m-2"><div class="card" style="width: 18rem;">
  <img class="card-img-top" src="donordetails.jpeg" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Donor details.</h5>
    <p class="card-text">Click here to know the details of the donors.</p>
    <form  class="text-center" id="viewdonor" action="ViewDonor" method="get">
              <input type="submit" value="Get Details">
          
      </form>
  </div>
</div></div>
 <div class="col m-2"><div class="card" style="width: 18rem;">
  <img class="card-img-top" src="receiverdetails.jpeg" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Receiver details </h5>
    <p class="card-text">Click here to know the details of the receiver</p>
 <form  class="text-center" id="viewreceiver" action="ViewReceiver" method="get">
              <input type="submit" value="Get details">
          
      </form> 
       </div>
</div></div>
    <div class="col m-2"><div class="card" style="width: 18rem;">
  <img class="card-img-top" src="availableunits.png" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Available units</h5>
    <p class="card-text">Click here to see the available blood and thier stock.</p>
 <form  class="text-center" id="viewavailable" action="ViewStock" method="get">
              <input type="submit" value="See Stock">
          
      </form>
        </div>
</div></div>
    <div class="w-100"></div>
    <div class="col m-2 mb-5"><div class="card" style="width: 18rem;">
  <img class="card-img-top" src="hospital.webp" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Hospitals</h5>
    <p class="card-text">Click here for Hospital details and their  blood requirements</p>
 <form  class="text-center" id="view" action="ViewHospitals" method="get">
              <input type="submit" value="Get details">
          
      </form>
        </div>
</div></div>

 <div class="col m-2 mb-5"><div class="card" style="width: 18rem;">
  <img class="card-img-top" src="emergency.png" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Approve Emergency Requirements</h5>
    <p class="card-text">Click here to approve emergency Requirements .</p>
 <form  class="text-center" id="viewevents" action="ViewEmergency" method="get">
              <input type="submit" value="Approve requests">
          
      </form>
        </div>
</div></div>
    <div class="col m-2 mb-5"><div class="card" style="width: 18rem;">
  <img class="card-img-top" src="users.png" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Add database users</h5>
    <p class="card-text">Click here to give database access to new user.</p>
 <form  class="text-center" id="viewusers" action="ViewUsers" method="get">
              <input type="submit" value="Add users">
          
      </form>
        </div>
</div></div>
  </div>
</div>



  </main>

  
  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
 <script src="script.js"></script>
</body>
</html>