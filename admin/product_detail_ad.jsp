<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="dto.Product"%>
<%@ page import="java.util.Date"%>
<%@ page import="example.*"%>
<%@ page import="dao.ProductRepository"%>
<%@ page errorPage = "../exception/product_not_found.jsp" %>

<!-- 상품 상세정보 페이지 -->
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script type="text/javascript">
            function addToCart() {
                if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
                    document.addForm.submit();
                } else {
                    document.addForm.reset();
                }
            }
        </script>
        
        <title>상품 상세 정보</title>
    </head>
    
    <body>
        <div class="container">
        	<%@ include file="top_menu_ad.jsp"%>
        
            <div class="jumbotron">
                <div class="container">
                    <h1 class="display-3">상품 상세 정보</h1>
                </div>
            </div>

            <%
                String id = request.getParameter("id");
                ProductRepository dao = ProductRepository.getInstance();
                Product product = dao.getProductById(id);
            %>
            
            <div class="container">
                <div class="row">
                    <div class="col-me-6">
                        <h3><%=product.getPname()%></h3>
                        <p><%=product.getDescription()%></p>
                        <p><b>상품코드 : </b><span class="badge badge-danger"><%=product.getProductId()%></span></p>
                        <p><b>제조사 : </b><%=product.getManufacturer()%></p>
                        <p><b>분류 : </b><%=product.getCategory()%></p>
                        <p><b>재고 수 : </b><%=product.getUnitsInStock()%></p>
                        <h4><%=product.getUnitPrice()%>원</h4>
           
                        <div class="card bg-white text-white">
                            <img src="image/product/<%=product.getFilename()%>" class="card-img" alt="..." style="width:338;height:448;">
                            <div class="card-img-overlay">
                                <h5 class="card-title">상품 이미지 원본</h5>
                                <p class="card-text">출처 : 구글 검색</p>
                            </div>
                        </div><br>

                        <form name="addForm" action="../cart/product_cart_add.jsp?id=<%=product.getProductId()%>" method="post">
                                <a href="#" class="btn btn-info" onclick="addToCart()"> 상품주문 &raquo;</a> 
                                <a href="../cart/product_cart.jsp" class="btn btn-warning"> 장바구니 &raquo;</a>
                            <a href="index_ad.jsp" class="btn btn-secondary">상품목록 &raquo;</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <hr> 
        <%@ include file="footer_ad.jsp"%>
    </body>
</html>