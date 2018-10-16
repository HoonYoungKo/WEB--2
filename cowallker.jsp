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
        MENU ★
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
          <a class="nav-link js-scroll-trigger" href="gallery.jsp">Gallery</a>
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
              <li><a href="bbs.jsp">게시판</a></li>
              <li><a href="logoutAction.jsp">Logout</a></li>
            </ul>
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
    <section id="cowallker" class="wow fadeInUp">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 about-img">
            <img src="img/cowallker-intro.jpg" alt="paintingmanzz-_-">
          </div>

          <div class="col-lg-6 content">
            <h2>COWALLKER?</h2>
            <h3>Wall-painting , volunteering</h3>
			<!-- Noto+Sans+JP|Gaegu|Gugi|Hi+Melody -->
            <ul style="font-family: 'Gaegu', cursive; font-size:25px;">
              <li ><img src="img/list1.png"> <strong style="color:#6bbadb;">COWALLKER</strong>는 COWORK 와  WALL-PAINTING</li>
               <hr>
              <li><img src="img/list2.png">  의 합성어로 벽화 자원봉사 모집 커뮤니티입니다.</li>
               <hr>
              <li><img src="img/list3.png"> 벽화봉사에 대한 <strong style="color:#e5e282;">새로운 홍보</strong>와 커뮤니티를 통한</li>
               <hr>
              <li><img src="img/list4.png">  활성화에 목표를 두고 있습니다.</li>

            </ul>

          </div>
        <div class="wow fadeIn" data-wow-delay="0.5s">
        	 <img style="width:100%;" src="img/painting1.png" alt="yellow 페인뚜">
        </div>

        </div>




      </div>
    </section><!-- #cowallker -->






    <!--==========================
      Services Section
    ============================-->



    <section id="services">
      <div class="container">
        <div class="section-header">
          <h2>Services</h2>

        </div>

        <div class="row"  style="font-family: 'Gaegu', cursive; font-size:20px;" >

          <div class="col-lg-6" >
            <div class="box wow fadeInUp" data-wow-delay="0.5s">
              <div class="b_img"><img src="img/service/s1.png"></div>
              <h4 class="title">필요성</h4>
              <p class="description" >전문가들의 상업적 벽화 사이트가 <br>
            						  아닌 자원 벽화 봉사 커뮤니티가 <br>
            						  활성화 되어있지 않음.</p>
            </div>
          </div>

          <div class="col-lg-6">
            <div class="box wow fadeInUp" data-wow-delay="0.5s">
              <div class="b_img"><img src="img/service/s2.png"></div>
              <h4 class="title">어려운 접근성</h4>
              <p class="description">또한, 전문성이 필요하다는 인식이<br>
              						강하기 때문에 기존의 봉사자들 외 <br>
              						 <strong style="color:#e0b5b5; font-size:30px;">신규 유입</strong>이 좋지가 않은 편.</p>
            </div>
          </div>

          <div class="col-lg-6">
            <div class="box wow fadeInUp" data-wow-delay="0.7s">
               <div class="b_img"><img src="img/service/s4.png"></div>
              <h4 class="title">벽화를 이용한 홍보</h4>
              <p class="description">자원벽화봉사의 특성상 장기간 프로젝트<br>
              						 가 많고 벽화의 <strong style="color:#6bbadb; font-size:30px;">QR코드</strong>를 활용한 정보제공과<br>
              						 더불어 직접 봉사에 참여할수있는 기회를 제공할 수 있음.</p>
            </div>
          </div>

          <div class="col-lg-6">
            <div class="box wow fadeInUp" data-wow-delay="0.7s">
              <div class="b_img"><img src="img/service/s5.png"></div>
              <h4 class="title">정보제공</h4>
              <p class="description">커뮤니티를 통한 <strong style="color:#e5e282; font-size:30px;">게시판 활용</strong><br>
              						을 통해 회원들간의 정보제공 및 <br>
              						봉사신청을 유용하게 함.</p>
            </div>
          </div>

          <div class="col-lg-6">
            <div class="box wow fadeInUp" data-wow-delay="1s">
               <div class="b_img"><img src="img/service/s8.png"></div>
              <h4 class="title">기존 단체들과의 협력</h4>
              <p class="description">기존의 자원봉사단체들은 각각의 프로젝트를<br>
              						 카페를 통해 작게 홍보하거나 모집<br>
              						<strong style="color:#9bcc9f; font-size:30px;">하나의 사이트</strong>를 통해 효율적인 홍보효과.</p>
            </div>
          </div>

          <div class="col-lg-6">
            <div class="box wow fadeInUp" data-wow-delay="1s">
               <div class="b_img"><img src="img/service/s3.png"></div>
              <h4 class="title">완성</h4>
              <p class="description">기존의 비효율적인 시스템보다<br>
              						더욱 편리하고 효율적인 벽화자원봉사<br>
              						시스템 구축.</p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- #services -->
    
    <div class="wow fadeIn" data-wow-delay="0.8s">
        	 <img style="width:100%;" src="img/painting3.png" alt="pink 페인뚜">
        </div>

    <!--==========================
      piece Section
    ============================-->
    <section id="piece" class="wow fadeInUp">
      <div class="container">
        <div class="section-header">
          <h2>Our piece</h2>
          <p style="font-family: 'Gaegu', cursive;">작업한 작품들</p>
        </div>
      </div>

      <div class="container-fluid">
        <div class="row no-gutters">

          <div class="col-lg-3 col-md-4">
            <div class="piece-item wow fadeInUp">
              <a href="img/piece/1.jpg" class="piece-popup">
                <img src="img/piece/1.jpg" alt="">
	              <div class="piece-overlay">
	                <div class="piece-info"><h2 class="wow fadeInUp">고척동 함크카페</h2></div>
	              </div>
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="piece-item wow fadeInUp">
              <a href="img/piece/2.jpg" class="piece-popup">
                <img src="img/piece/2.jpg" alt="">
                <div class="piece-overlay">
                  <div class="piece-info"><h2 class="wow fadeInUp">동작구 마을벽화</h2></div>
                </div>
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="piece-item wow fadeInUp">
              <a href="img/piece/3.jpg" class="piece-popup">
                <img src="img/piece/3.jpg" alt="">
                <div class="piece-overlay">
                  <div class="piece-info"><h2 class="wow fadeInUp">마리지 벽화마을</h2></div>
                </div>
              </a>
            </div>
          </div>


          <div class="col-lg-3 col-md-4">
            <div class="piece-item wow fadeInUp">
              <a href="img/piece/4.jpg" class="piece-popup">
                <img src="img/piece/4.jpg" alt="">
                <div class="piece-overlay">
                  <div class="piece-info"><h2 class="wow fadeInUp">목동 청소년수련관</h2></div>
                </div>
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="piece-item wow fadeInUp">
              <a href="img/piece/5.jpg" class="piece-popup">
                <img src="img/piece/5.jpg" alt="">
                <div class="piece-overlay">
                  <div class="piece-info"><h2 class="wow fadeInUp">성산초병설유치원</h2></div>
                </div>
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="piece-item wow fadeInUp">
              <a href="img/piece/6.jpg" class="piece-popup">
                <img src="img/piece/6.jpg" alt="">
                <div class="piece-overlay">
                  <div class="piece-info"><h2 class="wow fadeInUp">장승배기 별담마을1</h2></div>
                </div>
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="piece-item wow fadeInUp">
              <a href="img/piece/7.jpg" class="piece-popup">
                <img src="img/piece/7.jpg" alt="">
                <div class="piece-overlay">
                  <div class="piece-info"><h2 class="wow fadeInUp">장승배기 별담마을2</h2></div>
                </div>
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="piece-item wow fadeInUp">
              <a href="img/piece/8.jpg" class="piece-popup">
                <img src="img/piece/8.jpg" alt="">
                <div class="piece-overlay">
                  <div class="piece-info"><h2 class="wow fadeInUp">장승배기 별담마을3</h2></div>
                </div>
              </a>
            </div>
          </div>

        </div>

      </div>
    </section><!-- #piece -->
	  <div class="wow fadeIn" data-wow-delay="0.8s">
        	 <img style="width:100%;" src="img/painting2.png" alt="sky 페인뚜">
        </div>

    <!--==========================
      Our Team Section
    ============================-->
    <section id="team" class="wow fadeInUp">
      <div class="container">
        <div class="section-header">
          <h2>COOPERAOR</h2>
        </div>
        <div class="row">
          <div class="col-lg-3 col-md-6">
            <div class="member">
              <div class="pic"><img src="img/cooperator/네오맨.jpg" alt="네오맨"></div>
              <div class="details">
                <h4>네오맨 벽화봉사단</h4>
                <span>NeoMan</span>
                <div class="social">
              	 <a href="https://cafe.naver.com/neoman">네이버 카페</a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="member">
              <div class="pic"><img src="img/cooperator/더그림.jpg" alt="더그림"></div>
              <div class="details">
                <h4>더 그림</h4>
                <span>The Greem</span>
                <div class="social">
            	  <a href="https://cafe.naver.com/woomiart">네이버 카페</a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="member">
              <div class="pic"><img src="img/cooperator/드림인공존.jpg" alt="드림인공존"></div>
              <div class="details">
                <h4>드림 인 공존</h4>
                <span>Dream in Gzone</span>
                <div class="social">
                  <a href="https://cafe.naver.com/welfarenews">네이버 카페</a>
 
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="member">
              <div class="pic"><img src="img/cooperator/스마일.jpg" alt="스마일"></div>
              <div class="details">
                <h4>스마일 자원봉사단</h4>
                <span>COUNTRY SMILE</span>
                <div class="social">
                  <a href="https://cafe.naver.com/countrysmile?n_media=27758&n_query=%EB%B2%BD%ED%99%94%EB%B4%89%EC%82%AC&n_rank=2&n_ad_group=grp-m001-01-000001363749460&n_ad=nad-a001-01-000000029480544&n_keyword_id=nkw-m001-01-000001363749463&n_keyword=%EB%B2%BD%ED%99%94%EB%B4%89%EC%82%AC&n_campaign_type=1">네이버 카페</a>
                 
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
    </section><!-- #team -->

	

  </div>
	<div style="width:100%; margin-top:100px;"></div> <!-- 공간이 필요해ㅐㅐㅐㅐ -->
  <!--==========================
    Footer
  ============================-->
  <footer id="footer">
    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>COWALLKER</strong>
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
