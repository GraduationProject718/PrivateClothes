package dao;

import org.apache.commons.dbutils.QueryRunner;

import bean.Cart;
import utils.JDBCUtils;

public class CartDao {

	public void add(Cart cart) throws Exception{
		String sql = "insert into cart values(?,?,?)";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		Object[] params = {cart.getId(),cart.getUid(),cart.getCid()};
		qr.update(sql,params);
	}

}
