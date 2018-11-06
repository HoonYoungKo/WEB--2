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
        var mapLocation = new google.maps.LatLng('35.778985', '128.541849'); // 지도에서 가운데로 위치할 위도와 경도
        var markLocation = new google.maps.LatLng('35.778985', '128.541849'); // 마커가 위치할 위도와 경도
       


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
               title: '마비정~' // 마커에 마우스 포인트를 갖다댔을 때 뜨는 타이틀
        });
         
        var content = "마비정 벽화마을! <br/> 향토마을 컨셉의 벽화마을."; // 말풍선 안에 들어갈 내용
         
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
        <small>gallery-inform-마비정 벽화마을</small>
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
			          <div class="carousel-item active" style="background-image: url('img/gallery/gall6/4.JPG')"></div>
			          <div class="carousel-item" style="background-image: url('img/gallery/gall6/2.JPG')"></div>
			          <div class="carousel-item" style="background-image: url('img/gallery/gall6/1.JPG')"></div>
			          <div class="carousel-item" style="background-image: url('img/gallery/gall6/3.JPG')"></div>
			          <div class="carousel-item" style="background-image: url('img/gallery/gall6/5.JPG')"></div>
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
            <h2 style="font-family: 'Gaegu', cursive; color:#4f829b; font-weight:bold;">마비정 벽화마을</h2>
            <h3></h3>
			<table id="inform_table" style="font-family: 'Gaegu', cursive;">
				
				<tbody>
					<tr>
						<td>위치</td>
						<td>대구광역시 달성군 화원읍 마비정길 259(화원읍)</td>
					</tr>
					<tr>
						<td>이용시간</td>
						<td>상시 </td>
					</tr>
					<tr>
						<td>쉬는날</td>
						<td>연중무휴<br>농촌체험장은 매주 월요일 휴무</td>
					</tr>
					<tr>
						<td>홈페이지</td>
						<td><a href="http://cafe.daum.net/mabijeong" target="_blank">마비정 벽화마을</a><br><br>
							<a href="http://dalseong.daegu.kr/new/culture" target="_blank">달성군 문화관광</a>
						</td>
					</tr>
					<tr>
						<td>문의 및 안내</td>
						<td><p style="color:#e0b5b5; font-weight:bold;">농촌체험 전시장 053-633-2222<br><br>
							단체관광 해설예약 053-633-6407<br><br>
							대구 달성군 문화체육과 053-668-2174</p></td>
					</tr>
					<tr>
						<td>상세정보</td>
						<td>
						<p>* 향토마을, 마비정 벽화마을 *<br>
						말(馬)의 슬픈 전설을 간직한 대구 달성군 화원읍 본리2리<br>
						 마비정(馬飛亭) 마을이 최근 녹색 농촌체험마을사업을 통한 <br>
						 '벽화마을'로 탈바꿈해 대구는 물론 전국적인 관광명소로<br>
						  부각되고 있다. 또한, SBS 인기 예능프로그램인 런닝맨 <br>
						  촬영장소로 알려져 많은 내·외국인의 관광객들이 찾고 있다.<br>
						마을 전체가 60~70년대의 정겨운 농촌의 풍경을 토담과 벽담을<br>
						 활용하여 벽화로 꾸며져 있으며, 국내 유일의 연리목+연리지 <br>
						 사랑나무와 국내 최고령 옻나무, 대나무 터널길, 이팝나무 터널길 <br>
						 등 자연과 호흡하며 벽화를 감상할 수 있다.



						</p>

						
						</td>
					</tr>
				</tbody>
				
				
			</table><hr>
			<a class="btn btn-primary" href="gallery2.jsp">목록</a> <a class="btn btn-primary2" href="volunteerSubmit6.jsp">신청하기</a>
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
