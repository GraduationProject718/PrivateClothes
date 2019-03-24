package dao;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import bean.User;
import utils.JDBCUtils;

public class UserDao {

	public User login(String account, String password) throws Exception{
		String sql = "select * from user where account = ? and password=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanHandler<User>(User.class),account,password);
	}

	public void register(User user) throws Exception {
		String sql = "insert into user values(?,?,?,?,?,?,?,?,?,?)";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		Object[] params = {user.getId(),user.getAccount(),user.getPassowrd(),user.getName(),user.getInfo(),user.getGender(),user.getBirthday(),user.getAddress(),user.getPhone(),user.getImg()};
		qr.update(sql,params);
	}

	public void userImg(User user) throws Exception{
		String sql = "update user set img=? where id=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		qr.update(sql,user.getImg(),user.getId());
	}

	public User findUserById(String id) throws Exception{
		String sql = "select * from user where id=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanHandler<User>(User.class),id);
	}

	public void userData(User user) throws Exception{
		String sql = "update user set name=?, info=?, gender=?, birthday=?, address=?, phone=? where id=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		Object[] params = {user.getName(),user.getInfo(),user.getGender(),user.getBirthday(),user.getAddress(),user.getPhone(),user.getId()};
		qr.update(sql,params);
	}

	public void userPassword(String id, String newPassword)throws Exception{
		String sql = "update user set password=? where id=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		qr.update(sql,newPassword,id);
	}
}
