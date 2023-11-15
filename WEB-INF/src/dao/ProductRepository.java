package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>(); // ArrayList를 Product로 캐스팅
    private static ProductRepository instance = new ProductRepository();

    public static ProductRepository getInstance(){
	    return instance;
   }

	public ProductRepository() {
		Product shoe1 = new Product("P1234", "아디다스 토바코 그루엔 메사 브라운 데저트", 139000);
        shoe1.setDescription("출시일 23/07/28");
        shoe1.setCategory("shoes"); // 오탈자 수정: "shose" → "shoes"
        shoe1.setManufacturer("Adidas");
        shoe1.setUnitsInStock(1000);
        shoe1.setCondition("New");
        shoe1.setFilename("P1234.jpg");

        Product shoe2 = new Product("P1235", "나이키 에어포스 1 '07 WB 플랙스", 169000);
        shoe2.setDescription("19/09/10");
        shoe2.setCategory("shoes");
        shoe2.setManufacturer("Nike"); // 제조사 이름 수정: "adidas" → "Nike"
        shoe2.setUnitsInStock(1000);
        shoe2.setCondition("Refurbished");
        shoe2.setFilename("P1235.jpg");

        Product shoe3 = new Product("P1236", "아디다스 삼바 OG 블랙 화이트 검", 135000);
        shoe3.setDescription("18/06/01");
        shoe3.setCategory("shoes");
        shoe3.setManufacturer("Adidas");
        shoe3.setUnitsInStock(1000);
        shoe3.setCondition("Old");
        shoe3.setFilename("P1236.jpg");


		
		// 위와 같이 상품 초기화 하고 아래에 상품을 추가

		listOfProducts.add(shoe3);
		listOfProducts.add(shoe2);
		listOfProducts.add(shoe1);
		// listOfProducts.add(상품명);
	}
	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}



    public Product getProductById(String productId) {
    
        Product productById = null;
    
        for (int i = 0; i < listOfProducts.size(); i++) {
        
            Product product = listOfProducts.get(i);
        
            if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
            
                productById = product;
            
                break;
        
            }
    
        }

        return productById;

    }
    public void addProduct(Product product) {
        listOfProducts.add(product);
    }

}
