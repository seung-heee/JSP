# 20200977_SERVLET
## SERVLET_JSP
### 2주차 22/09/07
-프로젝트 환경 설정, HELLO WORLD 확인 완료,
-쇼핑몰 메인 페이지 [index.jsp 실행/수정 완료]

### 3주차 22/09/14
-쇼핑몰 메인 페이지 모듈화 4개
[top_banner.jsp/top_menu.jsp/body_main.jsp/footer.jsp]
![image](https://user-images.githubusercontent.com/112852049/211989357-b74e69d5-a4d5-485f-968a-e6cc8f25468d.png)


### 4주차 22/09/21
-쇼핑몰 상품 목록 페이지 추가
[dto/Product.java, dao/ProductRepository.java]
### 5주차 22/09/28
-쇼핑몰 상세 페이지 추가(Product_detail.jsp)
[dao/ProductRepository.java > getProductById() 추가 (상품과 일치하는 id 리턴)]
![image](https://user-images.githubusercontent.com/112852049/211989498-2b63f27f-493b-4833-986b-dbe218d6e3f6.png)


### 6주차 22//10/05
-쇼핑몰 상품 등록 추가[product_add_ad.jsp/product_add_process.jsp]
-관리자 전용 폴더 생성
### 7주차 22/10/12
-쇼핑몰 이미지 업로드 추가
-쇼핑몰 입력값 필터링 추가[js/validation.js]
![image](https://user-images.githubusercontent.com/112852049/211989642-8a2f3e60-9bfb-43d0-a349-3cb23965f281.png)

### 9주차 22/10/26
-쇼핑몰 로그인 기능 추가[login.jsp, login_failed.jsp, logout.jsp]
-탐켓 서버 내 .xml 파일 수정[WEB-INF/web.xml]
![image](https://user-images.githubusercontent.com/112852049/211989791-36712b2b-be88-469c-991b-90da4338ac93.png)

### 10주차 22/11/02
-세션 및 장바구니 기능 추가[product_cart.jsp, product_cart_add.jsp, product_cart_remove.jsp, product_cart_remove_all.jsp]
![image](https://user-images.githubusercontent.com/112852049/211989922-6d97dc42-3d39-4ad2-91fc-ac9c682b4564.png)


### 11주차 22/11/09
-쇼핑몰 주문 처리 페이지 추가
![image](https://user-images.githubusercontent.com/112852049/211989992-acaa4bae-1771-4da6-a12f-1e5e1450de82.png)
-도전문제1 : 배송일을 날짜를 선택하여 입력하도록 수정 O
    날짜 라이브러리 사용, 오늘날짜 불러오고 +1하여 저장(다음날 날짜 지정), min값에 대입
    ![image](https://user-images.githubusercontent.com/112852049/211990034-b25810e9-258f-420d-83ee-5aa4c4365973.png)

-도전문제2 : 국가명을 select 박스로 수정하자 O
    select와 option사용
    ![image](https://user-images.githubusercontent.com/112852049/211990059-7b9becd1-d7e4-48b8-a25f-d763534e3144.png)

-도전문제3 : 우편번호와 주소를 검색을 통해 입력되도록 수정하자 O
    ppt에 있는 url 참고해서 응용함.
    ![image](https://user-images.githubusercontent.com/112852049/211990101-f5f9e1d8-c498-48f4-89ee-bdaaede4bc80.png)



