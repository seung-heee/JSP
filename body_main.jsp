<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dto.Product" %>
<jsp:useBean id = "productDAO" class="dao.ProductRepository" scope="session" />

<%! String greeting = "welcome to SEUNG-HEE website";
String tagline = "하단 페이지 : 확인"; %>

<div class="container">
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">
                <%= greeting %>
            </h1>
        </div>
    </div>

    <%
    ArrayList<Product> listOfProducts = productDAO.getAllProducts();
    %>

    <div class="container">
        <div class="row" align="center">
            <%
                for(int i=0; i<listOfProducts.size(); i++) {
                    Product product = listOfProducts.get(i);  
            %>
            <div class="col-md-4">
                <h3><%=product.getPname()%></h3>
                <p><%=product.getDescription()%></p>
                <p><%=product.getUnitPrice()%></p>
            </div>
            <%
            }
            %>
        </div>
        <hr>
    </div>

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

<div class="container">
    <div class="text-center">
        <h3>
            <%=tagline%>
        </h3>
    </div><hr>
</div>

