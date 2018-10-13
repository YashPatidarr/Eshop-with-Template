<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page errorPage="error.jsp" %>
<%@include file="db.jsp" %>

<%
session = request.getSession();
		session.invalidate();
		out.println("Logout Successfully");
		RequestDispatcher rd=request.getRequestDispatcher("login.html");
		rd.forward(request, response);
		out.println("Logout Successfully");
		con.close();
		%>