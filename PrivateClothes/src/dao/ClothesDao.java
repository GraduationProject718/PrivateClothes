package dao;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import bean.Clothes;
import utils.JDBCUtils;

public class ClothesDao {

	public int findTotalRecords() throws Exception{
		String sql = "select count(*) from clothes";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		Long num = (Long)qr.query(sql, new ScalarHandler());
		return num.intValue();
	}

	public List<Clothes> getList(int startIndex, int pageSize)throws Exception {
		String sql = "select * from clothes order by date desc limit ?,?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<Clothes>(Clothes.class),startIndex,pageSize);
	}

	public void addClothes(Clothes clothes) throws Exception{
		String sql = "insert into clothes values(?,?,?,?,?,?,?,?,?,?,?,?)";
		QueryRunner qr=new QueryRunner(JDBCUtils.getDataSource());
		Object[] params= {clothes.getId(),clothes.getClothesTypeId(),clothes.getGender(),clothes.getName(),clothes.getInfo(),clothes.getMaterialId(),clothes.getSize(),clothes.getColor(),clothes.getPrice(),clothes.getNum(),clothes.getImg(),clothes.getDate()};
		qr.update(sql,params);
	}

	public void delClothes(String id) throws Exception{
		String sql = "delete from clothes where id = ?";
		QueryRunner qr=new QueryRunner(JDBCUtils.getDataSource());
		qr.update(sql,id);
		
	}

	public Clothes editClothesByIdUI(String id) throws Exception{
		String sql = "select * from clothes where id = ?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanHandler<Clothes>(Clothes.class),id);
	}

	public void editClothes(Clothes clothes) throws Exception{
		String sql="UPDATE clothes SET clothesTypeId=?, gender=?, name=?, info=?, materialId=?, size=?, color=?, price=?, num=?, img=?, date=? where id=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		Object[] params= {clothes.getClothesTypeId(),clothes.getGender(),clothes.getName(),clothes.getInfo(),clothes.getMaterialId(),clothes.getSize(),clothes.getColor(),clothes.getPrice(),clothes.getNum(),clothes.getImg(),clothes.getDate(),clothes.getId()};
		qr.update(sql,params);
	}

}
