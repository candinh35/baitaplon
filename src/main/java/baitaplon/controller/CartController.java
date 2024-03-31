package baitaplon.controller;

import baitaplon.DAO.ProductDao;
import baitaplon.controller.request.AddCart;
import baitaplon.controller.request.Cart;
import baitaplon.controller.request.ListProductCart;
import baitaplon.entities.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class CartController {
	@Autowired
	private baitaplon.DAO.ProductDao ProductDao;
	@RequestMapping(value="/cart")
	public String Cart(Model model, HttpSession session) {
		Cart cart = (Cart) session.getAttribute("cart");

		List<ListProductCart> listProductCart = new ArrayList<>();

		if (cart == null){
			model.addAttribute("listProductCarts", listProductCart);
			return "Cart";
		}

		for (AddCart item : cart.getItems()) {
			ListProductCart productCart = new ListProductCart();
			Product product = ProductDao.getProductById(item.getProId());
			productCart.setProId(product.getProId());
			productCart.setProName(product.getProName());
			productCart.setPrice(product.getPrice());
			productCart.setImage(product.getImage());
			productCart.setTotalPro(item.getTotalPro());
			productCart.setSubTotalPro(item.getTotalPro() * product.getPrice());
			listProductCart.add(productCart);
		}
		model.addAttribute("listProductCarts", listProductCart);
		return "Cart";
	}

}
