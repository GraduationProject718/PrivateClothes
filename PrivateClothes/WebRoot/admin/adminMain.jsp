<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>服装私人定制网后台管理系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/home.css" />
	<script src="js/jquery.min.js"></script>
	<script src="js/home.js"></script>
  </head>
  
  <body>
	<div class="middle">
	<div class="cont">
	<!--菜单-->
	<div class="class">
	  <ul>
	    <h3 style="color:#FFF;">服装私人定制网</h3>
	    <a href="javasript:void(0)" class="net"><li>用户管理</li></a>
	    <a href="javasript:void(0);" class="_all2"><li>服装管理</li></a>
	    <a href="javasript:void(0);" class="_all3"><li>订单管理</li></a>
	    <a href="javasript:void(0);" class="_all4"><li>评价管理</li></a>
	    <!-- <a href="javasript:void(0);" class="_all5"><li>新闻管理</li></a> -->
	    <a href="javasript:void(0);" class="_all6"><li>文章管理</li></a>
	  </ul>
	</div>
	<!--菜单 end-->
       
	<!--指南-->
	<div class="class_a">
	
	<div class="all1">
	  <h4 style="color:#fff">用户管理</h4>
	  <iframe style="border:0; background:rgba(255,255,255,0.5);" scrolling="auto" src="${pageContext.request.contextPath}/UserServlet?method=findAllByAdmin&num=1" width="1000" height="544"></iframe>
	</div>
	
	<div class="all2">
		<h4 style="color:#fff">服装管理</h4>
		<iframe style="border:0; background:rgba(255,255,255,0.5);" scrolling="auto" src="${pageContext.request.contextPath}/ClothesServlet?method=getList&num=1" width="1000" height="544"></iframe>
	</div>
	
	<div class="all3">
		<h4 style="color:#fff">订单管理</h4>
	</div>
	
	<div class="all4" id="all4">
		<h4 style="color:#fff">评价管理</h4>
		<iframe style="border:0; background:rgba(255,255,255,0.5);" scrolling="auto" src="${pageContext.request.contextPath}/PingJiaServlet?method=findAllByAdmin&num=1" width="1000" height="544"></iframe>
	</div>

	<!-- <div class="all5">
		<h4 style="color:#fff">新闻管理</h4>
	</div> -->
	
	<div class="all6">
		<h4 style="color:#fff">文章管理</h4>
		<iframe style="border:0; background:rgba(255,255,255,0.5);" scrolling="auto" src="${pageContext.request.contextPath}/ArticleServlet?method=getList&num=1" width="1000" height="544"></iframe>
	</div>
	</div>
	<!--指南 end-->
	</div>
	</div>
   
   
	<!--middle end-->
	<div class="foot">
		Copyright @ 计本1501 201508110030 安源 &nbsp; 
	</div>
	
	<script src="js/jquery.min.js"></script>
	<script src="js/home.js"></script>
  </body>
</html>
