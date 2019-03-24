package service;


import bean.User;
import dao.UserDao;

public class UserService {
	UserDao userDao = new UserDao();
	public User login(String account, String password) throws Exception {
		return userDao.login(account,password);
	}
	public void register(User user) throws Exception {
		userDao.register(user);
	}

}
