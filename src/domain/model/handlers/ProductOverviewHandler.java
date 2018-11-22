package domain.model.handlers;

import domain.model.RequestHandler;
import domain.service.ShopService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ProductOverviewHandler extends RequestHandler {
    public ProductOverviewHandler(ShopService service) {
        super.setService(service);
    }

    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("producten", this.service.getProducts());
        return "productoverview.jsp";
    }
}
