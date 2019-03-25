package servlet;


import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.PageModel;
import bean.PingJia;
import service.PingJiaService;
import utils.UUIDUtils;

public class PingJiaServlet extends BaseServlet {
	PingJiaService pingjiaService = new PingJiaService();
	
	public String add(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String content = request.getParameter("content");
		String cId= request.getParameter("cId");
		String uId= request.getParameter("uId");
		PingJia pingjia = new PingJia();
		pingjia.setId(UUIDUtils.getId());
		pingjia.setContent(content);
		pingjia.setuId(uId);
		pingjia.setcId(cId);
		pingjia.setDate(new Date());
		pingjiaService.add(pingjia);
		response.sendRedirect("ClothesServlet?method=findClothesById&id="+cId);
		return null;
	}
	
	public String findAllByAdmin(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int curNum = Integer.parseInt(request.getParameter("num"));
		PageModel pm = pingjiaService.findAllByAdmin(curNum);
		request.setAttribute("page", pm);
		return "/admin/pingjia/list.jsp";
	}
	public String del(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		pingjiaService.del(id);
		response.sendRedirect("PingJiaServlet?method=findAllByAdmin&num=1");
		return null;
	}

}
