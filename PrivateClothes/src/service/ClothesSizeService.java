package service;

import java.util.List;

import bean.ClothesSize;
import dao.ClothesSizeDao;

public class ClothesSizeService {
	ClothesSizeDao clothesSizeDao = new ClothesSizeDao();
	public List<ClothesSize> findAllSize() throws Exception{
		return clothesSizeDao.findAllSize();
	}

}
