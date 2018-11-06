<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="bbs.BbsDAO" %>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
  <title>게시판</title>
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
		int bbsID = 0;
		if (request.getParameter("bbsID") != null) {
			bbsID = Integer.parseInt(request.getParameter("bbsID"));
		}
		if (bbsID == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다..')");
			script.println("location.href = 'bbs.jsp'");
			script.println("</script>");
		}
		Bbs bbs = new BbsDAO().getBbs(bbsID);
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
	<div class="container">
	<!-- Page Heading -->
      <h1 class="my-4" style="font-family: 'Gaegu', cursive;"><strong style="color:#6bbadb;">COWALLKER</strong>
        <small>Board</small>
      </h1>
		<div class="row">
				<table class="table table-striped" style="text-align:center; border: 1px solid #dddddd; font-family: 'Gaegu', cursive; font-size:18px;">
					<thead>
						<tr>
							<th colspan="3" style="background-color: #6bbadb; text-align:center;">게시판 글보기</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td style="width:20%;">글 제목</td>
							<td colspan="2"><%=bbs.getBbsTitle() %></td>
						</tr>
						<tr>
							<td>작성자</td>
							<td colspan="2"><%=bbs.getUserID() %></td>
						</tr>
						<tr>
							<td>작성일자</td>
							<td colspan="2"><%=bbs.getBbsDate().substring(0 , 11) + bbs.getBbsDate().substring(11,13)+ "시" + bbs.getBbsDate().substring(14, 16) + "분" %></td>
						</tr>
						<tr>
							<td>내용</td>
							<td colspan="2" style="min-height:200px; text-align: left;"><%=bbs.getBbsContent().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></td>
						</tr>
					</tbody>
				</table>
				<a href="bbs.jsp" class="btn btn-primary" style="font-family: 'Gaegu', cursive; margin-right:10px;">목록</a>
				<%
					if(userID != null && userID.equals(bbs.getUserID())) {
				%>
					<a href="update.jsp?bbsID=<%= bbsID %>" class= "btn btn-primary" style="font-family: 'Gaegu', cursive; margin-right:10px;">수정</a>
					<a onclick="return confirm('정말로 삭제하시겠습니까?')" href="deleteAction.jsp?bbsID=<%= bbsID %>" class= "btn btn-primary" style="font-family: 'Gaegu', cursive;">삭제</a>
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
  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>
</body>
</html>