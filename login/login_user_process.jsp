<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp" %>

<%
    // 1. 로그인 정보 받아오기
    request.setCharacterEncoding("UTF-8");
	String j_username = request.getParameter("j_username");
	String j_password = request.getParameter("j_password");

    //2. db 연동 후 select로 조회
    String sql = "select * from member where id = ?"; // select문을 이용해 전체 열 조회
	pstmt = conn.prepareStatement(sql); // 객체 생성
    rs = pstmt.getString(1, id);

    if(rs.executeQuery()) {
        out.println("출력좀 되라 ㅠㅠ"); //로그인성공
    }

    while (rs.next()) { //열을 하나씩 보는 동안에
        if(true) { // db안에 입력정보값이 들어있다면
            out.println("출력좀 되라 ㅠㅠ"); //로그인성공
            response.sendRedirect("../index.jsp");
            
        } else {
             out.println("일단 뭔가가 잘못됐어");
        }
        //out.println("if문을 거치지 않은 test : " + test + "<br>");
        // productId와 test의 값이 같다면 ~
        // if(productId.equals(test)) {
        //     //out.println("출력좀 되라 ㅠㅠ");
        //     //out.println("if문 조건에 만족하는 test 값 : " + test + "!!!!!!!!!!!! <br>");
            
        //     String sql1 = "delete from product where p_id = ?";
        //     pstmt = conn.prepareStatement(sql1);
        //     pstmt.setString(1, productId);
            
        //     pstmt.executeUpdate(); 
        
    }
    //response.sendRedirect("product_delete.jsp?edit=delete");
%>

