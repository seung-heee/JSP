//실제 상품 정보 저장
package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();

	public ProductRepository() {
        Product book1 = new Product("9791130692258", "하쿠다 사진관", 15500);
        book1.setDescription("지친 인생들의 마음 치유소");
        book1.setCategory("장편소설");
        book1.setManufacturer("놀");
        book1.setUnitsInStock(1000);
        book1.setCondition("Old");
        
        Product book2 = new Product("9788954699914", "하얼빈", 16000);
        book2.setDescription("칼의 노래를 넘어서는 김훈의 새로운 대표작");
        book2.setCategory("소설");
        book2.setManufacturer("문학동네");
        book2.setUnitsInStock(1000);
        book2.setCondition("Refurbished");
        
        Product book3 = new Product("9788959897094", "트렌드코리아2023", 19000);
        book3.setDescription("소비트렌드 분석센터의 2023 전망");
        book3.setCategory("경제/경영 주간베스트 1위");
        book3.setManufacturer("미래의창");
        book3.setUnitsInStock(1000);
        book3.setCondition("New");
        
        Product book4 = new Product("9791156643388", "쉽게 배우는 JSP 프로그래밍", 27000);
        book4.setDescription("IT Cookbook 한빛교재 시리즈");
        book4.setCategory("컴퓨터/IT");
        book4.setManufacturer("한빛아카데미");
        book4.setUnitsInStock(1000);
        book4.setCondition("New");
        
        Product book5 = new Product("9791191891201", "잘될 수 밖에 없는 너에게", 16000);
        book5.setDescription("잘될 줄 알았어, 해낼 줄 알았어!");
        book5.setCategory("에세이");
        book5.setManufacturer("북로망스");
        book5.setUnitsInStock(1000);
        book5.setCondition("New");
        
        Product book6 = new Product("9788936438838", "아버지의 해방일지", 15000);
        book6.setDescription("새삼스럽게 경탄스럽다!");
        book6.setCategory("일반소설");
        book6.setManufacturer("창비");
        book6.setUnitsInStock(1000);
        book6.setCondition("New");
        
        Product book7 = new Product("9791161692234", "수상한 초콜릿 가게", 13500);
        book7.setDescription("소중한 짝사랑을 들어드려요!");
        book7.setCategory("장편소설");
        book7.setManufacturer("서랍의날씨");
        book7.setUnitsInStock(1000);
        book7.setCondition("New");
        
        Product book8 = new Product("9791186116357", "통찰의 시간", 18000);
        book8.setDescription("깨어나게 하고 행동하게 하는 555개의 통찰");
        book8.setCategory("자기계발");
        book8.setManufacturer("알투스");
        book8.setUnitsInStock(1000);
        book8.setCondition("New");
        
    	Product book9 = new Product("9791191769203", "빠르게 실패하기", 16500);
        book9.setDescription("가능한 더 빨리 시작하고 최대한 더 많이 실패하십시오.");
        book9.setCategory("자기계발");
        book9.setManufacturer("스노우폭스북스");
        book9.setUnitsInStock(1000);
        book9.setCondition("New");

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

  	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
    }
    
    public Product getProductById(String productId) {
        Product productById = null;
        
        for(int i=0; i<listOfProducts.size(); i++) {
            Product product = listOfProducts.get(i);
            if(product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
                productById = product;
                break;
            }
        }
        return productById;
    }
}