<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import = "java.util.ArrayList" %> <!-- 자바 리스트 자료구조 연동 -->
<%@ page import = "dto.Product" %> <!-- 패키지 연동 -->
<%@ page import="dao.ProductRepository"%>
<%@ page import = "java.sql.*" %> <!-- 자바 sql 연동 -->


<%! String greeting = "교보문고에 오신 것을 환영합니다";
String tagline = "하단 페이지 : 확인"; %>

<div class="container">
    <div class="jumbotron">
        <div class="container">
            <h4 class="display-4">
                <%= greeting %>
            </h4>
        </div>
    </div>

    <div class="container">
        <div class="row" align="center">
            
            <%@ include file="db/db_conn.jsp" %>
            
            <%
                String sql = "select * from product"; //조회
                pstmt = conn.prepareStatement(sql); //연결 생성
                rs = pstmt.executeQuery(); //쿼리 실행
                while (rs.next()) { //결과 ResultSet 객체 반복
            %>
            <div class="col-md-4" style="margin-bottom:10px;">
                <div class="card bg-dark text-white">
                    <img src="image/product/<%= rs.getString("p_fileName") %>" class="card-img" alt="이미지" style="width:338;height:448;">
                    <div class="card-img-overlay">
                        <h5 class="card-title">Best Seller</h5>
                        <p class="card-text">출처 : 교보문고</p>
                    </div>
                </div>
                
                <h4 style="margin-top:15px; margin-bottom:5px"><b><%= rs.getString("p_name") %></b></h4>
                <p style="margin-bottom:5px;"><%= rs.getString("p_description") %></p>
                <p><%= rs.getString("p_unitPrice") %></p>
                <p>
                    <a href="product_detail.jsp?id=<%= rs.getString("p_id") %>" class="btn btn-secondary" role="button">상품 상세 정보 &raquo;</a>
                </p>
            </div>
            
            <%
                }
            // 반복문 끝난 이후 db 연결 종료
            if(rs != null) rs.close();
            if(pstmt != null) pstmt.close();
            if(conn != null) conn.close();
            %>
        </div>
        <hr>
    </div>

    <div class="card bg-dark text-white">
        <img src="image/top.jpg" class="card-img" alt="...">
        <div class="card-img-overlay">
            <h5 class="card-title">2023 다이어리</h5>
            <p class="card-text">득템찬스~</p>
        </div>
    </div>

    <div class="list-group">
        <a href="#" class="list-group-item list-group-action active" aria-currrent="true">BEST</a>
        <a href="#" class="list-group-item list-group-action" aria-currrent="true">인생</a>
        <a href="#" class="list-group-item list-group-action" aria-currrent="true">자기계발</a>
        <a href="#" class="list-group-item list-group-action" aria-currrent="true">경영</a>
        <a href="#" class="list-group-item list-group-action" aria-currrent="true">소설</a>
    </div>
</div>

<div class="container">
    <div class="text-center">
        <h3>
            <%=tagline%>
        </h3>
    </div><hr>
</div>