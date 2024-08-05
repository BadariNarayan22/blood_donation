
package com.bb.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;



public class ReceiverServlet extends HttpServlet {

	public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		

		String name=request.getParameter("receiverName");
		String bloodgroup=request.getParameter("receiverBloodGroup");
		String age=request.getParameter("receiverAge");
		String email=request.getParameter("receiverEmail");
		String number=request.getParameter("receiverPhone");
		String address=request.getParameter("receiverAddress");
		
		
		
		try {
			//load the driver:
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			//creating a connection

			
			String url = "jdbc:mysql://awseb-e-ernvaangyw-stack-awsebrdsdatabase-6vsavssskzdi.c7u44qymowso.us-east-2.rds.amazonaws.com:3306/bloodbank";
			String user="prajwal002";
			String password="prajwal002";
			Connection con=DriverManager.getConnection(url,user,password);
			
		
			if(con.isClosed()) {
				System.out.println("connection is closed");
			}
			else {
				System.out.println("connection is open");

			}
			
			
			String q="insert into receiverinfo(rname,age,phnum,email,address,bloodgroup) values(?,?,?,?,?,?)";
			
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
						+ "  <h4 class=\"alert-heading mt-0 mb-0\">Well done!</h4>\n"
						+ "  <p>A few minutes of your time can give someone a lifetime.</p>\n"
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











