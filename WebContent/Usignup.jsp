<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page errorPage="error.jsp" %>
<%@include file="db.jsp" %>
<%
String nm = request.getParameter("nm");
		String email = request.getParameter("email");
		String gen = request.getParameter("gen");
		String pwd = request.getParameter("pwd");
		String city = request.getParameter("city");
		String num = request.getParameter("num");
	out.println(num);
		 PreparedStatement ps = con.prepareStatement("insert into user values(?,?,?,?,?,?)");
		/*	ps.setString(1, nm);
			ps.setString(3, pwd);
			ps.setString(2, email);
			ps.setString(5, city);
			ps.setString(4, gen);
			ps.setString(6, num);
			
			int x = ps.executeUpdate();
			if(x!=0)
			{
				RequestDispatcher rd=request.getRequestDispatcher("login.html");
			rd.forward(request, response);
			}
			else
			{RequestDispatcher rd=request.getRequestDispatcher("register.html");
			rd.forward(request, response);
			out.println("Registration Unsuccessfull");
		}*/
		con.close();
		%>