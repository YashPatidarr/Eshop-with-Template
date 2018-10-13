<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page errorPage="error.jsp" %>
<%@include file="db.jsp" %>
<%
String name = request.getParameter("name");
String qr="delete from product where name =? ";


PreparedStatement ps=con.prepareStatement(qr);

ps.setString(1, name);

int i=ps.executeUpdate();
RequestDispatcher rd=request.getRequestDispatcher("ShowProduct.jsp");
if(i>0)
{
	rd.include(request, response);
	out.println(name+" deleted");
}else
{
	rd.include(request, response);
	out.println("unable to delete  "+name+"");
}

%>
