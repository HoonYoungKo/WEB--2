<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="css/bootstrap.css">

	<meta name="viewport" content="width=device-width", initial-scale="1">
	<meta content="" name="keywords">
	<meta content="" name="description">
	
	<link href="img/favicon.png" rel="icon">
	<link href="img/apple-touch-icon.png" rel="apple-touch-icon">
	
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800|Montserrat:300,400,700" rel="stylesheet">
	
	
	<link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
 	<link href="lib/animate/animate.min.css" rel="stylesheet">
 	<link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
 	<link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
 	<link href="lib/magnific-popup/magnific-popup.css" rel="stylesheet">
	 <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  
	<title></title>
</head>
<body id="body">

  	

		<%
			String userID = null;
			if (session.getAttribute("userID") !=null){
				userID = (String) session.getAttribute("userID");
			}
		%>
		<nav class="navbar navbar-default">
			<div class="navbar-header"> 
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="cowallker.jsp">COWALLKER</a>
			</div>
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="cowallker.jsp">HOME</a></li>
					<li><a href="bbs.jsp">게시판</a></li>
				</ul>
				<%
					if(userID == null){
				%>	
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="login.jsp">로그인</a></li>
							<li><a href="join.jsp">회원가입</a></li>
						</ul>
					</li>
				</ul>
				<%
					} else {
				%>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">회원관리<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="logoutAction.jsp">로그아웃</a></li>
						</ul>
					</li>
				</ul>
				<%
					}
				%>
				
				
			</div>
		</nav>
	
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>