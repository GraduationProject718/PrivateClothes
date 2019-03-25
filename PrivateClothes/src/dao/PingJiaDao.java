package dao;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import bean.Article;
import bean.PingJia;
import utils.JDBCUtils;

public class PingJiaDao {

	public void add(PingJia pingjia) throws Exception{
		String sql = "insert into pingjia values(?,?,?,?,?)";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		Object[] params = {pingjia.getId(),pingjia.getContent(),pingjia.getuId(),pingjia.getcId(),pingjia.getDate()};
		qr.update(sql,params);
	}

	public List<PingJia> findIndexByCId(String id)throws Exception {
		String sql = "select * from pingjia where cId=? order by date desc";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<PingJia>(PingJia.class),id);
	}

	public int findTotalRecords() throws Exception{
		String sql = "select count(*) from pingjia";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		Long num = (Long)qr.query(sql, new ScalarHandler());
		return num.intValue();
	}

	public List<PingJia> findAllByAdmin(int startIndex, int pageSize)throws Exception {
		String sql = "select * from pingjia order by date desc limit ?,?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<PingJia>(PingJia.class),startIndex,pageSize);
	}

	public void del(String id) throws Exception{
		String sql = "delete from pingjia where id=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		qr.update(sql,id);
	}

}
