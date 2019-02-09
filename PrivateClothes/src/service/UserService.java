package service;

import bean.User;
import dao.Dao;

public class UserService {
	Dao dao = new Dao();
	public boolean register(User u) {
		String sql = "insert into user(account,password,name,info,gender,birthday,address,phone,imgName,imgUrl) "
				+ "value('"+u.getAccount()+"','"+u.getPassword()+"','"+u.getName()+"','"+u.getInfo()+"','"+u.getGender()+"','"+u.getBirthday()+"','"+u.getAddress()+"','"+u.getPhone()+"','"+u.getImgName()+"','"+u.getImgUrl()+"')";
		if(dao.update(sql)>0){
			return true;
		}
		return false;
	}
}
