package servlet;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Article;
import bean.Clothes;
import bean.ClothesType;
import service.ArticleService;
import service.ClothesService;
import service.ClothesTypeService;

public class IndexServlet extends BaseServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ArticleService articleService = new ArticleService();
		List<Article> article = articleService.indexArticle();
		request.setAttribute("article", article);
		
		ClothesTypeService clothesTypeService = new ClothesTypeService();
		List<ClothesType> clothesType = clothesTypeService.indexClothesType(); 
		request.getSession().setAttribute("clothesType", clothesType);
		
		String id = request.getParameter("id");
		if("".equals(id) || id == null) {
			id = "1";
		}
		ClothesService clothesService = new ClothesService();
		List<Clothes> clothes = clothesService.indexClothes(id);
		request.setAttribute("clothes", clothes);
		return "index.jsp";
	}
}
