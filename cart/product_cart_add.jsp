<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<%
	String id = request.getParameter("id");

    // 아이디 null 값 확인
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("../index.jsp");
		return;
	}

	ProductRepository dao = ProductRepository.getInstance();

    // 오류 확인
	Product product = dao.getProductById(id);
	if (product == null) {
		response.sendRedirect("../exception/product_not_found.jsp");
	}

    
    //모든 상품 목록 가져와서 goodsList에 저장하기
	ArrayList<Product> goodsList = dao.getAllProducts();
	Product goods = new Product(); 
    // goodsList리스트 안의 객체를 하나씩 가져와서 goods 객체에 넣어서 비교
	for (int i = 0; i < goodsList.size(); i++) {
        goods = goodsList.get(i);
		if (goods.getProductId().equals(id)) { 
            // 모든 상품 한번씩 돌다가 현재 id와 같으면 break
            break;
		}
	}

	ArrayList<Product> list = (ArrayList<Product>) session.getAttribute("cartlist");
	if (list == null) { 
		list = new ArrayList<Product>();
		session.setAttribute("cartlist", list); // 세션 키, 값 설정
	}

	int cnt = 0;
	Product goodsQnt = new Product();
	for (int i = 0; i < list.size(); i++) {
		goodsQnt = list.get(i);
		if (goodsQnt.getProductId().equals(id)) {
			cnt++;
			int orderQuantity = goodsQnt.getQuantity() + 1;
			goodsQnt.setQuantity(orderQuantity);
		}
	}

	if (cnt == 0) { 
		goods.setQuantity(1);
		list.add(goods);
	}

	response.sendRedirect("product_cart.jsp?id=" + id); // 장바구니 화면 페이지로 이동
%>

