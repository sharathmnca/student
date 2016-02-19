<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="category.Display"%>    
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

	
	
	
	<title>Category Selection</title>
		<script type="text/javascript">
		 function alert()
		 {
		alert("successfull");
		
		 }
		</script>
	</head>
	<% Display d= new Display();%>
	
	
		<body>
		<pre>
		
			<form action='Category' method="get">
			Enter main category name: <input type="text" id="cat_name" name="cat_name">
			<input type="submit" value="SUBMIT" onclick="alert()"><br>
			</form>
			
			<form action='Display' method="get">
			<input type="submit" value="DISPLAY" ><br>
			Enter main category list: <select name="">
									  <option value="" selected>Choose Category</option>
									  <option value=""></option>
									  </select>
			
			
			</form>
			
			  
		   <form action='subcatsel' method="get">
			Enter main category name: <input type="text" id="subcat_name" name="subcat_name">
			<input type="submit" value="SUBMIT" ><br>
							
			
			</form>
			
			<form action='' method="get">
			Enter main category name: <input type="file" id="" name="image_name">
			<input type="submit" value="SUBMIT" ><br>
							
			
			</form>
			
			
			</pre>
		</body>
</html>