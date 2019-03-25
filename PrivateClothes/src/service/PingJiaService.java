package service;

import java.util.List;

import bean.Article;
import bean.Clothes;
import bean.PageModel;
import bean.PingJia;
import dao.PingJiaDao;

public class PingJiaService {
	PingJiaDao pingjiaDao = new PingJiaDao();
	public void add(PingJia pingjia) throws Exception{
		pingjiaDao.add(pingjia);
	}

	public List<PingJia> findIndexByCId(String id)throws Exception {
		return pingjiaDao.findIndexByCId(id);
	}

	public PageModel findAllByAdmin(int curNum) throws Exception{
		int totalRecords =pingjiaDao.findTotalRecords();
		PageModel pm = new PageModel(curNum,totalRecords,5);
		List<PingJia> list = pingjiaDao.findAllByAdmin(pm.getStartIndex(),pm.getPageSize());
		pm.setList(list);
		pm.setUrl("PingJiaServlet?method=findAllByAdmin");
		return pm;
	}

	public void del(String id) throws Exception{
		pingjiaDao.del(id);
	}
	

}
