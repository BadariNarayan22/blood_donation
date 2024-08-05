
package com.bb.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;



public class SearchServlet extends HttpServlet {

	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		

		String group=request.getParameter("type");
		String location=request.getParameter("place");
		
		
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
			
			
			String q="select id,age,dname,address,bloodgroup from donorinfo where bloodgroup='"+group+"' and address='"+location+"'";
			
			//get the prepared statement object
			PreparedStatement pstmt=con.prepareStatement(q);
			
			//set the values to query
			
			//pstmt.setString(1,group);
		
			ResultSet resultSet=pstmt.executeQuery();

			
				
			
				
				RequestDispatcher rd= request.getRequestDispatcher("/searchpage.jsp");
				rd.include(request, response);
				
				out.println("<div class=\"table-responsive\">\n"
						+ "      <table class=\"table table-striped  \">\n"
						+ "        <thead>\n"
						+ "          <tr>\n"
						+ "            <th scope=\"col\">Id</th>\n"
						+ "            <th scope=\"col\">Age</th>\n"
						+ "            <th scope=\"col\">Name</th>\n"
						+ "            <th scope=\"col\">Location</th>\n"
						+ "            <th scope=\"col\">Bloodgroup</th>\n"
						+ "            \n"
						+ "          </tr>\n"
						+ "        </thead>\n"
						+ "        \n"
						+ "       \n"
						+ "        <tbody>\n"
						+ "        ");

				while(resultSet.next()){
					response.setContentType("text/html");

					out.println("\n"
							+ "        \n"
							+ "          <tr>\n"
							+ "            <th scope=\"row\">"+resultSet.getString(1)+"</th>\n"
							+ "            <td>"+resultSet.getString(2)+"</td>\n"
							+ "            <td>"+resultSet.getString(3)+"</td>\n"
							+ "            \n"
							+ "            <td>"+resultSet.getString(4)+"</td>\n"
							+ "            <td>"+resultSet.getString(5)+"</td>\n"
							+ "            \n"
							+ "          </tr>");
	        
	      
				}
				
				out.println("        \n"
						+ "        </tbody>\n"
						+ "      </table>\n"
						+ "</div>\n"
						+ "\n"
						+ "");
				
					
				
				
				
	
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}
	  
	
}
