package com.finalproj.missingitnow.corpMng.model.dao;

import java.util.List;
import java.util.Map;
import com.finalproj.missingitnow.corpMng.model.dto.ProdMngProductDTO;



public interface ProdMngProductDAO {

	List<ProdMngProductDTO> selectProductList();

	int insertProductInfo(ProdMngProductDTO prodMngProduct);

	int insertProdImg(Map<String, String> file);

	List<ProdMngProductDTO> selectProductByCtg(String prodCtgNo);

	List<ProdMngProductDTO> selectProductByName(String prodName);

	List<ProdMngProductDTO> selectProductForUpdate(String prodNo);

	int updateProductInfo(ProdMngProductDTO prodMngProduct);

	int deleteProdImg(ProdMngProductDTO prodMngProduct);

	int updateProdImg(Map<String, String> file);
	
	


}
