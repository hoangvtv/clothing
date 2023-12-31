package ptithcm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import ptithcm.entity.Brand;
import ptithcm.entity.Category;
import ptithcm.entity.Product;
import ptithcm.service.BrandService;
import ptithcm.service.CategoryService;
import ptithcm.service.ProductService;

@Controller
@RequestMapping("/admin")
public class ProductController {

	@Autowired
	ProductService productService;

	@Autowired
	CategoryService categoryService;

	@Autowired
	BrandService brandService;

	@RequestMapping("listProduct")
	public String showListProduct(HttpServletRequest request, ModelMap model) {
		List<Product> products = productService.getAllProducts();
		
		// Bỏ dữ liệu vào pagedListHolder rồi sau đó trả về cho model
		PagedListHolder pagedListHolder = productService.paging(products, request);
		model.addAttribute("pagedListHolder", pagedListHolder);
		
		return "admin/product/listProducts";
	}

	@RequestMapping("detailProduct")
	public String showDetailProduct(HttpServletRequest request, ModelMap model, @RequestParam("id") Integer id) {
		model.addAttribute("product", productService.getProductByID(id));
		return "admin/product/detailProduct";
	}

	@ModelAttribute("categorySel")
	public List<Category> getCategories() {
		List<Category> list = categoryService.getAllCategories();
		return list;
	}

	@ModelAttribute("brandsSel")
	public List<Brand> getBrands() {
		List<Brand> list = brandService.getAllBrands();
		return list;
	}

	@RequestMapping("newProduct")
	public String newProduct(@ModelAttribute("product") Product product) {
		return "admin/product/newProducts";
	}
	
	@RequestMapping(value = "newProduct", method = RequestMethod.POST)
	public String newProduct(ModelMap model, @ModelAttribute("product") Product product,
			@RequestParam("file") MultipartFile file, BindingResult errors) {
		product.setSold_quantity(0);;
		product.setStatus(true);
		
		if(product.getName().trim().length() == 0) {
			errors.rejectValue("name", "product", "Vui lòng nhập tên sản phẩm !");
		}
		if(product.getPrice() == null) {
			errors.rejectValue("price", "product", "Vui lòng nhập đơn giá !");
		}
		else if(product.getPrice() <= 0) {
			errors.rejectValue("price", "product", "Đơn giá phải lớn hơn 0 !");
		}
		if(product.getSpecification().trim().length() == 0) {
			errors.rejectValue("specification", "product", "Vui lòng nhập quy cách !");
		}
		if(product.getCalculation_unit().trim().length() == 0) {
			errors.rejectValue("calculation_unit", "product", "Vui lòng nhập đơn vị !");
		}
		if(product.getQuantity() == null) {
			errors.rejectValue("quantity", "product", "Vui lòng nhập số lượng !");
		}
		else if(product.getQuantity() <= 0) {
			errors.rejectValue("quantity", "product", "Số lượng phải nhiều hơn 0 !");
		}
		if(product.getDescription().trim().length() == 0) {
			errors.rejectValue("description", "product", "Vui lòng nhập mô tả !");
		}
		
		if(errors.hasErrors()){
			model.addAttribute("message", -1);
			return "admin/product/newProducts";
		}
		
		int result = productService.newProduct(product, file);
		model.addAttribute("message", result);
		return "admin/product/newProducts";
	}

	@RequestMapping(value = "editProduct", method = RequestMethod.GET)
	public String editProduct(HttpServletRequest request, ModelMap model, @RequestParam("id") Integer id) {
		model.addAttribute("product", productService.getProductByID(id));
		return "admin/product/editProducts";
	}

	@RequestMapping(value = "editProduct", method = RequestMethod.POST)
	public String editProduct(HttpServletRequest request, ModelMap model, @ModelAttribute("product") Product product,
			@RequestParam("file") MultipartFile file, BindingResult errors) {
		int add = Integer.parseInt(request.getParameter("add"));
		
		if(product.getName().trim().length() == 0) {
			errors.rejectValue("name", "product", "Vui lòng nhập tên sản phẩm !");
		}
		if(product.getPrice() == null) {
			errors.rejectValue("price", "product", "Vui lòng nhập đơn giá !");
		}
		else if(product.getPrice() <= 0) {
			errors.rejectValue("price", "product", "Đơn giá phải lớn hơn 0 !");
		}
		if(product.getSpecification().trim().length() == 0) {
			errors.rejectValue("specification", "product", "Vui lòng nhập quy cách !");
		}
//		if(add == 0) {
//			model.addAttribute("addError", "Số lượng thêm vào không được bỏ trống");
//			return "admin/product/editProduct";
//		}
		if(product.getDescription().trim().length() == 0) {
			errors.rejectValue("description", "product", "Vui lòng nhập mô tả !");
		}
		if(errors.hasErrors()){
			model.addAttribute("message", 0);
			return "admin/product/editProducts";
		}
		
		Product p = productService.getProductByID(product.getId());
		product.setQuantity(p.getQuantity() + add);
		product.setImage(p.getImage());
		product.setCalculation_unit(p.getCalculation_unit());
		product.setSold_quantity(p.getSold_quantity());
		product.setStatus(p.getStatus());
		
		int result = productService.editProduct(product, file);
		model.addAttribute("message", result);
		return "admin/product/editProducts";
	}
	
	@RequestMapping(value = "deleteProduct")
	public String deleteProduct(HttpServletRequest request, ModelMap model, @RequestParam("id") Integer id) {
		int result = productService.deleteProduct(productService.getProductByID(id));
		model.addAttribute("message", result);
		List<Product> list = productService.getAllProducts();
		PagedListHolder pagedListHolder = productService.paging(list, request);
		model.addAttribute("pagedListHolder", pagedListHolder);
		return "admin/product/listProducts";
	}

	@RequestMapping(value = "searchProduct", params = "btnsearch")
	public String searchProduct(HttpServletRequest request, ModelMap model) {
		List<Product> products = productService.searchProducts(request.getParameter("searchInput"));
		// Bỏ dữ liệu vào pagedListHolder rồi sau đó trả về cho model
		PagedListHolder pagedListHolder = productService.paging(products, request);
		model.addAttribute("pagedListHolder", pagedListHolder);
		return "admin/product/listProducts";
	}
}
