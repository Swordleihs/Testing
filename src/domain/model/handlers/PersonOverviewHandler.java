package domain.model.handlers;

import domain.model.RequestHandler;
import domain.service.ShopService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class PersonOverviewHandler extends RequestHandler {
    public PersonOverviewHandler(ShopService service) {
        super.setService(service);
    }

    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("personen", this.service.getPersons());
        return "personoverview.jsp";
    }
}
