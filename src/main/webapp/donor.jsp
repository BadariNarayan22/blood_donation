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
   <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #FFFFFF; /* White background */
        color: #8B0000; /* Red text color */
    }

    form {
        max-width: 500px;
        margin: 20px auto;
        padding: 20px;
        border: 2px solid #8B0000; /* Red border */
        border-radius: 8px;
    }

    input[type="text"],
    input[type="email"],
    textarea {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #8B0000; /* Red border for inputs */
        border-radius: 5px;
    }

    input[type="submit"] {
        background-color: #8B0000; /* Red submit button */
        color: #FFFFFF; /* White text color */
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #FFFFFF; /* White button on hover */
        color: #8B0000; /* Red text on hover */
    }

    /* Hover effect for input fields */
    input[type="text"]:focus,
    input[type="email"]:focus,
    textarea:focus {
        border: 2px solid #FFFFFF; /* White border on focus */
    }
</style>
  
  <title>Document</title>
</head>
  <body style="background-image:url(background4.webp);background-size:cover;">
  <header style="opacity:0.9">
    <nav class="navbar navbar-expand-lg text-light" style="background-color:#b8241a">
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
            <a class="nav-link text-light ms-5" style="font-family: 'Times New Roman', Times, serif" href="index.jsp"><h3>Home </h3><span class="sr-only"></span></a><hr>
          </li>
          <li class="nav-item">
            <a class="nav-link text-light ms-5 " style="font-family: 'Times New Roman', Times, serif" href="donor.jsp"><h3>Donor</h3></a><hr>
          </li>
          <li class="nav-item">
            <a class="nav-link text-light ms-5" style="font-family: 'Times New Roman', Times, serif" href="receiver.jsp"><h3>Receiver</h3></a><hr>
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



  <section class="text-center mt-5 mb-5"> <img src="Screenshot 2023-12-24 231228.png" width="60%"  alt="100%"></section>
  
  <form  id="dform" action="regDonor" method="get">
  
    <h2><b>Donor Information Form</b></h2>
    <label for="donorName">Name:</label>
    <input type="text" id="donorName" name="donorName" placeholder="Enter your name" required>

    <label for="bloodGroup">Blood Group:</label>
    <input type="text" id="bloodGroup" name="donorBloodGroup" placeholder="Enter your blood group" required>
    
    <label for="receiverAge">Age:</label>
    <input type="text" id="receiverAge" name="donorAge" placeholder="Enter your age " required>
    
    <label for="donorPhone">Phone Number:</label>
    <input type="text" id="donorPhone" name="donorPhone" placeholder="Enter your phone number" required>

    <label for="donorEmail">Email:</label>
    <input type="email" id="donorEmail" name="donorEmail" placeholder="Enter your email" required>
    
  

     

    <label for="donorAddress">City:</label><select id="donorAddress" name="donorAddress"> 
    <option value="">Select a place</option>
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
    <br>

    <label for="otherComments">Other Comments:</label>
    <textarea id="otherComments" name="otherComments" placeholder="Enter any other comments"></textarea>

    <input type="submit" value="Submit">
</form>



  

    <footer class="text-center text-light  " style="opacity:0.9">
     
      <!-- Grid container -->
    
      <!-- Copyright -->
      <div class="text-center  p-3" style=" background-color: rgba(209, 178, 178, 0.05);">
        © 2020 Copyright:
        <a class="text-body" href="http://prajwals-portfolio.s3-website.ap-south-1.amazonaws.com">www.prajwal&rahul.com</a>
      </div>
      <!-- Copyright -->
    </footer>
  
  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>