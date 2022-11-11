<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import = "example.*" %>

<footer class="container">
    <p>
        &copy; 20200977 노승희 tmdgml2595@naver.com<br>
        <% ShopTime time = new ShopTime(); %>
        오늘 날짜와 시간 : <%= time.timenow() %>
        <br><br>
        현재 페이지 버퍼 용량 : <%= out.getBufferSize() %><br>
        남은 페이지 버퍼 용량 : <%= out.getRemaining() %>
    </p>
</footer>