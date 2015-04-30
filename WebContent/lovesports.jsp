<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="edu.neu.cs5200.spur.main.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="css/LoveSports.css" style="text/css">

</head>
<body>
	<nav class="navbar navbar-default">
	<ul class="nav nav-tabs">
		<li id="top"><a href="" class="current">home</a></li>
		<li><a href="">about</a></li>
		<li><a href="">contact</a></li>
	</ul>
	<ul class="nav nav-tabs">
		<li><a href="">Log in/Register</a></li>
		<li><a href="">Sign Up</a></li>
	</ul>
	</nav>

	<div class="jumbotron">
		<h1>I Love Sports</h1>
		<p>Welcome to I Love Sports, a website providing information about
			all kinds of sports.</p>
	</div>


	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="football">
					<h2>FOOTBALL</h2>
					<img
						src="https://beccasheppard.files.wordpress.com/2011/09/football.jpg">
					<p>
						<%
							GetNewsByQuery client = new GetNewsByQuery();
							String link_football[][] = client.findNewsByQuery("football");
							for (int i = 0; i < link_football.length; i++) {
						%><a href="<%out.println(link_football[i][0]);%>"> <%
 	out.println(" <br> " + link_football[i][1] + " <br> ");
 %></a>
						<%
							/* <a href="url">link text</a> */
							}
						%>
					</p>
				</div>
			</div>
			<div class="col-md-6">
				<div class="basketball">
					<h2>BASKETBALL</h2>
					<img
						src="http://www.prepcasts.com/wp-content/uploads/2014/04/BasketballStockImage.jpg">
						<p>
						<%
	/* 						GetNewsByQuery client = new GetNewsByQuery(); */
							String link_basketball[][] = client.findNewsByQuery("basketball");
							for (int i = 0; i < link_basketball.length; i++) {
						%><a href="<%out.println(link_basketball[i][0]);%>"> <%
 	out.println(" <br> " + link_basketball[i][1] + " <br> ");
 %></a>
						<%
							/* <a href="url">link text</a> */
							}
						%>
					</p>
				</div>
			</div>
			<div class="col-md-6">
				<div class="baseball">
					<h2>BASEBALL</h2>
					<img
						src="http://upload.wikimedia.org/wikipedia/commons/9/92/Baseball.svg">
						<p>
						<%
	/* 						GetNewsByQuery client = new GetNewsByQuery(); */
							String link_baseball[][] = client.findNewsByQuery("baseball");
							for (int i = 0; i < link_baseball.length; i++) {
						%><a href="<%out.println(link_baseball[i][0]);%>"> <%
 	out.println(" <br> " + link_baseball[i][1] + " <br> ");
 %></a>
						<%
							/* <a href="url">link text</a> */
							}
						%>
					</p>
				</div>
			</div>
			<div class="col-md-6">
				<div class="soccer">
					<h2>SOCCER</h2>
					<img
						src="http://upload.wikimedia.org/wikipedia/en/thumb/e/ec/Soccer_ball.svg/480px-Soccer_ball.svg.png">
						<p>
						<%
	/* 						GetNewsByQuery client = new GetNewsByQuery(); */
							String link_soccer[][] = client.findNewsByQuery("soccer");
							for (int i = 0; i < link_soccer.length; i++) {
						%><a href="<%out.println(link_soccer[i][0]);%>"> <%
 	out.println(" <br> " + link_soccer[i][1] + " <br> ");
 %></a>
						<%
							/* <a href="url">link text</a> */
							}
						%>
					</p>
				</div>
			</div>
			<div class="col-md-6">
				<div class="badminton">
					<h2>BADMINTON</h2>
					<img
						src="http://img.alibaba.com/img/pb/229/838/825/825838229_616.jpg">
						<p>
						<%
	/* 						GetNewsByQuery client = new GetNewsByQuery(); */
							String link_badminton[][] = client.findNewsByQuery("badminton");
							for (int i = 0; i < link_badminton.length; i++) {
						%><a href="<%out.println(link_badminton[i][0]);%>"> <%
 	out.println(" <br> " + link_badminton[i][1] + " <br> ");
 %></a>
						<%
							/* <a href="url">link text</a> */
							}
						%>
					</p>
				</div>
			</div>
			<div class="col-md-6">
				<div class="tabletennis">
					<h2>TABLE TENNIS</h2>
					<img
						src="http://cdn.sweatband.com/adidas_vigor_120_table_tennis_set_adidas_vigor_120_table_tennis_set_2000x2000.jpg">
						<p>
						<%
	/* 						GetNewsByQuery client = new GetNewsByQuery(); */
							String link_tabletennis[][] = client.findNewsByQuery("table%20tennis");
							for (int i = 0; i < link_tabletennis.length; i++) {
						%><a href="<%out.println(link_tabletennis[i][0]);%>"> <%
 	out.println(" <br> " + link_tabletennis[i][1] + " <br> ");
 %></a>
						<%
							/* <a href="url">link text</a> */
							}
						%>
					</p>
				</div>
			</div>
			<div class="col-md-6">
				<div class="tennis">
					<h2>TENNIS</h2>
					<img
						src="http://city.lighthousepoint.com/wp-content/uploads/2013/03/Tennis-clip-art1.jpg">
						<p>
						<%
	/* 						GetNewsByQuery client = new GetNewsByQuery(); */
							String link_tennis[][] = client.findNewsByQuery("tennis");
							for (int i = 0; i < link_tennis.length; i++) {
						%><a href="<%out.println(link_tennis[i][0]);%>"> <%
 	out.println(" <br> " + link_tennis[i][1] + " <br> ");
 %></a>
						<%
							/* <a href="url">link text</a> */
							}
						%>
					</p>
				</div>
			</div>
			<div class="col-md-6">
				<div class="blog">
					<h2>BLOG</h2>
					<img
						src="http://membershipexpert.com/wp-content/uploads/2013/03/discussionforums.jpg">
				</div>
			</div>
		</div>
	</div>

	<div class="return_to_top">
		<a href="#top"> <img
			src="http://www.flamingobeachcr.com/images/icon-back-to-top.jpg"
			width="50" height="50">
		</a>
	</div>

	<footer>
	<p align="center">Copyright ©1996-2015 Zinan Xiong, All Rights
		Reserved</p>
	</footer>
</body>
</html>