package service;

import bean.Cart;
import dao.CartDao;

public class CartService {
	CartDao cartDao = new CartDao();
	public void add(Cart cart) throws Exception{
		cartDao.add(cart);
	}

}
