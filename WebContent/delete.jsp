<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
    
<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="com.javaex.vo.GuestbookVo" %>


<% /*
	//guestboodDao의 delete쓸거임	
	GuestbookDao guestbookDao = new GuestbookDao();
	
	//파라미터값가져오기, 삭제하고자하는 no, 입력한 패스워드 가져오기
	String num = request.getParameter("no");
	int no = Integer.parseInt(num);
	String upw = request.getParameter("password");
	
	//db의 패스워드 가져오기
	String realPw = guestbookDao.select(no).getPassword();
	
	
	//같으면 삭제
	if(upw.equals(realPw)){
	guestbookDao.delete2(no);
	response.sendRedirect("./addList.jsp");
	}else{
		response.sendRedirect("./addList.jsp");
	}
	*/


	//파라미터 형변환
	int no =  Integer.parseInt(request.getParameter("no"));
	String password = request.getParameter("password");
	
	//삭제
	new GuestbookDao().guestbookDelete(no, password);
	//GuestbookDao guestbookDao = new GuestbookDao();
	//guestbookDao.guestbookDelete(no, password);
	System.out.println("확인용"); 
	
	//리다이렉트
	response.sendRedirect("./addList.jsp"); 
%>	