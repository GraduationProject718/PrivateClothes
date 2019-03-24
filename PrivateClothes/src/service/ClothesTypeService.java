package service;

import java.util.List;

import bean.ClothesType;
import dao.ClothesTypeDao;

public class ClothesTypeService {
	ClothesTypeDao clothesTypeDao = new ClothesTypeDao();
	
	public List<ClothesType> findAllType() throws Exception{
		return clothesTypeDao.findAllType() ;
	}

	public List<ClothesType> indexClothesType() throws Exception{
		return clothesTypeDao.indexClothesType();
	}

	
}
