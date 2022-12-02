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
    <!-- <div><img src="https://jsp-main--pfhou.run.goorm.io/image/logo_kyobo.png" class="img/fluid" alt="main_image"></div> -->
    <a href="https://www.kyobobook.co.kr/" target="_blank"><img src="https://jsp-main--pfhou.run.goorm.io/image/logo_kyobo.png" class="img/fluid" alt="main_image"></a>
    
    <!-- navbar 메뉴 -->
    <div class="container" style="display:inline-block; text-align:right;">
        <div class="navbar-header">
            <a style="color:black;" class="navbar-brand" href="https://jsp-main--pfhou.run.goorm.io/index.jsp">상품목록(기본 홈)</a>
            <a style="color:black;" class="navbar-brand" href="login/login_user.jsp">로그인</a>
            <a style="color:black;" class="navbar-brand" href="https://jsp-main--pfhou.run.goorm.io/BoardListAction.do?pageNum=1">게시판(고객센터)</a>
            <a style="color:black;" class="navbar-brand" href="https://jsp-main--pfhou.run.goorm.io/admin/index_ad.jsp">관리자모드</a>
        </div>
    </div>
</nav>