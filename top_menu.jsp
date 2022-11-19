<%@ page contentType = "text/html;charset=utf-8" %>

<nav class="navbar navbar-expand navbar-white bg-white">
    <!-- 카테고리 DROPDOWN -->
    <div class="dropdown" style="margin-right:30px;">
        <button class="btn btn-secondary dropdown-toggle" type="button" 
                id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            카테고리
        </button>
        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" href="#">국내도서</a>
            <a class="dropdown-item" href="#">국외도서</a>
            <a class="dropdown-item" href="#">eBOOK</a>
            <a class="dropdown-item" href="#">웹소설</a>
            <a class="dropdown-item" href="#">ONLY 교보문고</a>
        </div>
    </div>
    
    <!-- 로고 -->
    <div><img src="image/logo_kyobo.png" class="img/fluid" alt="main_image"></div>
    
    <!-- navbar 메뉴 -->
    <div class="container" style="display:inline-block; text-align:right;">
        <div class="navbar-header">
            <a style="color:black;" class="navbar-brand" href="index.jsp">상품목록(기본 홈)</a>
            <a style="color:black;" class="navbar-brand" href="">로그인</a>
            <a style="color:black;" class="navbar-brand" href="">고객센터</a>
            <a style="color:black;" class="navbar-brand" href="admin/index_ad.jsp">관리자모드</a>
            <a style="color:black;" class="navbar-brand" href="admin/product_delete_process.jsp">테스트</a>
        </div>
    </div>
</nav>