<%@ page contentType = "text/html;charset=utf-8" %>

<nav class="navbar navbar-expand navbar-white bg-white">
    <!-- 카테고리 DROPDOWN -->
    <div class="dropdown">
        <button class="btn btn-secondary dropdown-toggle" type="button" 
                id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            카테고리
        </button>
        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" href="#">아우터</a>
            <a class="dropdown-item" href="#">상의</a>
            <a class="dropdown-item" href="#">바지</a>
            <a class="dropdown-item" href="#">치마</a>
            <a class="dropdown-item" href="#">원피스</a>
        </div>
    </div>
    <!-- 로고 -->
    <div><img src="image/logo2.png" class="img/fluid" alt="main_image"></div>
    <!-- navbar 메뉴 -->
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="./index.jsp">메뉴바 : 홈페이지</a>
            <a class="navbar-brand" href="./index.jsp">로그인</a>
            <a class="navbar-brand" href="./index.jsp">회원가입</a>
            <a class="navbar-brand" href="./index.jsp">주문조회</a>
        </div>
    </div>
</nav>