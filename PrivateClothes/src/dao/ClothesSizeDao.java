package dao;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import bean.ClothesSize;
import utils.JDBCUtils;

public class ClothesSizeDao {

	public List<ClothesSize> findAllSize() throws Exception{
		String sql = "select * from clothessize";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<ClothesSize>(ClothesSize.class));
	}

}
