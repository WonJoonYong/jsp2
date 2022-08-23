<%@page import="board.vo.Comment"%>
<%@page import="java.util.List"%>
<%@page import="board.dao.CommentDao"%>
<%@page import="board.dao.FreeboardDao"%>
<%@page import="board.vo.Freeboard"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	
	int idx = Integer.parseInt(request.getParameter("idx"));
	// 글 상세보기를 클릭한 페이지 번호를 파라미터로 가져오는 이유: 글 상세보기에서 다시 글목록으로 돌아갈 때를 위해서.
	// 보고 있던 글 목록 페이지로 돌아가기
	int pageNo = Integer.parseInt(request.getParameter("page"));
	request.setAttribute("page", pageNo);
	FreeboardDao dao = FreeboardDao.getInstance();
	dao.readcountUp(idx);
	Freeboard bean = dao.getDetail(idx);
	
	request.setAttribute("bean", bean);
		
	
	// 메인글 idx의 댓글 목록을 attribute로 저장(선처리: 댓글 개수 update)
	CommentDao cmtdao = CommentDao.getInstance();
	cmtdao.updateCmtCount(idx); // idx 값이 comment 테이블에서는 mref 값.
	List<Comment> cmtlist = cmtdao.getComments(idx);
	request.setAttribute("cmtlist", cmtlist);

	
	pageContext.forward("detailView.jsp"); // 화면 페이지로 attribute와 함께 요청 전달
	
	
	
	
	
	
	
	
	
%>