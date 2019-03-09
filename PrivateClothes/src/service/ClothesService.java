package service;

import java.util.List;

import bean.Clothes;
import bean.PageModel;
import dao.ClothesDao;

public class ClothesService {
	ClothesDao clothesDao = new ClothesDao();
	public PageModel getList(int curNum) throws Exception {
		int totalRecords =clothesDao.findTotalRecords();
		PageModel pm = new PageModel(curNum,totalRecords,5);
		List<Clothes> list = clothesDao.getList(pm.getStartIndex(),pm.getPageSize());
		pm.setList(list);
		pm.setUrl("ClothesServlet?method=getList");
		return pm;
	}
	public void addClothes(Clothes clothes) throws Exception{
		clothesDao.addClothes(clothes);
	}
	public void delClothes(String id) throws Exception{
		clothesDao.delClothes(id);
	}
	public Clothes editClothesByIdUI(String id) throws Exception{
		return clothesDao.editClothesByIdUI(id);
	}
	public void editClothes(Clothes clothes) throws Exception{
		clothesDao.editClothes(clothes);
	}

}
