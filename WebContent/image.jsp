
<%@page import="java.io.InputStream"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.io.FileInputStream"%>    
    <%@ page import="java.util.Date"%>
<%@ page import="java.io.IOException"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.Statement"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">
		 function display_alert()
		 {
				alert("uploaded successfull");
		
		 }
		 
		    function check()
		    {
		        var imgpath=document.getElementById('file');
		        if (!imgpath.value=="")
		        {
		          var img=imgpath.files[0].size;
		          var imgsize=img/1024; 
		          alert(imgsize);
		        }
		      }
		 
		</script>


</head>
<body>
<%
  Connection con=null;
	Statement stmt = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	FileInputStream fis;
			%>
		
		<%
		try{
		Class.forName("com.mysql.jdbc.Driver").newInstance();

		con=DriverManager.getConnection("jdbc:mysql://localhost:3306","root","sharath");

		File image=new File("E:/ankit/ANKIT_JSP/obama.jpg");

		ps=con.prepareStatement("insert into pinterest.image(cat_img) values(?)");

		ps.setString(1,"Barack Obama");

		ps.setString(2,"Wasington D.C.");

		fis=new FileInputStream(image);

		ps.setBinaryStream(3, (InputStream)fis, (int)(image.length()));

		int s = ps.executeUpdate();

		if(s>0) {

		%>

		<b><font color="Blue">

		<% out.println("Image Uploaded successfully !"); %>

		</font></b>
<% 

		}

		else {

		out.println("unsucessfull to upload image.");

		}

		con.close();

		ps.close();

		}catch(Exception ex){

		out.println("Error in connection : "+ex);

		}		
		 %>

            <form action="image.jsp" method="get"  onsubmit="return check();" enctype="multipart/form-data">
                <input type="text" name="cat_img_name" />
                <input type="file" name="cat_img" />
                <input type="submit" value="upload" />
            </form> 
            
            
            	  

            
            
</body>
</html>