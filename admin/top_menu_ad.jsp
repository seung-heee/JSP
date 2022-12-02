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
    <div><img src="https://jsp-main--pfhou.run.goorm.io/image/logo_kyobo.png" class="img/fluid" alt="main_image"></div>
    
    <!-- navbar 메뉴 -->
    <div class="container" style="display:inline-block; text-align:right;">
        <div class="navbar-header">
            <a style="color:black;" class="navbar-brand" href="https://jsp-main--pfhou.run.goorm.io/member/member_view.jsp?edit=m_view">회원보기</a>
            <a style="color:black;" class="navbar-brand" href="https://jsp-main--pfhou.run.goorm.io/member/member_view.jsp?edit=m_update">회원수정</a>
            <a style="color:black;" class="navbar-brand" href="https://jsp-main--pfhou.run.goorm.io/member/member_view.jsp?edit=m_delete">회원삭제</a>
            <a style="color:black;" class="navbar-brand" href="https://jsp-main--pfhou.run.goorm.io/admin/index_ad.jsp">상품보기</a>
            <a style="color:black;" class="navbar-brand" href="https://jsp-main--pfhou.run.goorm.io/admin/product_add_ad.jsp">등록</a>
            <a style="color:black;" class="navbar-brand" href="https://jsp-main--pfhou.run.goorm.io/admin/product_edit.jsp?edit=update">수정</a>
            <a style="color:black;" class="navbar-brand" href="https://jsp-main--pfhou.run.goorm.io/admin/product_delete.jsp?edit=delete">삭제</a>
            <a style="color:black;" class="navbar-brand" href="../index.jsp">일반모드</a>
        </div>
    </div>
</nav>