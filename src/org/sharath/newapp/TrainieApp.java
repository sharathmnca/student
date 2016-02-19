package org.sharath.newapp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet("/trainiereg")
public class TrainieApp extends GenericServlet
{
	@Override
	public void service(ServletRequest req,ServletResponse res) throws ServletException,IOException
	{
		Connection con=null;
		Statement stmt = null;
		ResultSet rs = null;
		String user = req.getParameter("username");
		String mail = req.getParameter("email");
		String password = req.getParameter("password");
		String fullname= req.getParameter("fullname");
		String country= req.getParameter("country");
		String phone= req.getParameter("phone");
		String website= req.getParameter("website");
		String placename= req.getParameter("place");
		String pincode= req.getParameter("pincode");
		
		
String qrytran = "insert into pinterest.trainie(t_username,t_email,t_password,t_fullname,t_country,t_phone,t_website,t_place,t_pincode) values('"+user+"','"+mail+"','"+password+"','"+fullname+"','"+country+"','"+phone+"','"+website+"','"+placename+"','"+pincode+"')";
		//String qrytran = "insert into proj.clientreg values("+1+",'"+user+"','"+subject+"','"+addr+"','"+pin+"')";
		
		try 
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306","root","sharath");
			con.setAutoCommit(false);
			stmt = con.createStatement();
			
			stmt.execute(qrytran);
			System.out.println("operation success");
			con.commit();
			
		} 
		catch (ClassNotFoundException | SQLException e) 
		{
			e.printStackTrace();
			try
			{
				con.rollback();
				System.out.println("operation rolled back");
			}
			catch(SQLException e1)
			{
				e1.printStackTrace();
			}
			finally {
				//close
			}
		}
		
		PrintWriter out = res.getWriter();
		out.println("<html><body>"
				+ "<h1>Successfull</h1>"
				+ "</body></html>");
		out.flush();
		out.close();
	}
}
