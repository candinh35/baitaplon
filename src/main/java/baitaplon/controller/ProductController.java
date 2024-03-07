package baitaplon.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import baitaplon.DAO.CategoryDao;
import baitaplon.DAO.ProductDao;
import baitaplon.entities.Category;
import baitaplon.entities.Product;

@Controller
public class ProductController {
	
	@Autowired
    private CategoryDao CategoryDao;
    
    @Autowired
    private ProductDao ProductDao;
    
	@RequestMapping(value = {"/product"}, method = RequestMethod.GET)
    public String getProductByCategory(@PathVariable(value = "cateId", required = false) Integer cateId, Model model) {
        List<Category> categories = CategoryDao.getCate();
        model.addAttribute("categoryList", categories);

        List<Product> products;

        if (cateId != null) {
            products = ProductDao.getProductByCategory(cateId);
        } else {
            products = ProductDao.getProducts();
        }

        model.addAttribute("productList", products);
        model.addAttribute("title", "Product");

        return "product";
    }
	  @RequestMapping(value="/product-detail")
	    public String productDetail(@RequestParam("proId") Integer proId, Model model) {
	    	Product product = ProductDao.getProductById(proId);
	    	model.addAttribute("product", product);
	    	model.addAttribute("title", "Chi tiết sản phẩm");
	        return "productDetail";
	    }
}
