package baitaplon.controller;

import baitaplon.DAO.ProductDao;
import baitaplon.controller.request.AddCart;
import baitaplon.controller.request.Cart;
import baitaplon.controller.request.ListProductCart;
import baitaplon.entities.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Iterator;
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

		Double totalProCart = listProductCart.stream().mapToDouble(ListProductCart::getSubTotalPro).sum();
		model.addAttribute("totalProCart", totalProCart);
		model.addAttribute("listProductCarts", listProductCart);
		return "Cart";
	}

	@RequestMapping(value = "/removeCart")
	public String removeCart(@RequestParam("proId") Integer proId, HttpSession session) {
		Cart cart = (Cart) session.getAttribute("cart");
		if (cart != null) {
			Iterator<AddCart> iterator = cart.getItems().iterator();
			while (iterator.hasNext()) {
				AddCart item = iterator.next();
				if (item.getProId() == proId) {
					iterator.remove();
					break;
				}
			}
		}
		return "redirect:/cart";
	}
	@RequestMapping(value = "/addToOrder" , method = RequestMethod.POST)
	public String addToOrder() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authentication != null && authentication.isAuthenticated() && hasUserRole(authentication)) {
			// User is authenticated, handle accordingly
			return "authenticated-page";
		} else {
			// User is not authenticated, handle accordingly
			return "login";
		}
	}

	public boolean hasUserRole(Authentication authentication) {
		for (GrantedAuthority authority : authentication.getAuthorities()) {
			if (authority.getAuthority().equals("ROLE_USER")) {
				return true;
			}
		}
		return false;
	}
}
