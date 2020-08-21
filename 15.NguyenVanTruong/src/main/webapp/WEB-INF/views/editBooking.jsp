<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.List"
	import="tp.kits3.livedinner.vo.Book"
    pageEncoding="UTF-8"%>
<%
String contextPath = request.getContextPath();
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
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
			<div class = "header-box">
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
							<a href="#" onclick="showMenuHeader('s1')" id="dropdown-a" data-toggle="dropdown">Pages</a>
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
					<h1>Booking</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Pages -->
	
	<!-- Start booking -->
	<div class=container-booking>
		<div >
			<div  class= "booking-title">
				<div >
					<div class = "booking-text">
						<h2>Reservation</h2>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting</p>
					</div>
				</div>
			</div>
			<div class="booking-option">
				<div >
					<div class="booking-form">
						  <form:form method="POST" action="editbooking" modelAttribute="bookEdit">
  							<form:input path="bkid"  />
    						<form:input path="bkname" /> <br>
    						<form:input path="bkemail"/> <br>
    						<form:input path="bkphone"/> <br>
    						<form:input  path="bktime"/> <br>
    						<form:input path="bknum"/> <br>
    						<form:input path="booking"/> <br>
    						<form:input path="bkmemo"/> <br>
   							<input id="bookingbtn" type="submit" value="Save" /> <br>
  							</form:form>
  						<%-- 	<form:form method="POST" action="bookList">
  								<input id="view" type="submit" value="View Booking"/> 
  							</form:form> --%>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End booking -->
		<!-- Start Customer Reviews -->
	<div class="container-customer">
		<div >
			<div class="customer-top">
				<div >
					<div class="customer-top-title">
						<h2>Customer Reviews</h2>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting</p>
					</div>
				</div>
			</div>
			<div class="customer-main">
				<div class="main-total">
					<div id="reviews" data-ride="carousel">
						<div class="slidershow-customer">
							<div class="slides-cus fade"id="slideID1">
								<div>
									<img src="resources/images/quotations-button.png" alt="">
								</div>
								<h5><strong >Paul Mitchel</strong></h5>
								<h6>Web Developer</h6>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem tempor, varius quam at, luctus dui. <br> Mauris magna metus, dapibus nec turpis vel, semper malesuada ante. Idac bibendum scelerisque non non <br> purus. Suspendisse varius nibh non aliquet.</p>
							</div>
							<%-- <div class="slides-cus fade"id="slideID2">
								<div>
									<img src="resources/images/quotations-button.png" alt="">
								</div>
								<h5><strong>Steve Fonsi</strong></h5>
								<h6>Web Designer</h6>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem tempor, varius quam at, luctus dui. <br> Mauris magna metus, dapibus nec turpis vel, semper malesuada ante. Idac bibendum scelerisque non non <br> purus. Suspendisse varius nibh non aliquet.</p>
							</div>
							<div class="slides-cus fade"id="slide-cus3"id="slideID3">
								<div>
									<img src="resources/images/quotations-button.png" alt="">
								</div>
								<h5><strong >Daniel vebar</strong></h5>
								<h6>Seo Analyst</h6>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem tempor, varius quam at, luctus dui. <br> Mauris magna metus, dapibus nec turpis vel, semper malesuada ante. Idac bibendum scelerisque non non <br> purus. Suspendisse varius nibh non aliquet.</p>
							</div> --%>
						</div>
						<a class="prev-cus1" onclick="prevCus()">&#10094;</a>
						<a class="next-cus1" onclick="nextCus()">&#10095;</a>
						
                    </div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Customer Reviews -->
	
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
   <script type="text/javascript" src="resources/js/specialMenu.js"></script>
     <script type="text/javascript" src="resources/js/subMenu.js"></script>
</body>
</html>