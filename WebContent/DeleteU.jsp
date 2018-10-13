<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page errorPage="error.jsp" %>
<%@include file="db.jsp" %>
<%
String email = request.getParameter("email");
String qr="delete from user where email =? ";


PreparedStatement ps=con.prepareStatement(qr);

ps.setString(1, email);

int i=ps.executeUpdate();

if(i>0)
{
	RequestDispatcher rd=request.getRequestDispatcher("ShowUD.jsp");
	rd.include(request, response);
	out.println(email+" deleted");
}else
{
	RequestDispatcher rd=request.getRequestDispatcher("ShowUD.jsp");
	rd.include(request, response);
	out.println("unable to delete  "+email+"");
}

%>
