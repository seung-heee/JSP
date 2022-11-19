<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp" %>

<%
    String productId = request.getParameter("id");
    //out.println("받아온 아이디 값 productId : " + productId + "<br>");
    String sql = "select * from product";
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
    while (rs.next()) {
        String test = rs.getString("p_id");
        //out.println("if문을 거치지 않은 test : " + test + "<br>");
        // productId와 test의 값이 같다면 ~
        if(productId.equals(test)) {
            //out.println("출력좀 되라 ㅠㅠ");
            //out.println("if문 조건에 만족하는 test 값 : " + test + "!!!!!!!!!!!! <br>");
            
            String sql1 = "delete from product where p_id = ?";
            pstmt = conn.prepareStatement(sql1);
            pstmt.setString(1, productId);
            
            pstmt.executeUpdate(); 
            
        }
    }
    response.sendRedirect("product_delete.jsp?edit=delete");
%>