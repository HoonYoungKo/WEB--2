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
		
      <!-- item-1:별담마을 -->
      <div class="row">
        <div class="col-md-7">
          <section id="gallery">
		    <div id="gallery-carousel" class="owl-carousel" >
		      <div class="item" style="background-image: url('img/gallery/gall1/1.jpg');"></div>
		      <div class="item" style="background-image: url('img/gallery/gall1/2.jpg');"></div>
		      <div class="item" style="background-image: url('img/gallery/gall1/3.jpg');"></div>
		      <div class="item" style="background-image: url('img/gallery/gall1/4.jpg');"></div>
		      <div class="item" style="background-image: url('img/gallery/gall1/5.jpg');"></div>
		    </div>
  		</section>
        </div>
        <div class="col-md-5">
          <h3 style="font-family: 'Gaegu', cursive;">별담 마을</h3>
          <p>동화를 주제로 2017년부터 자원봉사자들의 그림으로 채워나간 마을
          	<br><br>서울 상도2동 장승배기역 장승배기로 9번길</p>
          <a class="btn btn-primary" href="inform1.jsp">보러가기</a><a class="btn btn-primary2" href="volunteerSubmit.jsp">신청하기</a>
        </div>
      </div>
   

      <hr>

      <!-- item-2:자만 -->
      <div class="row">
        <div class="col-md-7">
          <section id="gallery2">
		    <div id="gallery2-carousel" class="owl-carousel" >
		      <div class="item" style="background-image: url('img/gallery/gall2/1.jpg');"></div>
		      <div class="item" style="background-image: url('img/gallery/gall2/2.jpg');"></div>
		      <div class="item" style="background-image: url('img/gallery/gall2/3.jpg');"></div>
		      <div class="item" style="background-image: url('img/gallery/gall2/4.jpg');"></div>
		      <div class="item" style="background-image: url('img/gallery/gall2/5.jpg');"></div>
		    </div>
  		</section>
        </div>
        <div class="col-md-5">
          <h3 style="font-family: 'Gaegu', cursive;">수암골 벽화마을</h3>
          <p>청주시의 대표적 벽화마을
          	<br><br>주변 카페촌들로 인해 볼거리가 많은곳	<br><br> 충북 청주시 상당구 수암목 1번지.</p>
          <a class="btn btn-primary" href="inform2.jsp">보러가기</a><a class="btn btn-primary2" href="volunteerSubmit2.jsp">신청하기</a>
        </div>
      </div>

      <hr>

      <!-- item-3:자만 벽화마을 -->
      <div class="row">
        <div class="col-md-7">
          <section id="gallery3">
		    <div id="gallery3-carousel" class="owl-carousel" >
		      <div class="item" style="background-image: url('img/gallery/gall3/1.jpg');"></div>
		      <div class="item" style="background-image: url('img/gallery/gall3/2.jpg');"></div>
		      <div class="item" style="background-image: url('img/gallery/gall3/3.jpg');"></div>
		      <div class="item" style="background-image: url('img/gallery/gall3/4.jpg');"></div>
		      <div class="item" style="background-image: url('img/gallery/gall3/5.jpg');"></div>
		    </div>
  		</section>
        </div>
        <div class="col-md-5">
          <h3 style="font-family: 'Gaegu', cursive;">자만 벽화마을</h3>
          <p>자만 벽화마을
          	<br><br>마을 주민들의 자발적인 참여로<br><br> 문화 예술 공동체 마을을 만든 곳.<br><br> 전북 전주시 완산구 교동 50-158.</p>
          <a class="btn btn-primary" href="inform3.jsp">보러가기</a><a class="btn btn-primary2" href="volunteerSubmit3.jsp">신청하기</a>
        </div>
      </div>

      <hr>

      <!-- item-4:이화 벽화마을 -->
     <div class="row">
        <div class="col-md-7">
          <section id="gallery4">
		    <div id="gallery4-carousel" class="owl-carousel" >
		      <div class="item" style="background-image: url('img/gallery/gall4/1.jpg');"></div>
		      <div class="item" style="background-image: url('img/gallery/gall4/2.jpg');"></div>
		      <div class="item" style="background-image: url('img/gallery/gall4/3.jpg');"></div>
		      <div class="item" style="background-image: url('img/gallery/gall4/4.jpg');"></div>
		      <div class="item" style="background-image: url('img/gallery/gall4/5.jpg');"></div>
		    </div>
  		</section>
        </div>
        <div class="col-md-5">
          <h3 style="font-family: 'Gaegu', cursive;">이화 벽화마을</h3>
          <p>2006년 9월부터 12월까지 약 3억 5천만 원의 예산으로 <br><br>이화동과 동숭동 일대에 주민과 예술인, <br><br>대학생과 자원봉사자의 참여로 벽화가 그려진 마을
          		<br><br> 서울 종로구 이화동 이화마을</p>
          <a class="btn btn-primary" href="inform4.jsp">보러가기</a><a class="btn btn-primary2" href="volunteerSubmit4.jsp">신청하기</a>
        </div>
      </div>

      <hr>
		
      <!-- Pagination -->
      <ul class="pagination justify-content-center">
        <li class="page-item">
          <a class="page-link" href="#" aria-label="Previous">
            <span aria-hidden="true">&laquo;</span>
            <span class="sr-only">Previous</span>
          </a>
        </li>
        <li class="page-item">
          <a class="page-link" href="gallery.jsp" style="font-weight:bold; color:#e5e282;">1</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="gallery2.jsp">2</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="gallery3.jsp">3</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="gallery2.jsp" aria-label="Next">
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
