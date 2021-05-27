package com.finalproj.missingitnow.corpMng.model.service;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.finalproj.missingitnow.corpMng.model.dao.ProdMngProductDAO;
import com.finalproj.missingitnow.corpMng.model.dto.ProdMngProductDTO;


@Service
public class ProdMngServiceImpl implements ProdMngService {
	
	private final ProdMngProductDAO prodMngProductDAO;
	
	@Autowired
	public ProdMngServiceImpl(ProdMngProductDAO prodMngProductDAO) {
		this.prodMngProductDAO = prodMngProductDAO;
	}

	@Override
	public List<ProdMngProductDTO> selectProductList() {
		return prodMngProductDAO.selectProductList();
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
	public List<ProdMngProductDTO> selectProductByCtg(String prodCtgNo) {
		return prodMngProductDAO.selectProductByCtg(prodCtgNo);
	}

	@Override
	public List<ProdMngProductDTO> selectProductByName(String prodName) {
		return prodMngProductDAO.selectProductByName(prodName);
	}

	@Override
	public List<ProdMngProductDTO> selectProductForUpdate(String prodNo) {
		return prodMngProductDAO.selectProductForUpdate(prodNo);
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
