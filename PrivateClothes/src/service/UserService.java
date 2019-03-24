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
	public void userImg(User user) throws Exception{
		userDao.userImg(user);
	}
	public User findUserById(String id) throws Exception{
		return userDao.findUserById(id);
	}
	public void userData(User user) throws Exception{
		userDao.userData(user);
	}
	public void userPassword(String id, String newPassword) throws Exception{
		userDao.userPassword(id,newPassword);
	}

}
