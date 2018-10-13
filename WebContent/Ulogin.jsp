<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page errorPage="error.jsp" %>
<%@include file="db.jsp" %>
<% String email=request.getParameter("email");
		String pass=request.getParameter("pwd");
		 PreparedStatement ps = con.prepareStatement("select * from user where email=? and pwd=?");
			ps.setString(1,email);
			ps.setString(2, pass);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				session =request.getSession();
				session.setAttribute("id", email);
				RequestDispatcher rd=request.getRequestDispatcher("Uhome.html");
				rd.forward(request, response);
				
			}
			else {
				RequestDispatcher rd=request.getRequestDispatcher("ulogin.html");
				rd.forward(request, response);
				out.println("invalid id and password");
				
		}
			con.close();
	%>	