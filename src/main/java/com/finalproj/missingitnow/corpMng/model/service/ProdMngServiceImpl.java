package com.finalproj.missingitnow.corpMng.model.service;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalproj.missingitnow.common.page.PageInfoDTO;
import com.finalproj.missingitnow.corpMng.model.dao.ProdMngProductDAO;
import com.finalproj.missingitnow.corpMng.model.dto.CorpUserDTO;
import com.finalproj.missingitnow.corpMng.model.dto.ProdMngProductDTO;
import com.finalproj.missingitnow.corpMng.model.dto.ProdMngProductKeywordsDTO;


@Service
public class ProdMngServiceImpl implements ProdMngService {
	
	private final ProdMngProductDAO prodMngProductDAO;
	
	@Autowired
	public ProdMngServiceImpl(ProdMngProductDAO prodMngProductDAO) {
		this.prodMngProductDAO = prodMngProductDAO;
	}
	
	@Override
	public int selectTotalProductList(CorpUserDTO corpUserSession) {
		return prodMngProductDAO.selectTotalProductList(corpUserSession);
	}
	
	@Override
	public List<ProdMngProductDTO> selectProductList(Map<String, Object> params) {
		return prodMngProductDAO.selectProductList(params);
	}
	
	@Override
	public int searchTotalProductList(Map<String, Object> params) {
		return prodMngProductDAO.searchTotalProductList(params);
	}
	
	@Override
	public List<ProdMngProductDTO> searchProductList(Map<String, Object> params) {
		return prodMngProductDAO.searchProductList(params);
	}

	@Override
	public int insertProductInfo(ProdMngProductDTO prodMngProduct) {
		return prodMngProductDAO.insertProductInfo(prodMngProduct);
	}

	@Override
	public int insertProdImg(Map<String, String> file) {
		return prodMngProductDAO.insertProdImg(file);
	}
	
	@Override
	public int insertKeywords(Map<String, String> key) {
		return prodMngProductDAO.insertKeywords(key);
	}
	
	@Override
	public List<ProdMngProductDTO> selectProductForUpdate(ProdMngProductDTO prodMngProduct) {
		return prodMngProductDAO.selectProductForUpdate(prodMngProduct);
	}

	@Override
	public int updateProductInfo(ProdMngProductDTO prodMngProduct) {
		return prodMngProductDAO.updateProductInfo(prodMngProduct);
	}

	@Override
	public int deleteProdImg(ProdMngProductDTO prodMngProduct) {
		return prodMngProductDAO.deleteProdImg(prodMngProduct);
	}

	@Override
	public int updateProdImg(Map<String, String> file) {
		return prodMngProductDAO.updateProdImg(file);
	}

	

	

	

	

	

	


	








	



	
}
