package org.sharath.newapp;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class StoreSelectData
 */
@WebServlet("/StoreSelectData")
public class StoreSelectData extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String options[]=request.getParameterValues("options");
		
        if(options[0].equals("option1"))
        {
            RequestDispatcher rd=request.getRequestDispatcher("Option1.jsp");
            rd.forward(request, response);
        }
        else if(options[0].equals("option2"))
        {
            RequestDispatcher rd=request.getRequestDispatcher("Option2.jsp");
            rd.forward(request, response);
        }
        else if(options[0].equals("option3"))
        {
            RequestDispatcher rd=request.getRequestDispatcher("Option3.jsp");
            rd.forward(request, response);
        }
        else if(options[0].equals("option4"))
        {
            RequestDispatcher rd=request.getRequestDispatcher("Option4.jsp");
            rd.forward(request, response);
        }
	}
}
