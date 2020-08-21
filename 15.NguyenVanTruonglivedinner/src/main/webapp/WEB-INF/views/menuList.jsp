<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="java.util.List"
    import="tp.kits3.livedinner.vo.Menu"
    pageEncoding="UTF-8"
    %>
    
<% 
String contextPath = request.getContextPath();
%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
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
							<div aria-labelledby="dropdown-a"class="header-submenu"id="s1"style="position:relative;display:none">
								<a href="<%=contextPath%>/booking">Reservation</a>
								<a href="<%=contextPath%>/postList">Stuff</a>
								<a href="<%=contextPath%>/postList">Gallery</a>
							</div>
						</li>
						<li class="sub-li">
							<a href="#" onclick="showMenuHeader('s2')" id="dropdown-a" data-toggle="dropdown">Blog</a>
							<div aria-labelledby="dropdown-a" class="header-submenu" id="s2" style="position:relative;display:none">
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
 	<div class="menu-table">
			<h1>Menu List</h1>
	<table border="1" width="90%">
	<tr>
		<th>MuId</th>
		<th>CtgId</th>
		<th>MuName</th>
		<th>Intro</th>
		<th>Details</th>
		<th>Price</th>
		<th>Currency</th>
		<th>Edit</th>
		<th>Delete</th>
	</tr>
	 <c:forEach var="menu" items="${listMenu}">
		<tr>
			<td>${menu.muid}</td>
			<td>${menu.ctgid}</td>
			<td>${menu.muname }</td>
			<td>${menu.intro}</td>
			<td>${menu.details }</td>
			<td>${menu.price}</td>
			<td>${menu.currency }</td>
			<td><a href="<c:url value='//${menu.muid}' />">Edit</a></td>
			<td><a href="<c:url value='//${menu.muid}' />">Delete</a></td>
		</tr>
	</c:forEach>
	</table>
	
	
	</div> 
	
	<!-- Start All Pages -->

	<!-- End All Pages -->
