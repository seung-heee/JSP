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
    
    <div style="text-align:right;margin-bottom:50px;">
        <a href="https://www.youtube.com/c/kbooknews" target="_blank" style="margin-left:7px;"><img src="image/youtube.png" style="width:40px;height:40px;"></a>
        <a href="https://www.facebook.com/kyobobookonline?orderClick=rwk" target="_blank" style="margin-left:7px;"><img src="image/facebook.png" style="width:40px;height:40px;"></a>
        <a href="https://www.instagram.com/kyobobook_online/" target="_blank" style="margin-left:7px;"><img src="image/insta.png" style="width:40px;height:40px;"></a>
    </div>
</footer>