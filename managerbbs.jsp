<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="submit.SubmitDAO" %>
<%@ page import="submit.Submit" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>게시판</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!--	아이콘 -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- 구글폰트 -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800|Montserrat:300,400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Dokdo|Noto+Sans+JP|Gaegu|Gugi|Hi+Melody" rel="stylesheet">
  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.css" rel="stylesheet">

  <!-- Libraries CSS 파일 -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="lib/magnific-popup/magnific-popup.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">

  <!--	CSS -->
  <link href="css/style.css" rel="stylesheet">

  
<style>
	a, a:hover {
	 color: #000000;
	 text-decoration:none;
	}
</style>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") !=null){
			userID = (String) session.getAttribute("userID");
		}
		int pageNumber = 1;
		if (request.getParameter("pageNumber") != null) {
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		}
	%>
	 <!--==========================
    Header
  ============================-->
  	
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
	<div class="container">
	 <!-- Page Heading -->
      <h1 class="my-4 wow fadeInUp"  data-wow-delay="0.3s" style="font-family: 'Gaegu', cursive;"><strong style="color:#6bbadb;">COWALLKER</strong>
        <small>Volunteering for community service</small>
      </h1>
		<div class="row">
			<table class="table table-striped" style="text-align:center; border: 1px solid #dddddd; font-family: 'Gaegu', cursive; font-size:18px;" >
				<thead>
					<tr>
						<th style="background-color: #6bbadb; text-align:center;">번호</th>
						<th style="background-color: #6bbadb; text-align:center;">신청작품</th>
						<th style="background-color: #6bbadb; text-align:center;">신청자</th>
						<th style="background-color: #6bbadb; text-align:center;">신청인원</th>
						<th style="background-color: #6bbadb; text-align:center;">신청일</th>
					</tr>
				</thead>
				<tbody>
					<%
						SubmitDAO submitDAO = new SubmitDAO();
						ArrayList<Submit> list = submitDAO.getList(pageNumber);
						
						for(int i = 0; i < list.size(); i++) {
					%>
				
					<tr>
						<td><%= list.get(i).getSubmitID() %></td>
						<td><a href="volunteerView.jsp?submitID=<%= list.get(i).getSubmitID() %>"><%= list.get(i).getSubmitTitle() %></a></td>
						<td><%= list.get(i).getUserID() %></td>
						<td><%= list.get(i).getUserNumber() %></td>
						<td><%= list.get(i).getSubmitDate().substring(0 , 11) + list.get(i).getSubmitDate().substring(11,13)+ "시" + list.get(i).getSubmitDate().substring(14, 16) + "분" %></td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
			<%
				if(pageNumber != 1){
			%>
				<a href="managerbbs.jsp?pageNumber=<%=pageNumber -1%>" class="btn btn-success btn-arrow-left" style="font-family: 'Gaegu', cursive;">이전</a>
			<%
				} if(submitDAO.nextPage(pageNumber + 1)){
			%>
				<a href="managerbbs.jsp?pageNumber=<%=pageNumber +1%>" class="btn btn-success btn-arrow-left" style="font-family: 'Gaegu', cursive;">다음</a>
			<%
				}
			%>
		</div>
	</div>
	
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
	<script src="js/resume.js"></script>

  <script src="js/main.js"></script>
</body>
</html>