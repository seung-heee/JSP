<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import ="java.sql.*" %>

<%
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        String url = "jdbc:mysql://localhost:3306/kyobo_20200977?characterEncoding=utf8";
        String user ="root";
        String password= "123123";
        
        Class.forName("com.mysql.jdbc.Driver"); // 드라이버 로딩
        conn = DriverManager.getConnection(url, user, password); // 연결
    } catch (SQLException ex) { //예외 설정
        out.println("데이터베이스 연결이 실패되었습니다.<br>");
        out.println("SQLException: " + ex.getMessage());
    }
%>