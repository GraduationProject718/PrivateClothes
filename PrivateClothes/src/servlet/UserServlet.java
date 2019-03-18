package servlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.User;
import service.UserService;
import utils.UUIDUtils;

public class UserServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	UserService userService = new UserService();
	public String login(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String account = request.getParameter("account");
		String password = request.getParameter("password");
		User user = userService.login(account, password);
		request.getSession().setAttribute("user", user);
		return "index.jsp";
		
	}

	public String register(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String account = request.getParameter("account");
		String password= request.getParameter("password");
		String name = request.getParameter("name");
		String info= request.getParameter("info");
		String gender= request.getParameter("gender");
		String birthday = request.getParameter("birthday");
		String address= request.getParameter("address");
		String phone= request.getParameter("phone");
		User user = new User();
		user.setId(UUIDUtils.getId());
		user.setAccount(account);
		user.setPassowrd(password);
		user.setName(name);
		user.setInfo(info);
		user.setGender(gender);
		user.setBirthday(birthday);
		user.setAddress(address);
		user.setPhone(phone);
		user.setImg("images/contac.jpg");
		userService.register(user);
		response.sendRedirect("login.jsp");
		return null;
	}
}
