<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Gallery</title>
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
  <link href="lib/bootstrap/css/bootstrap.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="lib/magnific-popup/magnific-popup.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">

  
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
    <a class="navbar-brand js-scroll-trigger" href="intro.jsp">
      <span class="d-block d-lg-none">COWALLKER</span>
      <span class="d-none d-lg-block" style="font-family: 'Gaegu', cursive;">
        MENU ★
      </span>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav" style="font-family: 'Gaegu', cursive;">
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="cowallker.jsp#cowallker">COWALLKER?</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="cowallker.jsp#services">SERVICES</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="cowallker.jsp#piece">PIECE</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="cowallker.jsp#team">COOPERATOR</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="gallery.jsp">GALLERY</a>
        </li>
         <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="bbs.jsp">Board</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="chatindex.jsp">Live chat</a>
        </li>
         <%
				if(userID == null){
			%>
          <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="login.jsp">Log in</a>
        </li>
         <%
				} else if(userID.equals("cowall")){
		%>
		<li class="nav-item">
          	<a class="nav-link js-scroll-trigger" href="managerbbs.jsp">ADM Page</a>
       	 </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="logoutAction.jsp">Log Out</a>
        </li>
        <%
				} else {
			%>
			  <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="logoutAction.jsp">Log Out</a>
        </li>
        <%
				}
			%>
      </ul>
    </div>
  </nav>
    <!-- 갤러리 메인 -->
    <div class="container" style="font-family: 'Gaegu', cursive;">

      <!-- Cowallker gallery 헤더-->
      <h1 class="my-4 wow fadeInUp" data-wow-delay="0.5s"style="font-family: 'Gaegu', cursive;"><strong style="color:#6bbadb;">COWALLKER</strong>
        <small>gallery</small>
      </h1>
		
      <!-- item-1:고소동 벽화마을 -->
      <div class="row">
        <div class="col-md-7">
          <section id="gallery">
		    <div id="gallery-carousel" class="owl-carousel" >
		      <div class="item" style="background-image: url('img/gallery/gall5/1.JPG');"></div>
		      <div class="item" style="background-image: url('img/gallery/gall5/2.JPG');"></div>
		      <div class="item" style="background-image: url('img/gallery/gall5/3.JPG');"></div>
		      <div class="item" style="background-image: url('img/gallery/gall5/4.JPG');"></div>
		      <div class="item" style="background-image: url('img/gallery/gall5/5.JPG');"></div>
		    </div>
  		</section>
        </div>
        <div class="col-md-5">
          <h3 style="font-family: 'Gaegu', cursive;">천사 벽화마을</h3>
          <p>여수시 고소동 주택가 담벼락에 벽화를 그러넣어 생동감<br><br>
          	 있고 환한 이미지를 주고  보는이로 하여금 발길이 절로 <br><br>
          	 멈춰 그림의 상념속으로 빠져들게 한다. <br><br>
          	 대다수 여수시민들도 모르고 있는 따끗따끗한 관광지이다.


          	<br><br>전라남도 여수시 고소동 268</p>
          <a class="btn btn-primary" href="inform5.jsp">보러가기</a><a class="btn btn-primary2" href="volunteerSubmit5.jsp">신청하기</a>
        </div>
      </div>
   

      <hr>

      <!-- item-2:마비정 -->
      <div class="row">
        <div class="col-md-7">
          <section id="gallery2">
		    <div id="gallery2-carousel" class="owl-carousel" >
		      <div class="item" style="background-image: url('img/gallery/gall6/1.JPG');"></div>
		      <div class="item" style="background-image: url('img/gallery/gall6/2.JPG');"></div>
		      <div class="item" style="background-image: url('img/gallery/gall6/3.JPG');"></div>
		      <div class="item" style="background-image: url('img/gallery/gall6/4.JPG');"></div>
		      <div class="item" style="background-image: url('img/gallery/gall6/5.JPG');"></div>
		    </div>
  		</section>
        </div>
        <div class="col-md-5">
          <h3 style="font-family: 'Gaegu', cursive;">마비정 벽화마을</h3>
          <p>마을 전체가 60~70년대의 정겨운 농촌의 풍경을 토담과<br><br> 벽담을 활용하여 벽화로 꾸며져 있는 벽화마을
          		<br><br> 대구광역시 달성군 화원읍 본리리</p>
          <a class="btn btn-primary" href="inform6.jsp">보러가기</a><a class="btn btn-primary2" href="volunteerSubmit6.jsp">신청하기</a>
        </div>
      </div>

      <hr>

      <!-- item-3:준비중 -->
      <div class="row">
        <div class="col-md-7">
          <section id="gallery3">
		    <div id="gallery3-carousel" class="owl-carousel" >
		      <div class="item" style="background-image: url('img/gallery/ready.jpg');"></div>
		     
		    </div>
  		</section>
        </div>
        <div class="col-md-5">
          <h3 style="font-family: 'Gaegu', cursive;">준비중입니다.</h3>
          
          <a class="btn btn-primary" href="#">보러가기</a><a class="btn btn-primary2" href="#">신청하기</a>
        </div>
      </div>

      <hr>

     <!-- item-4:준비중 -->
      <div class="row">
        <div class="col-md-7">
          <section id="gallery4">
		    <div id="gallery4-carousel" class="owl-carousel" >
		      <div class="item" style="background-image: url('img/gallery/ready.jpg');"></div>
		     
		    </div>
  		</section>
        </div>
        <div class="col-md-5">
          <h3 style="font-family: 'Gaegu', cursive;">준비중입니다.</h3>
          
          <a class="btn btn-primary" href="#">보러가기</a><a class="btn btn-primary2" href="#">신청하기</a>
        </div>
      </div>

      <hr>
		
      <!-- Pagination -->
      <ul class="pagination justify-content-center">
        <li class="page-item">
          <a class="page-link" href="gallery.jsp" aria-label="Previous">
            <span aria-hidden="true">&laquo;</span>
            <span class="sr-only">Previous</span>
          </a>
        </li>
        <li class="page-item">
          <a class="page-link" href="gallery.jsp">1</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="gallery2.jsp" style="font-weight:bold; color:#e5e282;">2</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="gallery3.jsp">3</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="gallery3.jsp" aria-label="Next">
            <span aria-hidden="true">&raquo;</span>
            <span class="sr-only">Next</span>
          </a>
        </li>
      </ul>

    </div>
    

  <!--==========================
    Footer
  ============================-->
  <footer id="footer">
    <div class="container">
      <div class="copyright">
        <strong>COWALLKER</strong>
      </div>
      <div class="credits">
        Designed by Hoon Young Ko
        E-mail : dongmi27@naver.com
      </div>
    </div>
  </footer><!-- #footer -->

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
	<script src="js/resume.js"></script>
  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>
</body>
</html>
