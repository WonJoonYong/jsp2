<%@page import="board.dao.FreeboardDao"%>
<%@page import="board.vo.Freeboard"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	request.setCharacterEncoding("UTF-8");

	String subject = request.getParameter("subject");
	String writer = request.getParameter("writer");
	String password = request.getParameter("password");
	String content = request.getParameter("content");
	String ip = request.getParameter("ip");
	
	FreeboardDao freedao = FreeboardDao.getInstance();
	
	Freeboard bean 
	//= new Freeboard(0,"김떙땡","1212","글쓰기테스트","잘되나요?",0,null,null,0);
	= new Freeboard(0,writer,password,subject,content,0,null,ip,0);
	
	
	freedao.insert(bean);
	response.sendRedirect("listAction.jsp");
%>