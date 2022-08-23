<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="board.dao.FreeboardDao"%>
<%@page import="board.vo.Freeboard"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int idx = Integer.parseInt(request.getParameter("idx"));
	String pageNo = request.getParameter("page");
	String password = request.getParameter("password");
	
	FreeboardDao dao = FreeboardDao.getInstance();
	Map<String,Object> map = new HashMap<>();
	map.put("idx", idx);
	map.put("password", password);
	int result = dao.delete(map);
	String message;	String href;
	if(result == 1){ //글 비밀번ㅇ호 일치 : 삭제 완료 ->  글 목록으로.
		message = "글 삭제.";
		href = "listAction.jsp?page="+pageNo;
	}else{	//글 비밀번호 불일치 : 삭제 불가능. -> 글 상세보기로 이동.
		message = "글 삭제 불가능 (비밀번호 오류).";
		href = "detailAction.jsp?idx="+idx+ "&page=" + pageNo;
	}
	
	out.print("<script>");
	out.print("alert('"+message+"')");
	out.print("location.href='"+href+";");
	out.print("</script>");
%>