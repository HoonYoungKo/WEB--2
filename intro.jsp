<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Cowallker</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800|Montserrat:300,400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Dokdo|Noto+Sans+JP|Gaegu|Gugi|Hi+Melody" rel="stylesheet">
  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="lib/magnific-popup/magnific-popup.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">

  <!-- =======================================================
    Theme Name: Reveal
    Theme URL: https://bootstrapmade.com/reveal-bootstrap-corporate-template/
    Author: BootstrapMade.com
    License: https://bootstrapmade.com/license/
  ======================================================= -->
</head>

<body id="body">



  <!--==========================
    Header
  ============================-->
  	<%
		String userID = null;
		if (session.getAttribute("userID") !=null){
			userID = (String) session.getAttribute("userID");
		}
	%>
  <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
    <a class="navbar-brand js-scroll-trigger" href="#page-top">
      <span class="d-block d-lg-none">COWALLKER</span>
      <span class="d-none d-lg-block" style="font-family: 'Gaegu', cursive;">
        MENU��
      </span>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav" style="font-family: 'Gaegu', cursive;">
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#cowallker">COWALLKER?</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#services">SERVICES</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#piece">PIECE</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#team">COOPERATOR</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#gallery">Gallery</a>
        </li>
        <%
				if(userID == null){
			%>
        <li class="nav-item dropdown">
          <a class="nav-link js-scroll-trigger ddropdown-toggle" data-toggle="dropdown" href="#">Log<span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="login.jsp">login</a></li>
              <li><a href="join.jsp">sign up</a></li>
            </ul>
        </li>
        <%
				} else {
			%>
			<li class="nav-item dropdown">
          <a class="nav-link js-scroll-trigger ddropdown-toggle" data-toggle="dropdown" href="#">My Home<span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="bbs.jsp">�Խ���</a></li>
              <li><a href="logoutAction.jsp">Logout</a></li>
            </ul>
        </li>
        <%
				}
			%>
      </ul>
    </div>
  </nav>

  <!--==========================
    Intro Section
  ============================-->
  <section id="intro">

    <div class="intro-content">
      <h2 style="font-family: 'Gaegu', cursive;">COWALLKER<br><span style="font-family: 'Gaegu', cursive;">wall painting & volunteer</span></h2>
      <div>
        <a href="login.jsp" class="btn-login scrollto">Login</a>
        <a href="join.jsp" class="btn-signup scrollto">Sign up</a>
      </div>
    </div>

    <div id="intro-carousel" class="owl-carousel" >
      <div class="item" style="background-image: url('img/intro-carousel/1.jpg');"></div>
      <div class="item" style="background-image: url('img/intro-carousel/2.jpg');"></div>
      <div class="item" style="background-image: url('img/intro-carousel/3.jpg');"></div>
      <div class="item" style="background-image: url('img/intro-carousel/4.jpg');"></div>
      <div class="item" style="background-image: url('img/intro-carousel/5.jpg');"></div>
    </div>

  </section><!-- #intro -->



  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/jquery/jquery-migrate.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/superfish/hoverIntent.js"></script>
  <script src="lib/superfish/superfish.min.js"></script>
  <script src="lib/wow/wow.min.js"></script>
  <script src="lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="lib/magnific-popup/magnific-popup.min.js"></script>
  <script src="lib/sticky/sticky.js"></script>
  <!-- Uncomment below if you want to use dynamic Google Maps -->
  <!-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD8HeI8o-c1NppZA-92oYlXakhDPYR7XMY"></script> -->
	<script src="js/resume.min.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>

</body>
</html>