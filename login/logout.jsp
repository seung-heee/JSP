<%@ page contentType = "text/html;charset=utf-8" %>
<!-- 로그아웃 페이지를 통해 세션이 삭제됨 -->
<%
	session.invalidate(); //현재 세션 객체 전체 삭제
	response.sendRedirect("../admin/product_add_ad.jsp");
%>