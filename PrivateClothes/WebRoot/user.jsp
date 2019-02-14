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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
	<script src="js/bootstrap.min.js"></script>
  </head>
  
  <body>
	<nav class="navbar navbar-default" role="navigation">
		<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" >个人中心</a>
		</div>
		<div>
			<ul class="nav navbar-nav">
				<li><a href="#">购物车</a></li>
				<li><a href="#">我的订单</a></li>
				<li><a href="#">收藏夹</a></li>
				<li><a href="#">修改个人信息</a></li>
				<li><a href="#">更换头像</a></li>
				<li><a href="#">更改密码</a></li>
				<li><a href="#">退出</a></li>
			</ul>
		</div>
		</div>
	</nav>
  </body>
</html>
