<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
String id =request.getParameter("id");
		String pwd =request.getParameter("pwd");
		if(id.equals("admin")&&pwd.equals("12345"))
		{

			RequestDispatcher rd=request.getRequestDispatcher("AdminHome.html");
			rd.forward(request, response);
			
		}
		else{

			RequestDispatcher rd=request.getRequestDispatcher("ulogin.html");
			rd.forward(request, response);
			
		}
		
		%>