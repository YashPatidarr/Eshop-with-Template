<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page errorPage="error.jsp" %>
<%@include file="db.jsp" %>
 <%
    session = request.getSession();
	String email =(String)session.getAttribute("id");
	%>
<%
String nm = request.getParameter("nm");
		String email1 = request.getParameter("email");
		String gen = request.getParameter("gen");
		String pwd = request.getParameter("pwd");
		String city = request.getParameter("city");
		String num = request.getParameter("num");
		String qr ="update user set email = ?,gender=?,city=?,ct_no=?,pwd=? where email= ?";
		 PreparedStatement ps = con.prepareStatement(qr);
			ps.setString(6, email);
			ps.setString(5, pwd);
			ps.setString(1, email1);
			ps.setString(3, city);
			ps.setString(2, gen);
			ps.setString(4, num);
			 
			int x = ps.executeUpdate();
			if(x!=0)
			{
				RequestDispatcher rd=request.getRequestDispatcher("MyAcc.jsp");
			rd.forward(request, response);
			out.println("Profile Updated");
			}
			else
			{RequestDispatcher rd=request.getRequestDispatcher("MyAcc.jsp");
			rd.forward(request, response);
			out.println("Profile Not Updated");
		}
		con.close();
		%>