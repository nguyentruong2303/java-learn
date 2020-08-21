<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.List"
	import="tp.kits3.livedinner.vo.Contact"
    pageEncoding="UTF-8"%>
    
<%
String contextPath = request.getContextPath();
List<Contact> contactlist = (List<Contact>)request.getAttribute("contactList"); 

%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en"><!-- Basic -->
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
 
     <!-- Site Metas -->
    <title>Live Dinner Restaurant</title>  
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="resources/images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="resources/images/apple-touch-icon.png">

	<!-- Site CSS -->
    <link rel="stylesheet" href="resources/css/style1.css">    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="resources/css/custom.css">

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<!-- Start header -->
	<header>
	
		<nav>
			<div class="header-box">
				<a href="<%=contextPath%>/">
					<img src="resources/images/logo.png" alt="" />
				</a>
				<!-- <button type="button" data-toggle="collapse" data-target="#navbars-rs-food" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
				  <span></span>
				</button> -->
				<div id="navbars-rs-food">
					<ul>
						<li><a href="<%=contextPath%>/">Home</a></li>
						<li><a href="<%=contextPath%>/menuList">Menu</a></li>
						<li><a href="<%=contextPath%>/categoryList">About</a></li>
						<li class="sub-li">
							<a href="#" id="dropdown-a" data-toggle="dropdown" onclick="showMenuHeader('s1')">Pages</a>
							<div class="header-submenu" id="s1" style="position:relative;display:none" aria-labelledby="dropdown-a">
								<a href="<%=contextPath%>/booking">Reservation</a>
								<a href="<%=contextPath%>/postList">Stuff</a>
								<a href="<%=contextPath%>/postList">Gallery</a>
							</div>
						</li>
						<li class="sub-li">
							<a href="#" onclick="showMenuHeader('s2')" id="dropdown-a" data-toggle="dropdown">Blog</a>
							<div class="header-submenu" id="s2" style="position:relative;display:none" aria-labelledby="dropdown-a">
								<a href="<%=contextPath%>/tagList">blog</a>
								<a href="<%=contextPath%>/tagList">blog Single</a>
							</div>
						</li>
						<li><a href="<%=contextPath%>/contactList">Contact</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- End header -->
	
	<!-- Start All Pages -->
		<div class="about-us-content about-us-img">
		<div class="about-us-div">
			<div >
				<div class="about-us-text">
					<h1>Contact</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Pages -->
	
	<!-- Start Contact -->
		<div class=container-contact>
		<div >
			<div  class= "contact-title">
				<div >
					<div class = "contact-text">
						<h2>Contact</h2>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting</p>
					</div>
				</div>
			</div>
			<div class="contact-add">
				<div >
					<div class="contact-form">
						  <form:form method="POST" action="contactList" modelAttribute="contactAttri">
  							
    						<form:input path="coname" 	placeholder=" Name"  /> <br>
    						<form:input path="priphone" placeholder="PriPhone"/> <br>
    						<form:input path="subphone" placeholder="Sub Phone"/> <br>
    						<form:input path="email" 	placeholder="Email"/> <br>
    						<form:input path="address" 	placeholder="Address"/> <br>
    						<form:input path="unused" 	placeholder="unused"/> <br>
    						<form:input path="opening" placeholder="Opening"/> <br>
    						<form:input path="weekday" placeholder="weekday"/> <br>
    						<form:input path="weekend" placeholder="weekend"/> <br>
    						<form:input path="aboutus" placeholder="aboutus"/> <br>
    						<form:input path="latitude" placeholder="latitude"/> <br>
    						<form:input path="logitude" placeholder="logitude"/> <br>
   							<input id="contact" type="submit" value="Contact" /> <br>
  							</form:form>
  						<%-- 	<form:form method="POST" action="bookList">
  								<input id="view" type="submit" value="View Booking"/> 
  							</form:form> --%>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Contact -->
	
	<!-- Start Contact info -->
	<div class="contact-total">
		<div  class="contact-1">
			<div class="contact-2">
				<div class="sub-contact">
					<i class="fa fa-volume-control-phone"></i>
					<div class="title-contact">
						<h4>Phone</h4>
						<p>
							+01 123-456-4590
						</p>
					</div>
				</div>
				<div class="sub-contact">
					<i class="fa fa-envelope"></i>
					<div class="title-contact">
						<h4>Email</h4>
						<p>
							yourmail@gmail.com
						</p>
					</div>
				</div>
				<div class="sub-contact">
					<i class="fa fa-map-marker"></i>
					<div class="title-contact">
						<h4>Location</h4>
						<p>
							800, Lorem Street, US
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Contact info -->
	
	<!-- Start Footer -->
	<footer>
		<div class="footer-top" >
			<div class="footer-main-top">
				<div class="footer-title">
					<h3>About Us</h3>
					<p>Integer cursus scelerisque ipsum id <br/> efficitur. Donec a dui fringilla, <br/> gravida lorem ac, semper magna. <br/> Aenean rhoncus ac lectus a <br/> interdum. Vivamus semper posuere <br/> dui.</p>
				</div>
				<div class="footer-center1">
					<h3>Subscribe</h3>
					<div>
						<form>
							<input name="EMAIL" id="subs-email" placeholder="Email Address..." type="email">
							<button type="submit" >SUBSCRIBE</button>
							<div ></div>
						</form>
					</div>
					<ul>
						<li><a href="#"><i class="fa fa-facebook"aria-hidden="true"></i></a></li>
						<li><a href="#"><i class="fa fa-instagram"aria-hidden="true"></i></a></li>
						<li><a href="#"><i class="fa fa-youtube"aria-hidden="true"></i></a></li>
						<li><a href="#"><i class="fa fa-google"aria-hidden="true"></i></a></li>
						<li><a href="#"><i class="fa fa-linkedin"aria-hidden="true"></i></a></li>
					</ul>
				</div>
				<div class="footer-center2">
					<h3>Contact information</h3>
					<p>Ipsum Street, Lorem Tower, <br> MO, Columbia, 508000</p>
					<p><a href="#">+01 2000 800 9999</a></p>
					<p><a href="#"> info@admin.com</a></p>
				</div>
				<div class="footer-right">
					<h3>Opening hours</h3>
					<p><span>Monday: </span>Closed</p>
					<p><span>Tue-Wed :</span> 9:Am - 10PM</p>
					<p><span>Thu-Fri :</span> 9:Am - 10PM</p>
					<p><span>Sat-Sun :</span> 5:PM - 10PM</p>
				</div>
			</div>
		</div>
		
		<div class="footer-bottom">
			<div >
				<div >
					<div class="footer-bottom-title">
						<p>All Rights Reserved. &copy; 2018 <a href="#">Live Dinner Restaurant</a> Design By : 
					<a href="#">html design</a></p>
					</div>
				</div>
			</div>
		</div>
		
	</footer>
	<!-- End Footer -->
	
	<a href="#" id="back-to-top" title="Back to top" style="display: none;"><i aria-hidden="true"></i></a>

	<!-- ALL JS FILES -->
    <!-- ALL PLUGINS -->
    <script type="text/javascript" src="resources/js/custom.js"></script>
    <script type="text/javascript" src="resources/js/menuHeader.js"></script>
    <script type="text/javascript" src="resources/js/subMenu.js"></script>
        <script type="text/javascript" src="resources/js/specialMenu.js"></script>        
</body>
</html>