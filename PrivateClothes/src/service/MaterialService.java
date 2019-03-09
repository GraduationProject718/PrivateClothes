package service;

import java.util.List;

import bean.Material;
import dao.MaterialDao;

public class MaterialService {
	 MaterialDao materialDao = new MaterialDao();
	public List<Material> findAllMaterial() throws Exception{
		return materialDao.findAllMaterial();
	}

}
