
package com.bb.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;



public class DonorServlet extends HttpServlet {

	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		

		String name=request.getParameter("donorName");
		String bloodgroup=request.getParameter("donorBloodGroup");
		String age=request.getParameter("donorAge");
		String email=request.getParameter("donorEmail");
		String number=request.getParameter("donorPhone");
		String address=request.getParameter("donorAddress");
		System.out.println(name);
		
		
		
		try {
			//load the driver:
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			//creating a connection

			
			String url = "jdbc:mysql://Localhost:3306/bloodbank";
			String user="root";
			String password="Lokesh@123";
			Connection con=DriverManager.getConnection(url,user,password);
			
		
			if(con.isClosed()) {
				System.out.println("connection is closed");
			}
			else {
				System.out.println("connection is open");

			}
			
			
			String q="insert into donorinfo(dname,age,phnum,email,address,bloodgroup) values(?,?,?,?,?,?)";
			
			//get the prepared statement object
			PreparedStatement pstmt=con.prepareStatement(q);
			
			//set the values to query
			
			pstmt.setString(1,name);
			pstmt.setInt(2,Integer.parseInt(age));
			pstmt.setString(3,number);
			pstmt.setString(4,email);
			pstmt.setString(5,address);
			pstmt.setString(6,bloodgroup);
			
			int count=pstmt.executeUpdate();
			
			if(count>0) {
				
				response.setContentType("text/html");
				out.println(" <div class=\"alert mt-0 mb-0 alert-success\" role=\"alert\">\n"
						+ "  <h4 class=\"alert-heading mt-0 mb-0\">Thank you!</h4>\n"
						+ "  <p>“The Power to Save Lives Is in Your Veins.”\n</p>\n"
						+ "  <hr>\n"
						+ "</div>"  );
		
				
				RequestDispatcher rd= request.getRequestDispatcher("/donor.jsp");
				rd.include(request, response);
				
			}
			else {

				response.setContentType("text/html");
				out.println("<h3 style='color:red'> error occured</h3>");
				
				RequestDispatcher rd= request.getRequestDispatcher("/donor.jsp");
				rd.include(request, response);
				
			}
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}
	  
	
}
