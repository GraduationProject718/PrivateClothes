package service;


import java.util.List;

import bean.PageModel;
import bean.PingJia;
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
	public List<User> allUser() throws Exception{
		return userDao.allUser();
	}
	public PageModel findAllByAdmin(int curNum)  throws Exception{
		int totalRecords =userDao.findTotalRecords();
		PageModel pm = new PageModel(curNum,totalRecords,5);
		List<User> list = userDao.findAllByAdmin(pm.getStartIndex(),pm.getPageSize());
		pm.setList(list);
		pm.setUrl("UserServlet?method=findAllByAdmin");
		return pm;
	}
	public void del(String id) throws Exception{
		userDao.del(id);
	}

}
