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
		Product phone = new Product("P1234", "아디다스 토바코 그루엔 메사 브라운 데저트", 139000);
		phone.setDescription("출시일23/07/28");
		phone.setCategory("shose");
		phone.setManufacturer("Adidas");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
        phone.setFilename("P1234.png");

        
        Product notebook = new Product("P1235", "아디다스 삼바 OG 클라우드 화이트", 140000);
		notebook.setDescription("18/01/01");
		notebook.setCategory("shose");
		notebook.setManufacturer("adidas");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");
        phone.setFilename("P1235.png");


		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
        phone.setFilename("P1236.png");

		
		// 위와 같이 상품 초기화 하고 아래에 상품을 추가

		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
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
