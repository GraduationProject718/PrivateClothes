package dao;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;


import bean.ClothesType;
import utils.JDBCUtils;

public class ClothesTypeDao {

	public List<ClothesType> findAllType() throws Exception{
		String sql = "select * from clothestype";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<ClothesType>(ClothesType.class));
	}

}
