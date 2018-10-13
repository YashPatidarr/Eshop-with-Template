<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page errorPage="error.jsp" %>
<%@include file="db.jsp" %>
<% 
String name =request.getParameter("name");
String price =request.getParameter("price");
String cat =request.getParameter("cat");
String cmp =request.getParameter("cmp");
String year =request.getParameter("year");
String prid =request.getParameter("prid");
String qr ="update product set price = ?,cat=?,cmp=?,year=?,prid=? where name= ?";
PreparedStatement ps = con.prepareStatement(qr);
ps.setString(6, name );
ps.setString(1, price );
ps.setString(2, cat );
ps.setString(3, cmp );
ps.setString(4, year );
ps.setString(5, prid);
int x = ps.executeUpdate();
if(x>0)
{
	RequestDispatcher rd=request.getRequestDispatcher("ShowProduct.jsp");
rd.include(request, response);
out.println("Product  "+name+"  Updated");
}
else
{
	RequestDispatcher rd=request.getRequestDispatcher("ShowProduct.jsp");
rd.include(request, response);
out.println("Product  "+name+" not Updated");
}
%>