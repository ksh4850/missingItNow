package com.finalproj.missingitnow.product.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.finalproj.missingitnow.corporation.model.dto.MemberDTO;
import com.finalproj.missingitnow.product.model.dto.CommentDTO;
import com.finalproj.missingitnow.product.model.dto.CorpDTO;
import com.finalproj.missingitnow.product.model.dto.OrderDTO;
import com.finalproj.missingitnow.product.model.dto.OrderPaymentDTO;
import com.finalproj.missingitnow.product.model.dto.ProductDTO;
import com.finalproj.missingitnow.product.model.dto.ProductImgDTO;
import com.finalproj.missingitnow.product.model.dto.ProductListDTO;
import com.finalproj.missingitnow.product.model.dto.ReviewDTO;
import com.finalproj.missingitnow.product.model.dto.starsScoreDTO;
import com.finalproj.missingitnow.product.model.service.ProductService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
@RequestMapping("/product/*")
public class ProductController {

	private final ProductService productService;

	@Autowired
	public ProductController(ProductService productService) {
		this.productService = productService;
	}
	
	/* 메인 화면 상품 불러오기 */
	@GetMapping("main")
	public String main(Model model) {
		List<ProductListDTO> allproductTotSix = productService.allproductTotSix();
		List<ProductListDTO> allproductTopSeven = productService.allproductTopSeven();
		
		model.addAttribute("allproductTotSix", allproductTotSix);
		model.addAttribute("allproductTopSeven", allproductTopSeven);

		return "/main/main";
	}
	
	/* 상품 리스트 부르기 카테고리  */
	@GetMapping("productList")
	   public String test(Model model, @RequestParam(required=false) String prodCtgNo) {
		
		  List<ProductListDTO> productList = productService.selectProduct(prodCtgNo);
		  List<ProductDTO> price = new ArrayList<ProductDTO>(); 
		  int salePrice = 0;
		  int count = 0;
		  for(ProductListDTO list : productList) {
				double prodDiscountRate = (double) list.getProduct().getProdDiscountRate() / 100;
				double salePrice2 =  list.getProduct().getProdPrice() * ( 1 - prodDiscountRate);
				salePrice = (int)salePrice2;
				ProductDTO product = new ProductDTO();
				product.setProdNo(list.getProduct().getProdNo());
				product.setProdPrice(salePrice);
				price.add(product);
				count+=1;
			}
		  model.addAttribute("productList", productList);
		  model.addAttribute("price", price);
		  model.addAttribute("productListSize", productList.size());
		  
	      return "/product/product-list";
	   }

	@GetMapping("product")
	public String product(Model model, @RequestParam(required = false) String prodNo,
			@RequestParam(required = false) String corpNo) {
		List<ProductDTO> productList = productService.Product(prodNo);
		List<CorpDTO> corpList = productService.corp(corpNo);
		List<ReviewDTO> reviewList = productService.review(prodNo);
		List<CommentDTO> commentList = productService.comment(prodNo);
		
		int imgSize = productList.size();
		
		int count = 0;
		int sum = 0;
		int salePrice = 0;
		double onePointCount = 0;
		double twoPointCount = 0;
		double threePointCount = 0;
		double fourPointCount = 0;
		double fivePointCount = 0;
		
		int onePoint = 0;
		int twoPoint = 0;
		int threePoint = 0;
		int fourPoint = 0;
		int fivePoint = 0;

		int onePointSize = 0;
		int twoPointSize = 0;
		int threePointSize = 0;
		int fourPointSize = 0;
		int fivePointSize = 0;
		
		for(ProductDTO list : productList) {
			double prodDiscountRate = (double) list.getProdDiscountRate() / 100;
			double salePrice2 =  list.getProdPrice() * ( 1 - prodDiscountRate);
			salePrice = (int)salePrice2;
		}
		
		if(reviewList.size() == 0) {
		} else {
		for (ReviewDTO a : reviewList) {
			
			sum += a.getReviewScore();

			switch (a.getReviewScore()) {
			case 5:
				fivePointCount += 1;
				break;
			case 4:
				fourPointCount += 1;
				break;
			case 3:
				threePointCount += 1;
				break;
			case 2:
				twoPointCount += 1;
				break;
			case 1:
				onePointCount += 1;
				break;
			default:
				break;
			}
			count += 1;
		}
		}
		if(reviewList.size() == 0) {
			onePoint = 0;
			twoPoint = 0;
			threePoint = 0;
			fourPoint = 0;
			fivePoint = 0;

			onePointSize = 0;
			twoPointSize = 0;
			threePointSize = 0;
			fourPointSize = 0;
			fivePointSize = 0;
		} else {
		onePointCount = onePointCount / count * 100;
		twoPointCount = twoPointCount / count * 100;
		threePointCount = threePointCount / count * 100;
		fourPointCount = fourPointCount / count * 100;
		fivePointCount = fivePointCount / count * 100;
		sum = sum / count;

		onePoint = (int) onePointCount;
		twoPoint = (int) twoPointCount;
		threePoint = (int) threePointCount;
		fourPoint = (int) fourPointCount;
		fivePoint = (int) fivePointCount;

		onePointSize = 17 * onePoint / 10;
		twoPointSize = 17 * twoPoint / 10;
		threePointSize = 17 * threePoint / 10;
		fourPointSize = 17 * fourPoint / 10;
		fivePointSize = 17 * fivePoint / 10;
		}
		model.addAttribute("productList", productList);
		model.addAttribute("corpList", corpList);
		model.addAttribute("reviewList", reviewList);
		model.addAttribute("commentList", commentList);
		model.addAttribute("onePoint", onePoint);
		model.addAttribute("twoPoint", twoPoint);
		model.addAttribute("threePoint", threePoint);
		model.addAttribute("fourPoint", fourPoint);
		model.addAttribute("fivePoint", fivePoint);
		model.addAttribute("onePointSize", onePointSize);
		model.addAttribute("twoPointSize", twoPointSize);
		model.addAttribute("threePointSize", threePointSize);
		model.addAttribute("fourPointSize", fourPointSize);
		model.addAttribute("fivePointSize", fivePointSize);
		model.addAttribute("average", sum);
		model.addAttribute("count", count);
		model.addAttribute("salePrice", salePrice);
		model.addAttribute("imgSize", imgSize);

		return "/product/product";
	}

