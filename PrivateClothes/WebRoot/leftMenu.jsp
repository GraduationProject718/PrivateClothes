<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/layui/css/layui.css">
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.all.js"></script>
	
<ul class="layui-nav layui-nav-tree layui-nav-side">
	  <li class="layui-nav-item layui-nav-itemed"><a href="ArticleServlet?method=indexGetList&num=1">新闻资讯</a></li>
	  <li class="layui-nav-item"><a href="menClothes.jsp">男士服装</a></li>
	  <li class="layui-nav-item"><a href="womenClothes.jsp">女士服装</a></li>
	  <li class="layui-nav-item"><a href="privateClothes.jsp">私人定制</a></li>
	  <li class="layui-nav-item"><a href="tencent://Message/?Uin=2323553475&websiteName=q-zone.qq.com&Menu=yes" target="_blank">在线客服</a></li>
	</ul>
<script src="layui/layui.js"></script>
	<script>
	//注意：导航 依赖 element 模块，否则无法进行功能性操作
	layui.use('element', function(){
	  var element = layui.element;
	});
	</script>