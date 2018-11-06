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
        var mapLocation = new google.maps.LatLng('34.738998', '127.741166'); // 지도에서 가운데로 위치할 위도와 경도
        var markLocation = new google.maps.LatLng('34.738998', '127.741166'); // 마커가 위치할 위도와 경도
       


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
               title: '천사~' // 마커에 마우스 포인트를 갖다댔을 때 뜨는 타이틀
        });
         
        var content = "고소동 천사 벽화마을! <br/>"; // 말풍선 안에 들어갈 내용
         
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
        <small>gallery-inform-고소동 천사 벽화마을</small>
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
			          <div class="carousel-item active" style="background-image: url('img/gallery/gall5/4.JPG')"></div>
			          <div class="carousel-item" style="background-image: url('img/gallery/gall5/2.JPG')"></div>
			          <div class="carousel-item" style="background-image: url('img/gallery/gall5/1.JPG')"></div>
			          <div class="carousel-item" style="background-image: url('img/gallery/gall5/3.JPG')"></div>
			          <div class="carousel-item" style="background-image: url('img/gallery/gall5/5.JPG')"></div>
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
            <h2 style="font-family: 'Gaegu', cursive; color:#4f829b; font-weight:bold;">고소동 천사 벽화마을</h2>
            <h3></h3>
			<table id="inform_table" style="font-family: 'Gaegu', cursive;">
				
				<tbody>
					<tr>
						<td>위치</td>
						<td>전라남도 여수시 고소동 268</td>
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
						<td><a href="http://www.ystour.kr/tourism/tour/tourMUserList.do?mode=detail&cur_page=1&m2=1&searchWord=&m3=14&others=DB&trSeqId=618" target="_blank">여수투어</a></td>
					</tr>
					<tr>
						<td>주변 볼거리</td>
						<td>좌수영대첩비(보물 571호)<br>
						타루비(보물 1288호)</td>
					</tr>
					<tr>
						<td>상세정보</td>
						<td>
						<p>* 숨겨진 따끈따근한 관광지, 고소동 천사 벽화마을 *<br>
						고소동 벽화마을은 여수에서 가장 오래된 자연부락으로,<br>
						언덕에 자리해 바다와 돌산대교, 거북선대교가 <br>
						한눈에 들어온다. 임진왜란 당시에는 충무공 이순신 장군이<br>
						 작전을 세우고 명령을 내리던 역사적인 곳이기도 하다. <br>
						 2012 여수엑스포를 계기로 여수시와 고소동 주민들이<br>
						  힘을 합쳐 담벼락에 벽화를 채우고 지리적 이점을 활용해<br>
						   관광명소화 했다. 진남관부터 고소동 언덕을 지나 여수해양공원에<br>
						    이르는 길이가 1004m라서 천사벽화골목이라고도 불린다. <br>
						    골목은 7개 구간으로 나누어 여수엑스포 주제인 ‘해양’에<br>
						     관련된 이야기를 비롯해 여수지역 역사와 문화, 풍경 그리고<br>
						      이순신 장군과 수군들에 관한 그림 등을 벽화에 담았다.<br>
						       전망 쉼터가 있으니 잠시 앉아 숨을 고르기 좋다. 마을 안에 <br>
						       자리한 충무공 대첩비각도 놓칠 수 없는 볼거리이다. 이곳에는 이순신<br>
						        장군의 전적을 기린 좌수영대첩비(통제이공 수군대첩비·보물 571호)와<br>
						         장군의 덕을 추모하는 타루비(보물 1288호)가 있다. 벽화골목이 끝나는 <br>
						         곳에는 여수해양공원이 있다. 여수 시민이 주말 나들이 장소로<br>
						          즐겨 찾는 이곳은 밤에 특히 아름답다.

						</p>

						
						</td>
					</tr>
				</tbody>
				
				
			</table><hr>
			<a class="btn btn-primary" href="gallery2.jsp">목록</a> <a class="btn btn-primary2" href="volunteerSubmit5.jsp">신청하기</a>
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
