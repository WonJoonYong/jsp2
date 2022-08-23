<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	
%>
<h3>EL 출력</h3>
String 애트리뷰트 : <c:out value = "${String }"/><br>
age 애트리뷰트 : <c:out value = "${age }"/> <br>
user 애트리뷰트  : <c:out value = "${user }"/><br>
user 애트리뷰트 age 프로퍼티: <c:out value = "${user }"/><br>
user 애트리뷰트 name 프로퍼티 : <c:out value = "${user }"/><br>
list 애트리뷰트: <c:out value = "${user }"/><br>
list 애트리뷰트의 get(0): <c:out value = "${list[0]}"/><br>
list 애트리뷰트의 get(1): <c:out value = "${list[1]}"/><br>
list 애트리뷰트의 get(2): <c:out value = "${list[2]}"/><br>
<!-- c:forEach는 배열 또는 리스트를 다룰때 items 속성 지정. -->
<ul>
<c:forEach var = "item" items = "${list }]"></c:forEach>
<li><c:out value = "${item }"/></li>
</ul>
</body>
</html>