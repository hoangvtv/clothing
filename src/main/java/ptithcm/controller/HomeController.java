package ptithcm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ptithcm.entity.Cart;
import ptithcm.entity.Category;
import ptithcm.entity.Poster;
import ptithcm.entity.Product;
import ptithcm.entity.User;
import ptithcm.service.CartService;
import ptithcm.service.CategoryService;
import ptithcm.service.PosterService;
import ptithcm.service.ProductService;

@Controller
@RequestMapping("/home")
public class HomeController {

	@Autowired
	ProductService productService;
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	PosterService posterService;
	
	@Autowired
	CartService cartService;
	
	@ModelAttribute("leftposters")
	public List<Poster> getActivedLeftPosters() {
		return posterService.getActivedLeftPosters();
	}
	
	@ModelAttribute("rightposters")
	public List<Poster> getActivedRightPosters() {
		return posterService.getActivedRightPosters();
	}
	
	@RequestMapping("")
	public String showHome(HttpServletRequest request, ModelMap model) {
		
		List<Product> list = productService.getAllProducts();
		List<Product> listProduct = productService.getProductsByCategory(4);
		List<Category> listCategory = categoryService.getAllCategories();
		// bỏ dữ liệu vào pagedListHolder rồi sau đó trả về cho model
		PagedListHolder pagedListHolder = productService.paging(list, request);
		PagedListHolder pagedListHolderProduct = productService.paging(listProduct, request);
		model.addAttribute("pagedListHolder", pagedListHolder);
		model.addAttribute("pagedListHolderProduct", pagedListHolderProduct);
		model.addAttribute("listCategory", listCategory);
		
		return "user/home";
	}
	

	
	@RequestMapping("information")
	public String showInform() {
		return "user/information";
	}
	
	@RequestMapping("search")
	public String searchProduct(HttpServletRequest request, ModelMap model, @RequestParam("keyword") String keyword) {
		List<Product> list = productService.searchProducts(keyword);
		List<Category> listCategory = categoryService.getAllCategories();
		// bỏ dữ liệu vào pagedListHolder rồi sau đó trả về cho model
		PagedListHolder pagedListHolder = productService.paging(list, request);
	
		model.addAttribute("listCategory", listCategory);
		model.addAttribute("pagedListHolder", pagedListHolder);
		return "user/product";
	}
	
	@RequestMapping("category/product")
	public String searchCategory(HttpServletRequest request, ModelMap model, @RequestParam("id") Integer id) {
		List<Product> list = productService.getProductsByCategory(id);
		List<Category> listCategory = categoryService.getAllCategories();
		// bỏ dữ liệu vào pagedListHolder rồi sau đó trả về cho model
		PagedListHolder pagedListHolder = productService.paging(list, request);
		model.addAttribute("pagedListHolder", pagedListHolder);
		model.addAttribute("listCategory", listCategory);
		return "user/product";
	}
	
	@RequestMapping("product")
	public String showProduct(HttpSession session, HttpServletRequest request, ModelMap model, @RequestParam("id") Integer id) {
		User user = (User) session.getAttribute("user");
		if(user != null)
		{
			Cart cart = cartService.getCartByProduct(user.getId(), id);
			if(cart != null)
				model.addAttribute("message", "Đã thêm vào giỏ hàng");			
		}		
		model.addAttribute("product", productService.getProductByID(id));
		
		return "user/productDetail";
	}
	
	@RequestMapping("category")
	public String showCategory(ModelMap model) {
		List<Category> list = categoryService.getAllCategories();
		model.addAttribute("categories", list);
		return "user/category";
	}
	
	@RequestMapping("shop")
	public String showShop(HttpServletRequest request, ModelMap model) {
		
		List<Product> list = productService.getAllProducts();
		List<Category> list1 = categoryService.getAllCategories();
		
		// bỏ dữ liệu vào pagedListHolder rồi sau đó trả về cho model
		PagedListHolder pagedListHolder = productService.paging(list, request);
	
		model.addAttribute("pagedListHolder", pagedListHolder);
		model.addAttribute("categories", list1);
		
		return "user/shop";
	}

}
