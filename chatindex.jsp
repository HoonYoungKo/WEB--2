<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="bbs.BbsDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <!--  주 css 파일 -->
  <link rel="stylesheet" href="css/bootstrap-dis.css">
  <link href="css/style.css" rel="stylesheet">
 
  <!-- 아이콘 -->
  <link href="img/favicon.png" rel="icon">

  <!-- 구글 폰트 -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800|Montserrat:300,400,700" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Dokdo|Noto+Sans+JP|Gaegu|Gugi|Hi+Melody" rel="stylesheet">
 
  <!-- Library css 파일 -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="lib/magnific-popup/magnific-popup.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <!-- 스크립트 -->
  <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
  <script src="js/bootstrap.js"></script>
<script type="text/javascript">
	var lastID = 0;
	function submitFunction() {
		var chatName = $('#chatName').val();
		var chatContent = $('#chatContent').val();
		$.ajax({
			type: "POST",
			url: "./chatSubmitServlet",
			data: {
				chatName: encodeURIComponent(chatName),
				chatContent: encodeURIComponent(chatContent)
			},
			success : function(result){
				if(result == 1){
					autoClosingAlert('#successMessage', 2000);
				} else if(result == 0) {
					autoClosingAlert('#dangerMessage', 2000);
				} else {
					autoClosingAlert('#warningMessage', 2000);
				}
			}
			
		});
		$('#chatContent').val('');
	}
	function autoClosingAlert(selector, delay){
		var alert = $(selector).alert();
		alert.show();
		window.setTimeout(function() {alert.hide()}, delay);
	}
	function chatListFunction(type){
		$.ajax({
			type: "POST",
			url: "./chatListServlet",
			data: {
				listType: type,
			},
			success : function(data) {
				if(data == "") return;
				var parsed = JSON.parse(data);
				var result = parsed.result;
				for(var i = 0; i < result.length; i++) {
					addChat(result[i][0].value, result[i][1].value, result[i][2].value);
				}
				lastID = Number(parsed.last);
				
			}
		});
	}
	function addChat(chatName, chatContent, chatTime) {
		$('#chatList').append('<div class="row">'+
				'<div class="col-lg-12">' +
				'<div class="media">' +
				'<a class="pull-left" href="#">' +
				'<img class="media-object img-circle" src="img/favicon.png" alt="">'+
				'</a>'+
				'<div class="media-body" style="color:black">'+
				'<h4 class="media-heading">'+
				chatName +
				'<span class="small pull-right">' +
				chatTime +
				'</span>' +
				'</h4>'+
				'<p>' +
				chatContent + 
				'</p>' +
				'</div>' +
				'</div>' +
				'</div>' +
				'</div>' +
				'<hr>');
		$('#chatList').scrollTop($('#chatList')[0].scrollHeight);
	}
	function getInfiniteChat(){
		setInterval(function() {
			chatListFunction(lastID);
		}, 1000);
	}		
		
</script>
<title>Chatting</title>
</head>
<body>

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

	 <!-- 채팅방 헤더 -->
    
	<div class="container" style="font-family: 'Gaegu', cursive;">
		<h1 class="wow fadeInUp" data-wow-delay="0.5s" style="font-family: 'Gaegu', cursive; margin: 50px auto"><strong style="color:#6bbadb; ">COWALLKER</strong>
        	<small>Chatting</small>
  		</h1>
		<div class="container bootstrap snippet">
			<div class="row">
				<div class="col-xs-12">
					<div class="portlet portlet-default" style="background-color:white;">
						<div class="portlet-heading">
							<div class="portlet-title">
								<h4>Cowallker Live</h4>
							</div>
							<div class="clearfix"></div>
							<div id="chat" class="panel-collapsse collapse in">
								<div id="chatList" class="portlet-body chat-widget" style="overflow-y:auto; width:auto; height:400px;">
								</div>
								<div class="portlet-footer">
										<% 
										if(userID==null){
										%>
											<div class="row">
												<div class="form-group col-xs-4">
													<input style="height:40px;" type="text" id="chatName" class="form-control" placeholder="이름" maxlength="8" >
												</div>
											</div>
										<%
										} else{
										%>
											<div class="row">
												<div class="form-group col-xs-4">
													<input style="height:40px;" type="text" id="chatName" class="form-control" readonly placeholder="이름" maxlength="8" value="<%=userID%>">
												</div>
											</div>
										<%
										}
										%>										
						
										
										<div class="row" style="height:90px;">
											<div class="form-group col-xs-10">
												<textarea style="height:80px;" id="chatContent" class="form-control" placeholder="메세지를 입력하세요." maxlength="100"></textarea>
											</div>
											<div class="form-grop col-xl-2">
												<button type="button" class="btn btn-default pull-right" onclick="submitFunction();">전송</button>
												<div class="clearfix"></div>
											</div>
										</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="alert alert-success" id="successMessage" style="display:none;">
			<strong>메세지 전송에 성공하였습니다.</strong>
		</div>
		<div class="alert alert-danger" id="dangerMessage" style="display:none;">
			<strong>이름과 내용을 모두 입력해주세요.</strong>
		</div>
		<div class="alert alert-warning" id="warningMessage" style="display:none;">
			<strong>DB오류가 발생했습니다.</strong>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function(){
			chatListFunction('ten');
			getInfiniteChat();
		});
	</script>
	
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
  <!-- ------- -->
  <script src="js/resume.js"></script>
  <script src="js/main.js"></script>
</body>
</html>