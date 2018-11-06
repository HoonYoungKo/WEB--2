<%@page import="java.nio.file.attribute.UserPrincipalNotFoundException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="submit.SubmitDAO" %>

<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="submit" class="submit.Submit" scope="page" />

<jsp:setProperty name="submit" property="submitTitle"/>

<jsp:setProperty name="submit" property="userNumber"/>
<jsp:setProperty name="submit" property="submitPhone"/>
<jsp:setProperty name="submit" property="submitContent"/>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%	
		String userID = null;
		
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
			
		}
		
	
		if (userID == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 하세요.')");
			script.println("location.href = 'login.jsp'");
			script.println("</script>");
		}
		if (submit.getSubmitTitle() == null || submit.getUserNumber() == null || submit.getSubmitPhone() == null || submit.getSubmitContent() == null ){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.')");
		script.println("history.back()");
		script.println("</script>");
		} else {
			SubmitDAO submitDAO = new SubmitDAO();
		 	int result = submitDAO.submit(submit.getSubmitTitle(), userID, submit.getUserNumber() , submit.getSubmitPhone(), submit.getSubmitContent());
			if (result == -1) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('신청에 실패했습니다.')");
				script.println("history.back()");
				script.println("</script>");
			} 
			else {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('신청이 완료되었습니다.')");
				script.println("location.href='gallery.jsp'");
				script.println("</script>");
			}
		}
		
	%>
</body>
</html>