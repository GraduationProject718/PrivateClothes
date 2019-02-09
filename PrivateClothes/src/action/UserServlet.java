package action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.User;
import service.UserService;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UserServlet() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String op = request.getParameter("op");
		UserService userService = new UserService();
		User user;
		if("register".equals(op)){
			user = new User();
			String account = request.getParameter("account");
			String password = request.getParameter("password");
			user.setAccount(account);
			user.setPassword(password);
			user.setName("");
			user.setInfo("");
			user.setGender("");
			user.setBirthday("2000-01-01");
			user.setAddress("");
			user.setPhone("");
			user.setImgName("");
			user.setImgUrl("");
			if(userService.register(user)){
				response.sendRedirect("../login.jsp");
			}
		}
	}
}
