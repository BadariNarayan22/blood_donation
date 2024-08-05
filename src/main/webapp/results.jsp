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
            <a class="nav-link text-light ms-5" style="font-family: 'Times New Roman', Times, serif" href="index.jsp">Home <span class="sr-only"></span></a><hr>
          </li>
          <li class="nav-item">
            <a class="nav-link text-light ms-5 " style="font-family: 'Times New Roman', Times, serif" href="donor.jsp">Donor</a><hr>
          </li>
          <li class="nav-item">
            <a class="nav-link text-light ms-5" style="font-family: 'Times New Roman', Times, serif" href="receiver.jsp">Reciever</a><hr>
          </li>
          <li class="nav-item">
            <a class="nav-link text-light ms-5 " style="font-family: 'Times New Roman', Times, serif" href="searchpage.jsp">Search</a><hr>
          </li>
         
        </ul>
      </div>
    </nav>
  </header>
  <main  style="justify-content: center;align-items: center;">

   
    
<div class="table-responsive">
      <table class="table table-striped  ">
        <thead>
          <tr>
            <th scope="col">id</th>
            <th scope="col">name</th>
            <th scope="col">age</th>
            <th scope="col">location</th>
            <th scope="col">Bloodgroup</th>
            
          </tr>
        </thead>
        
       
        <tbody>
        
        
        
        <%
		response.setContentType("text/html");
		String bloodgroup=request.getParameter("id");



		try {
			//load the driver:
			Class.forName("com.mysql.cj.jdbc.Driver");
			 
			//creating a connection

			
			
			String url = "jdbc:mysql://localhost:3306/bloodbank";
			String user="root";
			String password="Lokesh@123";
			Connection con=DriverManager.getConnection(url,user,password);
			
			
			Statement statement =con.createStatement();
			String q="select id,age,dname,address,bloodgroup from donorinfo where bloodgroup='O'";
			PreparedStatement pstmt=con.prepareStatement(q);


			ResultSet resultSet= statement.executeQuery(q);

		
			
		
			while(resultSet.next()){
			
        
        %>
        
        
        
        
        
          <tr>
            <th scope="row"><% out.println(resultSet.getString("id"));%></th>
            <td><% out.println(resultSet.getString("dname"));%></td>
            <td><% out.println(resultSet.getString("age"));%></td>
            
            <td><% out.println(resultSet.getString("address"));%></td>
            <td><% out.println(resultSet.getString("bloodgroup"));%></td>
            
          </tr>
          
          
          
         <%
			}
		}catch(Exception e){
			e.printStackTrace();
			
		}
         %>
        
        </tbody>
      </table>
</div>



  </main>

    <footer class="text-center text-light fixed-bottom ">
      <!-- Grid container -->
     
        <!-- Section: Social media -->
  
      <!-- Grid container -->
    
      <!-- Copyright -->
      <div class="text-center p-3" style="background-color: rgba(209, 178, 178, 0.05);">
        © 2020 Copyright:
        <a class="text-body" href="http://prajwals-portfolio.s3-website.ap-south-1.amazonaws.com">www.prajwal.com</a>
      </div>
      <!-- Copyright -->
    </footer>
  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
 <script src="script.js"></script>
</body>
</html>