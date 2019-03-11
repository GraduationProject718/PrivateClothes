package servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.IOUtils;

import bean.Clothes;
import bean.ClothesSize;
import bean.ClothesType;
import bean.Material;
import bean.PageModel;
import service.ClothesService;
import service.ClothesSizeService;
import service.ClothesTypeService;
import service.MaterialService;
import utils.UUIDUtils;
import utils.UploadUtils;

public class ClothesServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	ClothesService clothesService = new ClothesService();
	
	public String getList(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int curNum = Integer.parseInt(request.getParameter("num"));
		PageModel pm = clothesService.getList(curNum);
		request.setAttribute("page", pm);
		return "/admin/clothes/list.jsp";
	}
	
	public String manClothes(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int curNum = Integer.parseInt(request.getParameter("num"));
		PageModel pm = clothesService.manClothes(curNum);
		request.setAttribute("page", pm);
		return "/clothes.jsp";
	}
	
	public String womanClothes(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int curNum = Integer.parseInt(request.getParameter("num"));
		PageModel pm = clothesService.womanClothes(curNum);
		request.setAttribute("page", pm);
		return "/clothes.jsp";
	}
	public String delClothes(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		clothesService.delClothes(id);
		response.sendRedirect("ClothesServlet?method=getList&num=1");
		return null;
		
	}
	
	public String editClothesByIdUI(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		Clothes clothes = clothesService.editClothesByIdUI(id);
		request.setAttribute("clothes", clothes);
		
		ClothesTypeService clothesTypeService = new ClothesTypeService();
		List<ClothesType> clothesTypeList = clothesTypeService.findAllType();
		request.setAttribute("clothesTypeList", clothesTypeList);
		
		MaterialService materialServcie = new MaterialService();
		List<Material> materialList = materialServcie.findAllMaterial();
		request.setAttribute("materialList", materialList);
		
		ClothesSizeService clothesSizeService = new ClothesSizeService();
		List<ClothesSize> clothesSizeList = clothesSizeService.findAllSize();
		request.setAttribute("clothesSizeList", clothesSizeList);
		
		return "/admin/clothes/editClothes.jsp";
	}
	public String addClothesUI(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ClothesTypeService clothesTypeService = new ClothesTypeService();
		List<ClothesType> clothesTypeList = clothesTypeService.findAllType();
		request.setAttribute("clothesTypeList", clothesTypeList);
		
		MaterialService materialServcie = new MaterialService();
		List<Material> materialList = materialServcie.findAllMaterial();
		request.setAttribute("materialList", materialList);
		
		ClothesSizeService clothesSizeService = new ClothesSizeService();
		List<ClothesSize> clothesSizeList = clothesSizeService.findAllSize();
		request.setAttribute("clothesSizeList", clothesSizeList);
		
		return "/admin/clothes/addClothes.jsp";
	}
	
	public String addClothes(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Map<String,String> map=new HashMap<String,String>();
		Clothes clothes = new Clothes();
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
					String realPath=getServletContext().getRealPath("/img/");
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
					map.put("img", "/img/"+dir+"/"+newFileName);
				}
			}
			BeanUtils.populate(clothes, map);
			clothes.setId(UUIDUtils.getId());
			clothes.setDate(new Date());
			clothesService.addClothes(clothes);
			response.sendRedirect("ClothesServlet?method=getList&num=1");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public String editClothes(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Map<String,String> map=new HashMap<String,String>();
		Clothes clothes = new Clothes();
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
					String realPath=getServletContext().getRealPath("/img/");
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
					map.put("img", "/img/"+dir+"/"+newFileName);
				}
			}
			BeanUtils.populate(clothes, map);
			clothes.setDate(new Date());
			clothesService.editClothes(clothes);
			response.sendRedirect("ClothesServlet?method=getList&num=1");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
