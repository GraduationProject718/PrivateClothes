package servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
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

import bean.PageModel;

import bean.Article;
import service.ArticleService;
import utils.UUIDUtils;
import utils.UploadUtils;

public class ArticleServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	ArticleService articleService = new ArticleService();
	
	public String addArticle(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Map<String,String> map=new HashMap<String,String>();
		Article article = new Article();
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
					String realPath=getServletContext().getRealPath("/img/3/");
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
					map.put("img", "/img/3/"+dir+"/"+newFileName);
				}
			}
			BeanUtils.populate(article, map);
			article.setId(UUIDUtils.getId());
			articleService.addArticle(article);
			response.sendRedirect("ArticleServlet?method=getList&num=1");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public String getList(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int curNum = Integer.parseInt(request.getParameter("num"));
		PageModel pm = articleService.getList(curNum);
		request.setAttribute("page", pm);
		return "/admin/article/list.jsp";
	}
	
	public String indexGetList(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int curNum = Integer.parseInt(request.getParameter("num"));
		PageModel pm = articleService.indexGetList(curNum);
		request.setAttribute("page", pm);
		return "news.jsp";
	}
	
	public String delArticle(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		if(articleService.delArticle(id)) {
			response.sendRedirect("ArticleServlet?method=getList&num=1");
		}
		return null;
	}
	
	public String getArticleById(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		Article article = articleService.getArticleById(id);
		request.setAttribute("article", article);
		return "/admin/article/edit.jsp";
	}
	
	public String editArticle(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String date = request.getParameter("date");
		String img = request.getParameter("img");
		Article article = new Article();
		article.setId(id);
		article.setTitle(title);
		article.setContent(content);
		article.setDate(date);
		article.setImg(img);
		if(articleService.editArticle(article)) {
			response.sendRedirect("ArticleServlet?method=getList&num=1");
		}
		return null;
	}
}
