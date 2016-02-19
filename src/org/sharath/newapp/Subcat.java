package org.sharath.newapp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/subcatsel")
public class Subcat extends HttpServlet 
{
	Connection con=null;
	Statement stmt = null;
	ResultSet rs = null;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String sc_name = request.getParameter("sc_name");

		//String qrytran = "insert into pinterest.sub_catageory(sc_name) SELECT cat_id FROM pinterest.catageory WHERE id = 1";
		
		
		
		String qrytran = "insert into pinterest.sub_catageory(sc_name) values('"+sc_name+"')";
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			con= DriverManager.getConnection("jdbc:mysql://localhost:3306","root","sharath");
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
			finally 
			{
				//close
			}
		}	
	}
}
