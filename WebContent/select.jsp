<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.IOException"%>
    <%@ page import="java.io.PrintWriter"%>
    <%@ page import="javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
      <tr><td>Room Name</td><td><input type="text" name="roomname"></td></tr>

                 <tr><td>Room Type</td><td><select id="roomtypeid" name="roomtypeid">
                    <option  value="2L">cat1 </option>
                    <option  value="1L">cat2 </option>
                    <option  value="0L">cat3 </option>
                </select>
          </table> 
          
          
          <%java.lang.String name =request.getParameter("roomname");%>
          <%java.lang.String id =request.getParameter("roomtypeid");%>
          <%= name %>
		<% out.println("your selection is..." + request.getParameter("id"));%>
</body>
</html>