package domain.model;

import domain.model.handlers.*;
import domain.service.ShopService;

import java.util.HashMap;
import java.util.Map;

public class HandlerFactory {

    private Map<String, RequestHandler> handlers = new HashMap<>();

    public HandlerFactory(ShopService service){
        this.handlers.put("overview", new PersonOverviewHandler(service));
        this.handlers.put("index", new IndexHandler(service));
        this.handlers.put("signUp", new SignUpHandler(service));
        this.handlers.put("addUser", new AddUserHandler(service));
        this.handlers.put("productOverview", new ProductOverviewHandler(service));
        this.handlers.put("addProduct", new AddProductHandler(service));
        this.handlers.put("addProductPage", new AddProductPageHandler(service));
        this.handlers.put("checkPas", new CheckPasHandler(service));
        this.handlers.put("doCheck", new DoCheckHandler(service));
        this.handlers.put("updateProductPage", new UpdateProductPageHandler(service));
        this.handlers.put("updateProduct", new UpdateProductHandler(service));
        this.handlers.put("deleteProductPage", new DeleteProductPageHandler(service));
        this.handlers.put("deleteProduct", new DeleteProductHandler(service));
        this.handlers.put("deletePersonPage",new DeletePersonPageHandler(service));
        this.handlers.put("deletePerson", new DeletePersonHandler(service));
        this.handlers.put("quote", new QuoteHandler(service));
        this.handlers.put("cart", new CartHandler(service));
        this.handlers.put("addToCart", new AddToCartHandler(service));
    }

    public RequestHandler getHandler(String key){
        return this.handlers.get(key);
    }
}
