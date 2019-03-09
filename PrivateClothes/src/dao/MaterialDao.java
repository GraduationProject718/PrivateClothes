package dao;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import bean.Material;
import utils.JDBCUtils;

public class MaterialDao {

	public List<Material> findAllMaterial() throws Exception{
		String sql = "select * from material";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<Material>(Material.class));
	}

}
