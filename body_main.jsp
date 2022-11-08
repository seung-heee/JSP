<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dto.Product" %>
<%@ page import="dao.ProductRepository"%>
<!-- <jsp:useBean id = "productDAO" class="dao.ProductRepository" scope="session" /> -->

<%! String greeting = "교보문고에 오신 것을 환영합니다";
String tagline = "하단 페이지 : 확인"; %>

<div class="container">
    <div class="jumbotron">
        <div class="container">
            <h4 class="display-4">
                <%= greeting %>
            </h4>
        </div>
    </div>

    <%
    	ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> listOfProducts = dao.getAllProducts();
    %>

    <div class="container">
        <div class="row" align="center">
            <%
                for(int i=0; i<listOfProducts.size(); i++) {
                    Product product = listOfProducts.get(i);
            %>
            <div class="col-md-4" style="margin-bottom:10px;">
                <div class="card bg-dark text-white">
                    <img src="image/product/<%=product.getFilename()%>" class="card-img" alt="..." style="width:338;height:448;">
                    <div class="card-img-overlay">
                        <h5 class="card-title">Best Seller</h5>
                        <p class="card-text">출처 : 교보문고</p>
                    </div>
                </div>
                <h4 style="margin-top:15px; margin-bottom:5px"><b><%=product.getPname()%></b></h4>
                <p style="margin-bottom:5px;"><%=product.getDescription()%></p>
                <p><%=product.getUnitPrice()%>원</p>
                <p>
                    <a href="product_detail.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button">상품 상세 정보 &raquo;</a>
                </p>
            </div>
            <%
            }
            %>
        </div>
        <hr>
    </div>




    <div class="card bg-dark text-white">
        <img src="image/top.jpg" class="card-img" alt="...">
        <div class="card-img-overlay">
            <h5 class="card-title">2023 다이어리</h5>
            <p class="card-text">득템찬스~</p>
        </div>
    </div>

    <div class="list-group">
        <a href="#" class="list-group-item list-group-action active" aria-currrent="true">BEST</a>
        <a href="#" class="list-group-item list-group-action" aria-currrent="true">인생</a>
        <a href="#" class="list-group-item list-group-action" aria-currrent="true">자기계발</a>
        <a href="#" class="list-group-item list-group-action" aria-currrent="true">경영</a>
        <a href="#" class="list-group-item list-group-action" aria-currrent="true">소설</a>
    </div>
</div>

<div class="container">
    <div class="text-center">
        <h3>
            <%=tagline%>
        </h3>
    </div><hr>
</div>

