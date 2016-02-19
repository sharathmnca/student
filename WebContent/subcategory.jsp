<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.Date"%>
<%@ page import="java.io.IOException"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.Statement"%>


<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha256-7s5uDGW3AHqw6xtJmNNtr+OBRJUlgkNJEo78P4b0yRw= sha512-nNo+yCHEyn0smMxSswnf/OnX6/KwJuZTlNZBjauKhTK0c+zT+q5JOCx0UFhXQ6rJR9jg6Es8gPuD2uZcYDLqSw==" crossorigin="anonymous">
	
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha256-KXn5puMvxCw+dAYznun+drMdG1IFl3agK0p/pqT9KAo= sha512-2e8qq0ETcfWRI4HJBzQiA3UoyFk6tbNyG+qSaIBZLyW9Xf3sWZHN/lxe9fTh1U45DpPf07yj94KsUHHWe4Yk1A==" crossorigin="anonymous"></script>

	  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

	
	
	
	<title>Category Seletion</title>
		<script type="text/javascript">
		/*var xMLHttpRequest = new XMLHttpRequest();
		function select() 
		{
				xMLHttpRequest.open("Get","topic name = "+document.getElementById("cat_name").value,true);
				xMLHttpRequest.onreadystatechange= processCat;
				xMLHttpRequest.send(null);
		}
		function processCat()
		{
				
		} */
		</script>
	</head>
		<body>
			<form action='catsel' method="get">
			Enter main category name: <input type="text" id="cat_name" name="cat_name"><button type="button" ><br>
			</form>
			
			  <%
  Connection con=null;
	Statement stmt = null;
	ResultSet rs = null;
			%>
			try 
			{
			Class.forName("com.mysql.jdbc.Driver");
			con= DriverManager.getConnection("jdbc:mysql://localhost:3306","root","sharath");
			stmt = con.createStatement();
			con.setAutoCommit(false);
			rs = stmt.executeQuery("select * from proj.trainner");
			
			<select name="cat_name" id = "cat_name">
		        <option value="0">10:00</option>
		        <option value="1">11:00</option>
		        <option value="2">12:00</option>
		        <option value="3">13:00</option>
		        <option value="4">14:00</option>
		        <option value="5">15:00</option>
		        <option value="6">16:00</option>
		        <option value="7">17:00</option>
		        <option value="8">18:00</option>
		        <option value="9">19:00</option>
		        <option value="10">20:00</option>
		        <option value="11">21:00</option>
		   </select>
		   
		</body>
</html>