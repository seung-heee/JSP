<%@ page contentType = "text/html;charset=utf-8" %>

<%-- CLASS는 스타일 적용시에 사용 되는 이름, 중첩 가능 --%>

<%! String greeting = "welcome to SEUNG-HEE website";
String tagline = "하단 페이지 : 확인"; %>

<div class="jumbotron">
    <div class="container">
        <h1 class="display-3">
            <%=greeting%>
        </h1>
	</div>
</div>

<div class="card bg-dark text-white">
    <img src="image/overlay2.gif" class="card-img" alt="...">
    <div class="card-img-overlay">
        <h5 class="card-title">울 크롭 꽈배기 가디건</h5>
        <p class="card-text">출처 : 행자씨~</p>
    </div>
</div>

<div class="list-group">
    <a href="#" class="list-group-item list-group-action active" aria-currrent="true">BEST</a>
    <a href="#" class="list-group-item list-group-action" aria-currrent="true">하이</a>
    <a href="#" class="list-group-item list-group-action" aria-currrent="true">하이</a>
    <a href="#" class="list-group-item list-group-action" aria-currrent="true">하이</a>
    <a href="#" class="list-group-item list-group-action" aria-currrent="true">하이</a>
</div>

<div class="container">
    <div class="text-center">
        <h3>
            <%=tagline%>
        </h3>
    </div><hr>
</div>

