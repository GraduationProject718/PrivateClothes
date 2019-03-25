package servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.IOUtils;

import bean.Article;
import bean.PageModel;
import bean.User;
import service.UserService;
import utils.UUIDUtils;
import utils.UploadUtils;

public class UserServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	UserService userService = new UserService();
	
	
	public String findAllByAdmin(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int curNum = Integer.parseInt(request.getParameter("num"));
		PageModel pm = userService.findAllByAdmin(curNum);
		request.setAttribute("page", pm);
		return "/admin/user/list.jsp";
	}
	public String del(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		userService.del(id);
		response.sendRedirect("UserServlet?method=findAllByAdmin&num=1");
		return null;
	}
	public String exit(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.getSession().invalidate();
		response.sendRedirect("IndexServlet");
		return null;
	}
	public String userPassword(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String newPassword = request.getParameter("newPassword");
		userService.userPassword(id,newPassword);
		response.sendRedirect("UserServlet?method=findUserById&id="+id);
		return null;
	}
	public String userData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		String name= request.getParameter("name");
		String info= request.getParameter("info");
		String gender= request.getParameter("gender");
		String birthday= request.getParameter("birthday");
		String address= request.getParameter("address");
		String phone= request.getParameter("phone");
		User user = new User();
		user.setId(id);
		user.setName(name);
		user.setInfo(info);
		user.setGender(gender);
		user.setBirthday(birthday);
		user.setAddress(address);
		user.setPhone(phone);
		userService.userData(user);
		response.sendRedirect("UserServlet?method=findUserById&id="+user.getId());
		return null;
	}
	
	public String findUserById(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		User user = userService.findUserById(id);
		request.getSession().setAttribute("user", user);
		response.sendRedirect("user.jsp");
		return null;
	}
	
	public String userImg(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Map<String,String> map=new HashMap<String,String>();
		User user= new User();
		try {
			DiskFileItemFactory fac=new DiskFileItemFactory();
			ServletFileUpload upload=new ServletFileUpload(fac);
			List<FileItem> list=upload.parseRequest(request);
			for (FileItem item : list) {
				if(item.isFormField()){
					map.put(item.getFieldName(), item.getString("utf-8"));
				}else{
					String oldFileName=item.getName();
					String newFileName=UploadUtils.getUUIDName(oldFileName);
					InputStream is=item.getInputStream();
					String realPath=getServletContext().getRealPath("/img/user/");
					String dir=UploadUtils.getDir(newFileName); 
					String path=realPath+dir; 
					File newDir=new File(path);
					if(!newDir.exists()){
						newDir.mkdirs();
					}
					File finalFile=new File(newDir,newFileName);
					if(!finalFile.exists()){
						finalFile.createNewFile();
					}
					OutputStream os=new FileOutputStream(finalFile);
					IOUtils.copy(is, os);
					IOUtils.closeQuietly(is);
					IOUtils.closeQuietly(os);
					map.put("img", "/img/user/"+dir+"/"+newFileName);
				}
			}
			BeanUtils.populate(user, map);
			userService.userImg(user);
			response.sendRedirect("UserServlet?method=findUserById&id="+user.getId());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public String login(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String account = request.getParameter("account");
		String password = request.getParameter("password");
		User user = userService.login(account, password);
		if(user == null) {
			request.setAttribute("msg", "账号或密码有误");
			return "login.jsp";
		}
		request.getSession().setAttribute("user", user);
		response.sendRedirect("IndexServlet");
		return null;
		
	}

	public String register(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String account = request.getParameter("account");
		String password= request.getParameter("password");
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		String phone= request.getParameter("phone");
		User user = new User();
		user.setId(UUIDUtils.getId());
		user.setAccount(account);
		user.setPassowrd(password);
		user.setName(name);
		user.setInfo("");
		user.setGender("男");
		user.setBirthday(birthday);
		user.setAddress("");
		user.setPhone(phone);
		user.setImg("images/contac.jpg");
		userService.register(user);
		response.sendRedirect("login.jsp");
		return null;
	}
}