	// 상품댓글등록
	@PostMapping(value="/insertReview", produces ="application/json; charset=UTF-8")
	@ResponseBody public String insertProduct(Model model, HttpServletRequest request,
	@RequestParam("starValue") int starValue,@RequestParam("context") String context,@RequestParam("productNo") String productNo
	, @RequestParam("userNo") String userNo ) {
		HashMap<String, Object> insertReview = new HashMap<String, Object>(); 
		  insertReview.put("starValue", starValue);
		  insertReview.put("context", context); 
		  insertReview.put("productNo",productNo);
		  insertReview.put("userNo", userNo);
		  
//		  productService.reviewStar(insertReview);
		  
		  List<ReviewDTO> reviewList = productService.review(productNo);
		  String reviewNo = "";
		  
		  for(ReviewDTO list : reviewList) {
			  if(list.getUserNo().equals(userNo) && list.getReviewDetails().equals(context)) {
				  reviewNo = list.getReviewNo();
			  }
		  }
		  Gson gson = new	GsonBuilder().setDateFormat("").create();
		  
		  return gson.toJson(reviewList); 
	}
	
	// 상품문의등록
		@PostMapping(value="/insertComment", produces ="application/json; charset=UTF-8")
		@ResponseBody public String insertProduct(Model model, HttpServletRequest request,
		@RequestParam("context") String context,@RequestParam("prodNo") String prodNo
		, @RequestParam("userNo") String userNo) {
			
			  HashMap<String, Object> insertComment = new HashMap<String, Object>(); 
			  insertComment.put("text", context); 
			  insertComment.put("prodNo",prodNo);
			  insertComment.put("userNo", userNo);
			  productService.commentInsert(insertComment);
			  
			  List<CommentDTO> commentList = productService.comment(prodNo);
			  Gson gson = new	GsonBuilder().setDateFormat("").create();
		
			  return gson.toJson(commentList); 
		}
	

