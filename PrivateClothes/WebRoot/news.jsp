<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>服装私人定制网</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link href="layui/css/layui.css" rel="stylesheet">
	<script src="js/jquery.min.js"></script>
	<script src="layui/layui.js"></script>
	
  </head>
  
  <body>
	<ul class="layui-nav layui-nav-tree layui-nav-side">
	  <li class="layui-nav-item layui-nav-itemed"><a href="news.jsp">新闻资讯</a></li>
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
	
  </body>
</html>
