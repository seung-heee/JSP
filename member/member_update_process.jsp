<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.time.LocalDate" %>
<%@ include file="../db/db_conn.jsp" %>

<%
    // 앞에서 id 받아오기
    request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String birth = request.getParameter("birth");
	String mail = request.getParameter("mail");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
    // 등록한 당일의 날짜를 구함. 등록일
    LocalDate _regist_day = LocalDate.now();
    // 등록일의 데이터 타입을 문자열로 변경함.
    String  regist_day = String.valueOf(_regist_day);

    out.println(id + password + name + gender);

//     DB 연동
//     수정이 id값이 바뀌지 않으면 됨. 근데 id값이 바뀌면 안된다. 왜?
    String sql = "UPDATE member SET id=?, name=?, password=?, birth=?, gender=?, mail=?, phone=?, address=?, regist_day=? WHERE id=?";
    pstmt = conn.prepareStatement(sql); // 쿼리문 몸체만 넣기

    pstmt.setString(1, id);
    pstmt.setString(2, name); // 각 필드 설정 - ? 순서대로
    pstmt.setString(3, password);
    pstmt.setString(4, birth);
    pstmt.setString(5, gender);
    pstmt.setString(6, mail);
    pstmt.setString(7, phone);
    pstmt.setString(8, address);
    pstmt.setObject(9, regist_day);
    pstmt.setString(10, id);

    pstmt.executeUpdate(); // 최종 SQL 쿼리 실행

    if (pstmt != null)
        pstmt.close();
    if (conn != null)
        conn.close();

    response.sendRedirect("member_view.jsp?edit=m_update");
%>