<%-- 	<%
	for(Menu menu : menulist){
	%>
	<div>
		<div>
		<h2><%=menu.getMuname() %>
		</h2>
		<p><%=menu.getDetails()%></p>
		</div>
	</div>		
	<%}%> --%>
	
	<!-- Start Menu -->
	<div class="container-menu">
		<div >
			<div >
				<div >
					<div class="title-menu">
						<h2>Special Menu</h2>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting</p>
					</div>
				</div>
			</div>
			
			<div class="big-menu-1">
				<div class="left-menu">
					<div id="v-pills-tab" role="tablist" aria-orientation="vertical">
						<a id="v-pills-home-tab"class="aColor" onclick="showMenu('v-pills-home');"onclick="changeColor(this);" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">All</a>
						<a id="v-pills-profile-tab"class="aColor" onclick="showMenu('v-pills-profile')"onclick="changeColor(this)"  data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">Drinks</a>
						<a id="v-pills-messages-tab"class="aColor" onclick="showMenu('v-pills-messages')"onclick="changeColor(this)" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">Lunch</a>
						<a id="v-pills-settings-tab"class="aColor" onclick="showMenu('v-pills-settings')" onclick="changeColor(this)"data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false">Dinner</a>
					</div>
				</div>
				
				<div class="right-menu">
					<div id="v-pills-tabContent">
						<div id="v-pills-home"class="bigMenuSpecial" role="tabpanel" aria-labelledby="v-pills-home-tab">
							<div>
								<div class="menu-row1">
									<div class="total-row1">
										<div class=" img-menu"onmouseover="showSidebar('pc1');" onmouseout="hideSidebar('pc1')">
											<img src="resources/images/img-01.jpg" alt="Image"style="width:260px; height:150px;">
											<div class="sidebar-menu" id="pc1">
												<h4>Special Drinks 1</h4>
												<p>Sed id magna vitae eros sagittis <br> euismod.</p>
												<h5> $7.79</h5>
											</div>
										</div>
									</div>
									
									<div class="total-row1">
										<div class="img-menu"onmouseover="showSidebar('pc2')" onmouseout="hideSidebar('pc2')">
											<img src="resources/images/img-02.jpg"  alt="Image"style="width:250px; height:150px;">
											<div class="sidebar-menu" id="pc2">
												<h4>Special Drinks 2</h4>
												<p>Sed id magna vitae eros sagittis <br> euismod.</p>
												<h5> $9.79</h5>
											</div>
										</div>
									</div>
									
									<div class="total-row1">
										<div class="img-menu"onmouseover="showSidebar('pc3')" onmouseout="hideSidebar('pc3')">
											<img src="resources/images/img-03.jpg" alt="Image"style="width:250px; height:150px;">
											<div class="sidebar-menu" id="pc3">
												<h4>Special Drinks 3</h4>
												<p>Sed id magna vitae eros sagittis <br> euismod.</p>
												<h5> $10.79</h5>
											</div>
										</div>
									</div>
								</div>
								<div class="menu-row1">
									<div class="total-row1">
										<div class="img-menu"onmouseover="showSidebar('pc4')" onmouseout="hideSidebar('pc4')">
											<img src="resources/images/img-04.jpg" alt="Image"style="width:250px; height:150px;">
											<div class="sidebar-menu"id="pc4">
												<h4>Special Lunch 1</h4>
												<p>Sed id magna vitae eros sagittis <br> euismod.</p>
												<h5> $15.79</h5>
											</div>
										</div>
									</div>
									
									<div class="total-row1">
										<div class="img-menu"onmouseover="showSidebar('pc5')" onmouseout="hideSidebar('pc5')">
											<img src="resources/images/img-05.jpg" alt="Image"style="width:250px; height:150px;">
											<div class="sidebar-menu"id="pc5">
												<h4>Special Lunch 2</h4>
												<p>Sed id magna vitae eros sagittis <br> euismod.</p>
												<h5> $18.79</h5>
											</div>
										</div>
									</div>
									
									<div class="total-row1">
										<div class="img-menu"onmouseover="showSidebar('pc6')" onmouseout="hideSidebar('pc6')">
											<img src="resources/images/img-06.jpg" alt="Image"style="width:250px; height:150px;">
											<div class="sidebar-menu"id="pc6">
												<h4>Special Lunch 3</h4>
												<p>Sed id magna vitae eros sagittis <br> euismod.</p>
												<h5> $20.79</h5>
											</div>
										</div>
									</div>
								</div>
								<div class="menu-row1">
									<div class="total-row1">
										<div class="img-menu"onmouseover="showSidebar('pc7')" onmouseout="hideSidebar('pc7')" >
											<img src="resources/images/img-07.jpg" alt="Image"style="width:250px; height:150px;">
											<div class="sidebar-menu"id="pc7">
												<h4>Special Dinner 1</h4>
												<p>Sed id magna vitae eros sagittis euismod.</p>
												<h5> $25.79</h5>
											</div>
										</div>
									</div>
									
									<div class="total-row1">
										<div class="img-menu"onmouseover="showSidebar('pc8')" onmouseout="hideSidebar('pc8')">
											<img src="resources/images/img-08.jpg" alt="Image"style="width:250px; height:150px;">
											<div class="sidebar-menu"id="pc8">
												<h4>Special Dinner 2</h4>
												<p>Sed id magna vitae eros sagittis euismod.</p>
												<h5> $22.79</h5>
											</div>
										</div>
									</div>
									
									<div class="total-row1">
										<div class="img-menu"onmouseover="showSidebar('pc9')" onmouseout="hideSidebar('pc9')">
											<img src="resources/images/img-09.jpg" alt="Image"style="width:250px; height:150px;">
											<div class="sidebar-menu"id="pc9">
												<h4>Special Dinner 3</h4>
												<p>Sed id magna vitae eros sagittis euismod.</p>
												<h5> $24.79</h5>
											</div>
										</div>
									</div>
								</div>
							</div>
							
						</div>
						<div id="v-pills-profile"class="bigMenuSpecial" role="tabpanel" aria-labelledby="v-pills-profile-tab">
							<div >
								<div class="menu-row1">
									<div class="total-row1">
										<div class="img-menu"onmouseover="showSidebar('pc10')" onmouseout="hideSidebar('pc10')">
											<img src="resources/images/img-01.jpg" alt="Image"style="width:250px; height:150px;">
											<div class="sidebar-menu"id="pc10">
												<h4>Special Drinks 1</h4>
												<p>Sed id magna vitae eros sagittis euismod.</p>
												<h5> $7.79</h5>
											</div>
										</div>
									</div>
									
									<div class="total-row1">
										<div class="img-menu"onmouseover="showSidebar('pc11')" onmouseout="hideSidebar('pc11')">
											<img src="resources/images/img-02.jpg" alt="Image"style="width:250px; height:150px;">
											<div class="sidebar-menu"id="pc11">
												<h4>Special Drinks 2</h4>
												<p>Sed id magna vitae eros sagittis euismod.</p>
												<h5> $9.79</h5>
											</div>
										</div>
									</div>
									
									<div class="total-row1">
										<div class="img-menu"onmouseover="showSidebar('pc12')" onmouseout="hideSidebar('pc12')">
											<img src="resources/images/img-03.jpg" alt="Image"style="width:250px; height:150px;">
											<div class="sidebar-menu"id="pc12">
												<h4>Special Drinks 3</h4>
												<p>Sed id magna vitae eros sagittis euismod.</p>
												<h5> $10.79</h5>
											</div>
										</div>
									</div>
								</div>
							</div>
							
						</div>
						<div id="v-pills-messages"class="bigMenuSpecial" role="tabpanel" aria-labelledby="v-pills-messages-tab">
							<div >
								<div class="menu-row1">
									<div class="total-row1">
										<div  class="img-menu"onmouseover="showSidebar('pc13')" onmouseout="hideSidebar('pc13')">
											<img src="resources/images/img-04.jpg" alt="Image"style="width:250px; height:150px;">
											<div class="sidebar-menu"id="pc13">
												<h4>Special Lunch 1</h4>
												<p>Sed id magna vitae eros sagittis euismod.</p>
												<h5> $15.79</h5>
											</div>
										</div>
									</div>
									
									<div class="total-row1">
										<div  class="img-menu"onmouseover="showSidebar('pc14')" onmouseout="hideSidebar('pc14')">
											<img src="resources/images/img-05.jpg" alt="Image"style="width:250px; height:150px;">
											<div class="sidebar-menu"id="pc14">
												<h4>Special Lunch 2</h4>
												<p>Sed id magna vitae eros sagittis euismod.</p>
												<h5> $18.79</h5>
											</div>
										</div>
									</div>
									
									<div class="total-row1">
										<div class="img-menu"onmouseover="showSidebar('pc15')" onmouseout="hideSidebar('pc15')">
											<img src="resources/images/img-06.jpg" alt="Image"style="width:250px; height:150px;">
											<div class="sidebar-menu"id="pc15">
												<h4>Special Lunch 3</h4>
												<p>Sed id magna vitae eros sagittis euismod.</p>
												<h5> $20.79</h5>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div id="v-pills-settings"class="bigMenuSpecial" role="tabpanel" aria-labelledby="v-pills-settings-tab">
							<div >
								<div class="menu-row1">
									<div class="total-row1" >
										<div class="img-menu"onmouseover="showSidebar('pc16')" onmouseout="hideSidebar('pc16')">
											<img src="resources/images/img-07.jpg" alt="Image"style="width:250px; height:150px;">
											<div class="sidebar-menu"id="pc16">
												<h4>Special Dinner 1</h4>
												<p>Sed id magna vitae eros sagittis euismod.</p>
												<h5> $25.79</h5>
											</div>
										</div>
									</div>
									
									<div class="total-row1" >
										<div class="img-menu"onmouseover="showSidebar('pc17')" onmouseout="hideSidebar('pc17')">
											<img src="resources/images/img-08.jpg" alt="Image"style="width:250px; height:150px;">
											<div class="sidebar-menu"id="pc17">
												<h4>Special Dinner 2</h4>
												<p>Sed id magna vitae eros sagittis euismod.</p>
												<h5> $22.79</h5>
											</div>
										</div>
									</div>
									
									<div class="total-row1" >
										<div class="img-menu"onmouseover="showSidebar('pc18')" onmouseout="hideSidebar('pc18')">
											<img src="resources/images/img-09.jpg" alt="Image"style="width:250px; height:150px;">
											<div class="sidebar-menu"id="pc18">
												<h4>Special Dinner 3</h4>
												<p>Sed id magna vitae eros sagittis euismod.</p>
												<h5> $24.79</h5>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</div>
	<!-- End Menu -->
	
	<!-- Start QT -->
	<div class="QT-box">
		<div >
			<div >
				<div class="QT-title">
					<p>
						" If you're not the one cooking, stay out of the <br> way and compliment the chef. "
					</p>
					<span>Michael Strahan</span>
				</div>
			</div>
		</div>
	</div>
	<!-- End QT -->
	
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