	@PostMapping(value = "/lowProductList", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String lowProductList(Model model, HttpServletRequest request ,
	@RequestParam("prodCtgNo") String prodCtgNo) {
		List<ProductListDTO> lowProductList = productService.selectProductLow(prodCtgNo);

		Gson gson = new GsonBuilder().setDateFormat("").create();

		return gson.toJson(lowProductList);
	}
	
	@PostMapping(value = "/highProductList", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String highProductList(Model model, HttpServletRequest request,
			@RequestParam("prodCtgNo") String prodCtgNo) {
		List<ProductListDTO> highProductList = productService.selectProductHigh(prodCtgNo);
		
		Gson gson = new GsonBuilder().setDateFormat("").create();
		
		return gson.toJson(highProductList);
	}
	
	/* 상품 리스트 인기상품 */
	@PostMapping(value = "/productPopularity", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String productPopularity(Model model, HttpServletRequest request 
			, @RequestParam("prodCtgNo") String prodCtgNo) {
		
		List<ProductListDTO> productPopularity = productService.selectProductPopularity(prodCtgNo);
		
		Gson gson = new GsonBuilder().setDateFormat("").create();
		
		return gson.toJson(productPopularity);
	}
	
	@PostMapping(value = "/productPriceChoice", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String productPriceChoice(Model model, HttpServletRequest request, 
			@RequestParam("prodCtgNo") String prodCtgNo , @RequestParam("highPrice") String highPrice
			,@RequestParam("lowPrice") String lowPrice) {
		HashMap<String, Object> price = new	HashMap<String, Object>(); 
		price.put("prodCtgNo", prodCtgNo);
		price.put("highPrice", highPrice);
		price.put("lowPrice", lowPrice);
		List<ProductListDTO> productPopularity = productService.selectProductPriceChoice(price);
		
		Gson gson = new GsonBuilder().setDateFormat("").create();
		
		return gson.toJson(productPopularity);
	}
	
	/* 결재 페이지 가는 경로*/
	@GetMapping("/payment")
	public String selectOrderDelete(Model model, @RequestParam(required=false) String prodNo) {

		List<ProductDTO> productList = productService.Product(prodNo);
	    List<ProductImgDTO> productImgList = productService.ProductImg(prodNo);
		
	    
	    model.addAttribute("productList", productList);
		model.addAttribute("productImgList", productImgList);
	
		return "/product/productPayment";
	}
	
	/* 결재 하면 */
	@PostMapping("/completioninster")
	public String insertProduct(Model model, @ModelAttribute OrderDTO orderDTO) {
		String prodNo = orderDTO.getProdNo();
		List<ProductImgDTO> productImgList = productService.ProductImg(prodNo);
		List<ProductDTO> productList = productService.Product(prodNo);
		/* 주문내역 */
		HashMap<String, Object> OrderList = new HashMap<String, Object>(); 
		OrderList.put("corpNo", orderDTO.getCorpNo()); 
		OrderList.put("prodNo", orderDTO.getProdNo()); 
		OrderList.put("userNo", orderDTO.getUserNo()); 
		OrderList.put("orderPrice", orderDTO.getOrderPrice()); 
		OrderList.put("dealingStatus", "상품준비중"); 
		OrderList.put("orderStatus", "Y"); 
		OrderList.put("orderOuantity", 1); 
		OrderList.put("orderDate", "SYSDATE");
		
		productService.orderInsert(OrderList);
		/* 구매 내역 */
		OrderPaymentDTO orderNo = productService.selectorderNo(OrderList);
		String noOrder = orderNo.getOrderNo();
		HashMap<String, Object> purchasedList = new HashMap<String, Object>(); 
		purchasedList.put("userNo", orderDTO.getUserNo());
		purchasedList.put("orderNo",noOrder);
		purchasedList.put("prodNo", orderDTO.getProdNo()); 
		
		productService.orderpurchasedInsert(purchasedList);
		/* 재고 수정  */
		HashMap<String, Object> stockUpdate = new HashMap<String, Object>(); 
		stockUpdate.put("prodNo",orderDTO.getProdNo());
		stockUpdate.put("number",1);
		productService.stockUpdate(stockUpdate);
		
		/* 결재 내역 */
		HashMap<String, Object> paymentInsert = new HashMap<String, Object>(); 
		paymentInsert.put("userNo",orderDTO.getUserNo());
		paymentInsert.put("price",orderDTO.getOrderPrice());
		productService.paymentInsert(paymentInsert);
		/* 구매결재 중간다리 역활 테이블 추가하기 */
		
		OrderPaymentDTO orderPayment = productService.orderPayment(purchasedList);
		
		HashMap<String, Object> orderPaymentInsert = new HashMap<String, Object>(); 
		orderPaymentInsert.put("orderNo",orderNo.getOrderNo());
		orderPaymentInsert.put("paymentNo",orderPayment.getPaymentNo());
		productService.orderPaymentInsert(orderPaymentInsert);
		
		 model.addAttribute("productList", productList);
		 model.addAttribute("productImgList", productImgList);
		
		return "product/productPaymentCompletion"; 
	}
	
	/* 장바구니 등록하기 */
	
	@PostMapping(value = "/myPageCart", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String myPageCart(Model model, HttpServletRequest request, 
			@RequestParam("prodNo") String prodNo , @RequestParam("userNo") String userNo
			) {
		int count = 1;

		HashMap<String, Object> myPageCart = new	HashMap<String, Object>(); 
		myPageCart.put("userNo", userNo);
		myPageCart.put("prodNo", prodNo);
		myPageCart.put("count", count);
		boolean cart = productService.cart(myPageCart);
		String myCart = "";
		if(cart) {
			myCart = "장바구니 등록 성공";
		} else {
			myCart = "장바구니 등록 실패";	
		}
		Gson gson = new GsonBuilder().setDateFormat("").create();

		return gson.toJson(myCart);
	}
	
	
	
	/* 검색해서 상품 리스트 출력 페이지 */
	@GetMapping("/productSearch")
	public String productSearch(Model model, @RequestParam(required=false) String search) {
		  List<ProductListDTO> productList = productService.productSearch(search);
		  List<ProductDTO> price = new ArrayList<ProductDTO>(); 
		  int salePrice = 0;
		  int count = 0;
		  for(ProductListDTO list : productList) {
				double prodDiscountRate = (double) list.getProduct().getProdDiscountRate() / 100;
				double salePrice2 =  list.getProduct().getProdPrice() * ( 1 - prodDiscountRate);
				salePrice = (int)salePrice2;
				ProductDTO product = new ProductDTO();
				product.setProdNo(list.getProduct().getProdNo());
				product.setProdPrice(salePrice);
				price.add(product);
				count+=1;
			}
		  model.addAttribute("productList", productList);
		  model.addAttribute("price", price);
	
		return "/product/product-list";
	}
	
	@PostMapping(value = "/ketSearch", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String ketSearch(Model model, HttpServletRequest request, @RequestParam("search") String search) {
		List<ProductDTO> ketSearchList = new ArrayList<ProductDTO>();
		
		int ketTrue = 0;
		int count = 0;
		int one = 0;
		int listconut = 0;

		List<ProductDTO> ketSearch = productService.selectketSearch();
		List<ProductListDTO> ketSearchTopList = productService.ketSearchTopList(search);
		
//		for (ProductDTO list : ketSearch) { // 리스트 많큼 돌려라
//			if (listconut == 5) { // 리스트 5개 차면 그만
//				break;
//			}
//			for (int a = 0; a < search.length(); a++) { // 가져올 글자수 많큼 돌려라
//				for (int i = 0; i < list.getProdName().length(); i++) { // 리스트 안에있는 물건 이름 글자수 많큼 돌려라
//
//					if (search.length() == 1) { // 친 글자가 하나일 경우
//						if (list.getProdName().charAt(i) == search.charAt(a)) {
//							ProductDTO product = new ProductDTO();
//							product.setProdName(list.getProdName());
//							product.setProdImgRename(list.getProdImgRename());
//							product.setProdNo(list.getProdNo());
//							product.setCorpNo(list.getCorpNo());
//							ketSearchList.add(product);
//							listconut += 1;
//						}
//					} else if (search.length() != 1) { // 친글자가 두개 이상일 경우
//
//						if (list.getProdName().charAt(i) == search.charAt(a)) { // 글자 비교
//							if (one == 0) { // 글자 비교 두개이상해야해서 첫번째는 비교를 원할하게 하기위해
//								ketTrue += 1;
//								one = 2;
//								count = i;
//							} else if (one == 2) { // 글자 비교 두개이상해야해서 첫번째는 비교를 원할하게 하기위해
//								if (i == (count + 1)) { // 글자 비교할때 2개 이상 값들이 붙어 있는지 확인작업
//									ketTrue += 1;
//									count = i;
//								}
//							}
//						}
//						if (ketTrue == search.length()) {
//							ProductDTO product = new ProductDTO();
//							product.setProdImgRename(list.getProdImgRename());
//							product.setProdName(list.getProdName());
//							product.setProdNo(list.getProdNo());
//							product.setCorpNo(list.getCorpNo());
//							ketSearchList.add(product);
//							listconut += 1;
//							ketTrue = 0;
//							one = 0;
//						}
//					}
//				}
//			}
//		}
		if (ketSearchTopList.size() == 0) {
			ProductDTO product = new ProductDTO();
			product.setProdName("검색결과가 없습니다");
			ProductListDTO productListDTO = new ProductListDTO();
			productListDTO.setProduct(product);
			ketSearchTopList.add(productListDTO);
		}
		Gson gson = new GsonBuilder().setDateFormat("").create();
		return gson.toJson(ketSearchTopList);
	}	

	
}
