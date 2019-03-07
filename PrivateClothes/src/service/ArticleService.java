package service;

import java.sql.SQLException;
import java.util.List;

import bean.Article;
import bean.PageModel;
import dao.ArticleDao;

public class ArticleService {
	ArticleDao articleDao = new ArticleDao();
	public void addArticle(Article article) throws SQLException{
		articleDao.addArticle(article);
	}
	public PageModel getList(int curNum) throws Exception{
		int totalRecords =articleDao.findTotalRecords();
		PageModel pm = new PageModel(curNum,totalRecords,5);
		List<Article> list = articleDao.getList(pm.getStartIndex(),pm.getPageSize());
		pm.setList(list);
		pm.setUrl("ArticleServlet?method=getList");
		return pm;
	}
	public boolean delArticle(String id) throws Exception{
		if(articleDao.delArticle(id)) {
			return true;
		}
		return false;
	}
	public Article getArticleById(String id) throws Exception{
		return articleDao.getArticleById(id);
	}
	public boolean editArticle(Article article) throws Exception{
		if(articleDao.editArticle(article)) {
			return true;
		}
		return false;
	}
	public PageModel indexGetList(int curNum) throws Exception{
		int totalRecords =articleDao.findTotalRecords();
		PageModel pm = new PageModel(curNum,totalRecords,5);
		List<Article> list = articleDao.getList(pm.getStartIndex(),pm.getPageSize());
		pm.setList(list);
		pm.setUrl("ArticleServlet?method=indexGetList");
		return pm;
	}

}
