<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Cowallker</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- 아이콘 -->
  <link href="img/favicon.png" rel="icon">

  <!-- 구글폰트 -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800|Montserrat:300,400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Dokdo|Noto+Sans+JP|Gaegu|Gugi|Hi+Melody" rel="stylesheet">
  <!-- 부트스트랩 CSS -->
  <link href="lib/bootstrap/css/bootstrap.css" rel="stylesheet">

  <!-- Library CSS 파일 -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="lib/magnific-popup/magnific-popup.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">

  <!-- css -->
  <link href="css/style.css" rel="stylesheet">
	<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
	<script type="text/javascript">
      function initialize() {
        var mapLocation = new google.maps.LatLng('37.503017', '126.937651'); // 지도에서 가운데로 위치할 위도와 경도
        var markLocation = new google.maps.LatLng('37.503017', '126.937651'); // 마커가 위치할 위도와 경도
      
        var mapOptions = {
          center: mapLocation, // 지도에서 가운데로 위치할 위도와 경도(변수)
          zoom: 17, // 지도 zoom단계
          mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById("map-canvas"), // id: map-canvas, body에 있는 div태그의 id와 같아야 함
            mapOptions);
         
        var size_x = 60; // 마커로 사용할 이미지의 가로 크기
        var size_y = 60; // 마커로 사용할 이미지의 세로 크기
         
        // 마커로 사용할 이미지 주소
        var image = new google.maps.MarkerImage( 'http://www.larva.re.kr/home/img/boximage3.png',
                            new google.maps.Size(size_x, size_y),
                            '',
                            '',
                            new google.maps.Size(size_x, size_y));
         
        var marker;
        marker = new google.maps.Marker({
               position: markLocation, // 마커가 위치할 위도와 경도(변수)
               map: map,
               icon: image, // 마커로 사용할 이미지(변수)
//             info: '말풍선 안에 들어갈 내용',
               title: '별담~' // 마커에 마우스 포인트를 갖다댔을 때 뜨는 타이틀
        });
         
        var content = "장승배기역 별담마을! "; // 말풍선 안에 들어갈 내용
         
        // 마커를 클릭했을 때의 이벤트. 말풍선 뿅~
        var infowindow = new google.maps.InfoWindow({ content: content});
 
        google.maps.event.addListener(marker, "click", function() {
            infowindow.open(map,marker);
        });
         
 
         
      }
      google.maps.event.addDomListener(window, 'load', initialize);
</script>

</head>

<body id="body">



  <!-- 사이드  네비게이션 -->
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



  <div id="main">


    <!--==========================
      cowallker Section
    ============================-->
  
      <div class="container">
      	<!-- Cowallker gallery 헤더-->
     	 <h1 class="my-4 wow fadeInUp" data-wow-delay="0.5s"style="font-family: 'Gaegu', cursive;"><strong style="color:#6bbadb;">COWALLKER</strong>
        <small>gallery-inform-장승배기역 별담마을</small>
      </h1>
        <div class="row">
          <div class="col-lg-6 about-img">
             <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="border:3px solid #6bbadb;">
			        <ol class="carousel-indicators">
			          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
			          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			          <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
			          <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
			        </ol>
			        <div class="carousel-inner" role="listbox">
			          <div class="carousel-item active" style="background-image: url('img/gallery/gall1/3.jpg')"></div>
			          <div class="carousel-item" style="background-image: url('img/gallery/gall1/2.jpg')"></div>
			          <div class="carousel-item" style="background-image: url('img/gallery/gall1/1.jpg')"></div>
			          <div class="carousel-item" style="background-image: url('img/gallery/gall1/4.jpg')"></div>
			          <div class="carousel-item" style="background-image: url('img/gallery/gall1/5.jpg')"></div>
			        </div>
			        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
			          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			          <span class="sr-only">Previous</span>
			        </a>
			        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
			          <span class="carousel-control-next-icon" aria-hidden="true"></span>
			          <span class="sr-only">Next</span>
			        </a>
			 </div>
			<div>
				<br><h3 style="font-family: 'Gaegu', cursive; color:#4f829b;"><b>지도!</b></h3>
			</div>
			<div id="map-canvas" style="width: 100%; height: 300px; border:3px solid #6bbadb;"></div><br><br>
			</div>
          <div class="col-lg-6 content">
            <h2 style="font-family: 'Gaegu', cursive; color:#4f829b; font-weight:bold;">장승배기 별담마을</h2>
            <h3></h3>
			<table id="inform_table" style="font-family: 'Gaegu', cursive;">
				
				<tbody>
					<tr>
						<td>위치</td>
						<td>서울시 동작구 상도동 184-176번지 ~ 184-2번지</td>
					</tr>
					<tr>
						<td>이용시간</td>
						<td>상시 <br>※ 단, 주거 지역이니 21:00 이후는 방문 자제</td>
					</tr>
					<tr>
						<td>쉬는날</td>
						<td>연중무휴</td>
					</tr>
					<tr>
						<td>홈페이지</td>
						<td>X</td>
					</tr>
					<tr>
						<td>체험안내</td>
						<td>[장승배기역 별담마을] <br>
								Dream In Gzone<br>
								 월 1회 벽화 자원봉사 모집 
								
					</tr>
					<tr>
						<td>상세정보</td>
						<td>
						<p>* 장승배기역, 별들이 속삭이는 마을 *<br>
						별담마을은 '장승배기로 번길'에만 있다.<br>
						 만약 2번출구 방향에서부터 걷고 싶다면 반대로 이동하면 된다.<br>
						 2016년 이후 드림인공존이란 자원벽화봉사단체와<br>
						  자원봉사자들의 꾸준한 지원으로 낡은 골목길을<br>
						  하나씩 채워나가 곳곳에 앙증맞고 화사한 벽화가 그려지면서  <br>
						  동네는 활기를 되찾았다.<br>
						 벽화는 장승배기로 9번길 60번지부터 시작이 되며,<br>
						 동화를 주제로 한 아기자기한 벽화들을 여럿 구경할 수 있다. <br>
						</p>

						
						</td>
					</tr>
				</tbody>
				
				
			</table><hr>
			<a class="btn btn-primary" href="gallery.jsp">목록</a> <a class="btn btn-primary2" href="volunteerSubmit.jsp">신청하기</a>
          </div>

        </div>




      </div>
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
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>
