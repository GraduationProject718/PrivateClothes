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
	
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
    <style type="text/css">
    	body{
			background: url("images/bg.jpg"); 
			font-size:2em;
    	}
    	.container{
    		margin-top:100px;
    		width:1100px;
    	}
    </style>
  </head>
  
  <body>
    <div class="container">
	<form class="form-horizontal" action="servlet/AdminServlet?op=login" method="post">
		<div class="form-group">
			<label for="firstname" class="col-sm-4 control-label">服装私人定制网后台管理系统</label>
		</div>
		<div class="form-group">
			<label for="firstname" class="col-sm-2 control-label">账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="account" name="account" placeholder="请输入账号" />
			</div>
		</div>
		<div class="form-group">
			<label for="lastname" class="col-sm-2 control-label">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</label>
			<div class="col-sm-4">
				<input type="password" class="form-control" id="password" name="password" placeholder="请输入密码" />
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit"  class="btn btn-default">登录</button>
			</div>
		</div>
	</form>
	</div>
  </body>
</html>
