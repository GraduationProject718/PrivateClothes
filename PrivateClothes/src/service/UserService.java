package service;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import bean.User;
import dao.UserDao;
import utils.JDBCUtils;

public class UserService {
	UserDao userDao = new UserDao();
	public User login(String account, String password) throws Exception {
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

}
