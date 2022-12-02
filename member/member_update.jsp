<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="example.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.time.LocalDate" %>
<%@ page buffer="1kb" autoFlush="true"%>

<html>
    <head>
    	<link rel ="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script type="text/javascript" src="../js/validation.js"></script>
        <title>회원정보수정</title>
    </head>
    
        <%@ include file="../db/db_conn.jsp"%>
    
    <body>
        <jsp:include page="../top_menu.jsp" />
        
        <%  
            String id = request.getParameter("id");
    
            String sql = "select * from member where id = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();
        	if (rs.next()) { 
        %>
        
        <div class="jumbotron">
			<div class="container">
			<h1 class="display-3">회원정보수정</h1>
			</div>
		</div>
        
		<div class="container">
			<form name="newProduct" action="member_update_process.jsp" class="form-horizontal" method="post">
                <div class="form-group row">
                    <label class="col-sm-2">아이디</label>
                    <div class="col-sm-3">
                        <input type="text" id="id" name="id" class="form-control" placeholder='<%=rs.getString("id")%>'>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-2">패스워드</label>
                    <div class="col-sm-3">
                        <input type="text" id="password" name="password" class="form-control" placeholder='<%=rs.getString("password")%>'>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-2">이름</label>
                    <div class="col-sm-3">
                        <input type="text" id="name" name="name" class="form-control" placeholder='<%=rs.getString("name")%>'>
                    </div>
                </div>
                
                <div class="form-group row">
                    <label class="col-sm-2">생일</label>
                    <div class="col-sm-3">
                        <input type="date" id="birth" name="birth" class="form-control" placeholder='<%=rs.getString("birth")%>'>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-2">성별</label>
                    <div class="col-sm-3">
                        <select id="gender" name="gender">
                          <option value="남자">남자</option>
                            <option value="여자">여자</option>
                        </select>
                    </div>
                </div>
                
                <div class="form-group row">
                    <label class="col-sm-2">메일주소</label>
                    <div class="col-sm-3">
                        <input type="email" id="mail" name="mail" class="form-control" placeholder='<%=rs.getString("mail")%>' >
                    </div>
                </div>
                
                
                <div class="form-group row">
                    <label class="col-sm-2">폰 번호</label>
                    <div class="col-sm-3">
                        <input type="tel" id="phone" name="phone" class="form-control" placeholder='<%=rs.getString("phone")%>'>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-2">주소</label>
                    <div class="col-sm-3">
                        <input type="text" id="address" name="address" class="form-control" placeholder='<%=rs.getString("address")%>'>
                    </div>
                </div>
                
                <div class="form-group row">
                    <div class="col-sm-offset-2 col-sm-10 ">
                        <input type="submit" class="btn btn-primary" value="수정">
                    </div>
                </div>
			</form>
		</div>	
        <%
        }
        
        if (rs != null) rs.close();
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
        %>
    </body>
</html>