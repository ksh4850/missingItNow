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
		List<ProductDTO> allproductTotSix = productService.allproductTotSix();
		List<ProductDTO> allproductTopSeven = productService.allproductTopSeven();
		
		
		
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
	, @RequestParam("userNo") String userNo  /*, List<MultipartFile> multiFilesImg*/) {
		
		HashMap<String, Object> insertReview = new HashMap<String, Object>(); 
		  insertReview.put("starValue", starValue);
		  insertReview.put("context", context); 
		  insertReview.put("productNo",productNo);
		  insertReview.put("userNo", userNo);
		  
		  productService.reviewStar(insertReview);
		  
		  List<ReviewDTO> reviewList = productService.review(productNo);
		  
		  String reviewNo = "";
		  
		  for(ReviewDTO list : reviewList) {
			  if(list.getUserNo().equals(userNo) && list.getReviewDetails().equals(context)) {
				  reviewNo = list.getReviewNo();
			  }
		  }
		  
		  Gson gson = new	GsonBuilder().setDateFormat("").create();
//	
//		  String root = request.getSession().getServletContext().getRealPath("resources");
//			String filePath = root + "\\uploadFiles";
//			
//			List<Map<String, String>> files = new ArrayList<>();
//			for(int i = 0 ; i < multiFilesImg.size() ; i++) {
//				String originFileName = multiFilesImg.get(i).getOriginalFilename();
//				String ext = originFileName.substring(originFileName.lastIndexOf("."));
//				String saveName = UUID.randomUUID().toString().replace("-", "") + ext;
//				
//				Map<String, String> file = new HashMap<>();
//				file.put("originFileName", originFileName);
//				file.put("saveName", saveName);
//				file.put("filePath", filePath);
//				
//				files.add(file);
//			}
//			
//			/* 파일을 저장한다. */
//			try {
//				for(int i = 0 ; i < multiFilesImg.size() ; i++) {
//					Map<String, String> file = files.get(i);
//					file.put("productNo", productNo);
//					file.put("reviewNo", reviewNo);
//					
//					multiFilesImg.get(i).transferTo(new File(filePath + "\\" + file.get("saveName")));
//					
//					productService.reviewImgInsert(file);
//				}
//				
//			} catch (IllegalStateException | IOException e) {
//				e.printStackTrace();
//				
//				/* 실패시 파일 삭제 */
//				for(int i = 0 ; i < multiFilesImg.size(); i++) {
//					Map<String, String> file = files.get(i);
//					new File(filePath + "\\" + file.get("saveName")).delete();
//				}
//			}
		  
		  return gson.toJson(reviewList); 
	}
	
	// 상품문의등록
		@PostMapping(value="/insertComment", produces ="application/json; charset=UTF-8")
		@ResponseBody public String insertProduct(Model model, HttpServletRequest request,
		@RequestParam("context") String context,@RequestParam("prodNo") String prodNo
		, @RequestParam("userNo") String userNo) {
			
			System.out.println(prodNo);
			  HashMap<String, Object> insertComment = new HashMap<String, Object>(); 
			  insertComment.put("text", context); 
			  insertComment.put("prodNo",prodNo);
			  insertComment.put("user", userNo);
			  System.out.println(insertComment);
			  productService.commentInsert(insertComment);
			  
			  List<CommentDTO> commentList = productService.comment(prodNo);
			  System.out.println(commentList); 
			  Gson gson = new	GsonBuilder().setDateFormat("").create();
		
			  return gson.toJson(commentList); 
		}
	

	@PostMapping(value = "/lowProductList", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String lowProductList(Model model, HttpServletRequest request ,
	@RequestParam("prodCtgNo") String prodCtgNo) {
		List<ProductDTO> lowProductList = productService.selectProductLow(prodCtgNo);

		System.out.println(lowProductList);
		Gson gson = new GsonBuilder().setDateFormat("").create();

		return gson.toJson(lowProductList);
	}
	
	@PostMapping(value = "/highProductList", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String highProductList(Model model, HttpServletRequest request,
			@RequestParam("prodCtgNo") String prodCtgNo) {
		System.out.println("오나요 여기는 에초에" + prodCtgNo);
		List<ProductDTO> highProductList = productService.selectProductHigh(prodCtgNo);
		
		System.out.println(highProductList);
		Gson gson = new GsonBuilder().setDateFormat("").create();
		
		return gson.toJson(highProductList);
	}
	
	@PostMapping(value = "/productPopularity", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String productPopularity(Model model, HttpServletRequest request 
			/*@RequestParam("prodCtgNo") String prodCtgNo*/) {
		String prodCtgNo = "PRCT0001";
		List<ProductDTO> productPopularity = productService.selectProductPopularity(prodCtgNo);
		
		System.out.println(productPopularity);
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
		List<ProductDTO> productPopularity = productService.selectProductPriceChoice(price);
		
		System.out.println(productPopularity);
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
		OrderPaymentDTO orderNo = productService.selectorderNo(orderDTO.getProdNo());
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
		
		OrderPaymentDTO orderPayment = productService.orderPayment(noOrder);
		System.out.println(orderPayment.getPaymentNo()+"productService");
		
		HashMap<String, Object> orderPaymentInsert = new HashMap<String, Object>(); 
		orderPaymentInsert.put("orderNo",orderNo.getOrderNo());
		orderPaymentInsert.put("paymentNo",orderPayment.getPaymentNo());
		System.out.println(orderPaymentInsert);
		productService.orderPaymentInsert(orderPaymentInsert);
		
		
		 model.addAttribute("productList", productList);
		 model.addAttribute("productImgList", productImgList);
		
		return "product/productPaymentCompletion"; 
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
		System.out.println(cart);
		String myCart = "";
		if(cart) {
			myCart = "장바구니 등록 성공";
		} else {
			myCart = "장바구니 등록 실패";	
		}
		Gson gson = new GsonBuilder().setDateFormat("").create();
		
		return gson.toJson(myCart);
	}
	
}
