<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page errorPage="error.jsp" %>
<%@include file="db.jsp" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Twitter Bootstrap shopping cart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Bootstrap styles -->
    <link href="assets/css/bootstrap.css" rel="stylesheet"/>
    <!-- Customize styles -->
    <link href="style.css" rel="stylesheet"/>
    <!-- font awesome styles -->
	<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
		<!--[if IE 7]>
			<link href="css/font-awesome-ie7.min.css" rel="stylesheet">
		<![endif]-->

		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

	<!-- Favicons -->
    <link rel="shortcut icon" href="assets/ico/favicon.ico">
  </head>
<body>
<!-- 
	Upper Header Section 
-->
<!--
Lower Header Section 
-->
<div class="container">
<div id="gototop"> </div>
<header id="header">
<div class="row">
	<div class="span4">
	<h1>
	<a class="logo" href="index.html">E-Shopping</a>	</h1>
	</div>
	<div class="span4"></div>
	<div class="span4 alignR">
	<p><br> <strong> Support (24/7) :  0800 1234 678 </strong><br></p>
	</div>
</div>
</header>

<!--
Navigation Bar Section 
-->
<div class="navbar">
	  <div class="navbar-inner">
		<div class="container">
		  <a data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		  </a>
		  <div class="nav-collapse">
			<ul class="nav">
			 <li class="active"><a href="index.html">Home	</a></li>
			  <li class=""><a href="AddProduct.html">Add Product </a></li>
			  <li class=""><a href="ShowProduct.jsp">Show Product </a></li>
			  <li class=""><a href="ShowUser.jsp">Show User Info </a></li>
			</ul>
		  </div>
		</div>
	  </div>
  </div>
<!-- 
Body Section 
-->
	<div class="row">
	  <div class="span9">
<!--
New Products
-->
	<div class="well well-small">
	<h3>All User Information </h3>
		<div class="row-fluid">
		  <ul class="thumbnails">
			<li class="span4">
			 
			 
			 
			 
			 
			 <%
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from user	");
			if(rs.next())
			{
				do
			
			{
				
				String name=rs.getString("name");
				String email=rs.getString("email");
				String pwd=rs.getString("pwd");
				String gender=rs.getString("gender");
				String city=rs.getString("city");
				String ct_no=rs.getString("ct_no");
				
%> 
				
				<div style="height:200px; width:700px; color:white; 
            border:1px solid;"> <pre>
            <%=name %>
				 Email:-    <%=email %>
				 Password:- <%=pwd %>
			          Gender:-   <%=gender %>
				 city:-    <%=city %>
				 Cont no:-  <%=ct_no %>
				  		   <h4><a class="shopBtn" href="DeleteU.jsp?email=<%=email%>" title="Delete"> Delete </a></h4>
     				 
			</pre>
			</div>

%> 
					 
 <%
			}while(rs.next());
			}
				
			else {
				out.println("no records found");
			}
			con.close();
			%>	
			  
			</li>
		  </ul>
		</div>
	
	</div>
	</div>
	</div>
	<hr><hr>
<!-- 
Clients 
-->
<section class="our_client">
	<hr class="soften"/>
	<h4 class="title cntr"><span class="text">Manufactures</span></h4>
	<hr class="soften"/>
	<div class="row">
		<div class="span2">
			<a href="#"><img src="assets/img/1.png" alt="" width="195px" height="195px" class="span4"></a>		</div>
		<div class="span2">
			<a href="#"><img src="assets/img/2.png" alt="" width="200" height="250" class="span4"></a>		</div>
		<div class="span2">
			<a href="#"><img  height="200" width="250" alt="" src="assets/img/3.png"></a>		</div>
		<div class="span2">
			<a href="#"><img src="assets/img/4.png" alt="" width="195px"  height="195px" class="span4"></a>		</div>
		<div class="span2">
			<a href="#"><img src="assets/img/5.png" alt="" width="195px"  height="195px" class="span4"></a>		</div>
		<div class="span2">
			<a href="#"><img src="assets/img/6.png" alt="" width="195px"  height="195px" class="span4"></a>		</div>
	</div>
</section>

<!--
Footer
-->
<footer class="footer">
<div class="row-fluid">
<div class="span2">
<h5>Your Account</h5>
<a href="#">YOUR ACCOUNT</a><br>
<a href="#">PERSONAL INFORMATION</a><br>
<a href="#">ADDRESSES</a><br>
<a href="#">DISCOUNT</a><br>
<a href="#">ORDER HISTORY</a><br>
 </div>
<div class="span2">
<h5>Iinformation</h5>
<a href="contact.html">CONTACT</a><br>
<a href="#">SITEMAP</a><br>
<a href="#">LEGAL NOTICE</a><br>
<a href="#">TERMS AND CONDITIONS</a><br>
<a href="#">ABOUT US</a><br>
 </div>
<div class="span2">
<h5>Our Offer</h5>
<a href="#">NEW PRODUCTS</a> <br>
<a href="#">TOP SELLERS</a><br>
<a href="#">SPECIALS</a><br>
<a href="#">MANUFACTURERS</a><br>
<a href="#">SUPPLIERS</a> <br/>
 </div>
 <div class="span6">
<h5>The standard chunk of Lorem</h5>
The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for
 those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et 
 Malorum" by Cicero are also reproduced in their exact original form, 
accompanied by English versions from the 1914 translation by H. Rackham.
 </div>
 </div>
</footer>
</div><!-- /container -->

<div class="copyright">
<div class="container">
	<p class="pull-right">
		<a href="#"><img src="assets/img/maestro.png" alt="payment"></a>
		<a href="#"><img src="assets/img/mc.png" alt="payment"></a>
		<a href="#"><img src="assets/img/pp.png" alt="payment"></a>
		<a href="#"><img src="assets/img/visa.png" alt="payment"></a>
		<a href="#"><img src="assets/img/disc.png" alt="payment"></a>
	</p>
	<span>Copyright &copy; 2013<br> bootstrap ecommerce shopping template</span>
</div>
</div>
<a href="#" class="gotop"><i class="icon-double-angle-up"></i></a>
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.easing-1.3.min.js"></script>
    <script src="assets/js/jquery.scrollTo-1.4.3.1-min.js"></script>
    <script src="assets/js/shop.js"></script>
</body>
</html>