/**
 * 
 */
package com.neuedu.shop.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.neuedu.shop.entity.Product;
import com.neuedu.shop.entity.ProductConditionVO;
import com.neuedu.shop.service.ProductService;

/**
 * @author ��ϰ��
 * @date 2020��5��12������3:24:27
 */
@Controller
public class ProductController {
	@Autowired
	private ProductService service;

	// �������ajax����ͨ��ModelMap����ת��
	@RequestMapping("/back/findAll.product")
	public String findAll(ModelMap map) {
		List<Product> products = service.findAll();
		map.addAttribute("products", products);
		return "product_list.jsp";
	}


	// ����ǰ̨��findEight.product
	// һ��ҳ����ʾ������ݣ���Ϊ���ܻ�Ҫ�����������ݣ������Ƹ�Ϊindex.product
	@RequestMapping("/pre/index.product")
	public String findEight(ModelMap map) {
		// �Ƽ���Ʒ
		List<Product> rproducts = service.findEight();
		map.addAttribute("rproducts", rproducts);
		// ������Ʒ
		List<Product> lproducts = service.lastedProduct();
		map.addAttribute("lproducts", lproducts);
		return "index.jsp";
	}

	@RequestMapping("/back/delete.product")
	public String deleteProduct(Integer id) {
		service.delete(id);
		return "redirect:findAll.product";
	}
	@RequestMapping("/pre/detail.product")
	public String detail(Integer id,ModelMap map) {
		Product product = service.findById(id);
		map.addAttribute("product", product);
		return "product_detail.jsp";
	}
	@RequestMapping("/back/insert.product")
	public String insertProduct(Product product, @RequestParam("file")CommonsMultipartFile file,
			HttpServletRequest request) {
		System.out.println(product);
		service.insert(product, file, request);
		return "redirect:findAll.product";
	}
	
	@RequestMapping("/back/findByKeywords.product")
	public String findByKeywords(String keywords,ModelMap map) {
		List<Product> products = service.fingByKeywords(keywords);
		map.addAttribute("products", products);
		return "product_search.jsp";
	}
	@RequestMapping("/pre/findByKeywords.product")
	public String findByKeywordsPre(String keywords,ModelMap map) {
		List<Product> productsSearch = service.fingByKeywords(keywords);
		map.addAttribute("productsSearch", productsSearch);
		return "product_search.jsp";
	}
	@RequestMapping("/pre/findByCategoryId.product")
	public String findByCategoryId(Integer categoryid,ModelMap map) {
		List<Product> productsSearch = service.findByCategoryId(categoryid);
		map.addAttribute("productsSearch", productsSearch);
		return "product_search.jsp";
	}
	@RequestMapping("/pre/searchProductComplex.product")
	public String searchProductComplex(ProductConditionVO vo,ModelMap map) {
		List<Product> productsSearch = service.ProductCondition(vo);
		map.addAttribute("productsSearch", productsSearch);
		return "product_searchcomplex.jsp";
	}
}
