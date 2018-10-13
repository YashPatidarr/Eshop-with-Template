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
int x=0;
String qr="insert into product values(?,?,?,?,?,?)";
PreparedStatement ps = con.prepareStatement(qr);
ps.setString(1, name);
ps.setString(2, price);
ps.setString(3, cat);
ps.setString(4, cmp);
ps.setString(5, year);
ps.setString(6, prid);
x = ps.executeUpdate();
if(x>=0) {
RequestDispatcher rd=request.getRequestDispatcher("AddProduct.html");
rd.include(request, response);

out.println("product  "+name+"  added");
}
else
{RequestDispatcher rd=request.getRequestDispatcher("AddProduct.html");
rd.include(request, response);
out.println("Product NOT added!!!!!!!");
}
con.close();
%>