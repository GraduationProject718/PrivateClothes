package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Cart;
import service.CartService;
import utils.UUIDUtils;

public class CartServlet extends BaseServlet {
	CartService cartService = new CartService();
	public String add(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String uid = request.getParameter("uid");
		String cid = request.getParameter("cid");
		Cart cart = new Cart();
		cart.setId(UUIDUtils.getId());
		cart.setUid(uid);
		cart.setCid(cid);
		cartService.add(cart);
		response.sendRedirect("");
		return null;
	}
}
