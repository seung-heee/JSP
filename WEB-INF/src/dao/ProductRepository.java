// 실제 상품 정보를 저장
package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
    // 데이터 추가를 위한 객체 변수 인스턴스를 사용, 클래스 변수와 다름.
    private static ProductRepository instance = new ProductRepository();
    
    public static ProductRepository getInstance(){
		return instance;
   	}
    
    // 상품 클래스 구성과 일치하는 상품 정보(리스트)를 입력
	public ProductRepository() {
        Product book1 = new Product("P1234", "하쿠다 사진관", 15500);
        book1.setDescription("지친 인생들의 마음 치유소");
        book1.setCategory("장편소설");
        book1.setManufacturer("놀");
        book1.setUnitsInStock(1000);
        book1.setCondition("Old");
        book1.setFilename("P1234.jpg");
        
        Product book2 = new Product("P1235", "하얼빈", 16000);
        book2.setDescription("칼의 노래를 넘어서는 김훈의 새로운 대표작");
        book2.setCategory("소설");
        book2.setManufacturer("문학동네");
        book2.setUnitsInStock(1000);
        book2.setCondition("Refurbished");
        book2.setFilename("P1235.jpg");
        
        Product book3 = new Product("P1236", "트렌드코리아2023", 19000);
        book3.setDescription("소비트렌드 분석센터의 2023 전망");
        book3.setCategory("경제/경영 주간베스트 1위");
        book3.setManufacturer("미래의창");
        book3.setUnitsInStock(1000);
        book3.setCondition("New");
        book3.setFilename("P1236.jpg");
        
        Product book4 = new Product("P1237", "쉽게 배우는 JSP 프로그래밍", 27000);
        book4.setDescription("IT Cookbook 한빛교재 시리즈");
        book4.setCategory("컴퓨터/IT");
        book4.setManufacturer("한빛아카데미");
        book4.setUnitsInStock(1000);
        book4.setCondition("New");
        book4.setFilename("P1237.jpg");
        
        Product book5 = new Product("P1238", "잘될 수 밖에 없는 너에게", 16000);
        book5.setDescription("잘될 줄 알았어, 해낼 줄 알았어!");
        book5.setCategory("에세이");
        book5.setManufacturer("북로망스");
        book5.setUnitsInStock(1000);
        book5.setCondition("New");
        book5.setFilename("P1238.jpg");
        
        Product book6 = new Product("P1239", "아버지의 해방일지", 15000);
        book6.setDescription("새삼스럽게 경탄스럽다!");
        book6.setCategory("일반소설");
        book6.setManufacturer("창비");
        book6.setUnitsInStock(1000);
        book6.setCondition("New");
        book6.setFilename("P1239.jpg");
        
        Product book7 = new Product("P1241", "수상한 초콜릿 가게", 13500);
        book7.setDescription("소중한 짝사랑을 들어드려요!");
        book7.setCategory("장편소설");
        book7.setManufacturer("서랍의날씨");
        book7.setUnitsInStock(1000);
        book7.setCondition("New");
        book7.setFilename("P1241.jpg");
        
        Product book8 = new Product("P1242", "통찰의 시간", 18000);
        book8.setDescription("깨어나게 하고 행동하게 하는 555개의 통찰");
        book8.setCategory("자기계발");
        book8.setManufacturer("알투스");
        book8.setUnitsInStock(1000);
        book8.setCondition("New");
        book8.setFilename("P1242.jpg");
        
    	Product book9 = new Product("P1243", "빠르게 실패하기", 16500);
        book9.setDescription("가능한 더 빨리 시작하고 최대한 더 많이 실패하십시오.");
        book9.setCategory("자기계발");
        book9.setManufacturer("스노우폭스북스");
        book9.setUnitsInStock(1000);
        book9.setCondition("New");
        book9.setFilename("P1243.jpg");

        // 위와 같이 상품 초기화 하고 아래에 상품을 추가
        listOfProducts.add(book1);
        listOfProducts.add(book2);
        listOfProducts.add(book3);
        listOfProducts.add(book4);
        listOfProducts.add(book5);
        listOfProducts.add(book6);
        listOfProducts.add(book7);
        listOfProducts.add(book8);
        listOfProducts.add(book9);
    }

        // 전체 상품 정보 리턴
  	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
    }

    // 링크클릭을 통해 요청된 상품 id를 리턴하는 메소드
    public Product getProductById(String productId) {
        Product productById = null;
        
        // 리스트를 반복하면서
        for(int i=0; i<listOfProducts.size(); i++) {
            Product product = listOfProducts.get(i);
            // 조건문으로 요청된 id와 같은 것을 찾아
            if(product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
                productById = product;
                break;
            }
        }
        // 리턴
        return productById;
    }
    
    public void addProduct(Product product) {
		listOfProducts.add(product);
   	}
}