package dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import bean.Article;
import utils.JDBCUtils;

public class ArticleDao {

	public void addArticle(Article article) throws SQLException {
		String sql = "insert into article values(?,?,?,?,?)";
		QueryRunner qr=new QueryRunner(JDBCUtils.getDataSource());
		Object[] params={article.getId(),article.getTitle(),article.getContent(),article.getDate(),article.getImg()};
		qr.update(sql,params);
	}

	public int findTotalRecords() throws Exception{
		String sql = "select count(*) from article";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		Long num = (Long)qr.query(sql, new ScalarHandler());
		return num.intValue();
	}

	public List<Article> getList(int startIndex, int pageSize)throws Exception {
		String sql = "select * from article order by date desc limit ?,?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<Article>(Article.class),startIndex,pageSize);
	}

	public boolean delArticle(String id) throws Exception {
		String sql = "delete from article where id = ?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		qr.update(sql,id);
		return true;
	}

	public Article getArticleById(String id)  throws Exception{
		String sql ="select * from article where id=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanHandler<Article>(Article.class),id);
	}

	public boolean editArticle(Article article) throws Exception{
		String sql="UPDATE article SET title=? ,content=? ,date= ?, img=? WHERE id=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		Object[] params={article.getTitle(),article.getContent(),article.getDate(),article.getImg(),article.getId()};
		qr.update(sql,params);
		return true;
	}
	

}
