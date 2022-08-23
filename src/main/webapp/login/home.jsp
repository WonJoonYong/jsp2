<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>
<h3>메인 main</h3>
<hr>
<div>로그인 했을까요? ${user != null }</div>
<!-- "user" 라는 이름의 애트리부트 가져오기 -->

<c:if test = "${user != null }">
	<h4><c:out value = "${user.name }"/> 님 환영합니다.</h4>
	<a href = "logout.jsp">로그아웃</a>
</c:if>

	<c:if test = "${user ==null }"></c:if>

<a href ="loginForm.jsp">로그인</a>
</body>
</html>