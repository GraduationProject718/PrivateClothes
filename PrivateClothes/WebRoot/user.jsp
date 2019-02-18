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
				<li><a href="#" data-toggle="modal" data-target="#editUser">修改个人信息</a></li>
				<li><a href="#" data-toggle="modal" data-target="#editUserPhoto">更换头像</a></li>
				<li><a href="#" data-toggle="modal" data-target="#editUserPassword">更改密码</a></li>
				<li><a href="#">退出</a></li>
			</ul>
		</div>
		</div>
	</nav>
	
	<!-- 修改个人信息（Modal） -->
	<div class="modal fade" id="editUser" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						&times;
					</button>
					<h4 class="modal-title" id="myModalLabel">
						修改个人信息
					</h4>
				</div>
				<div class="modal-body">
					修改个人信息
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭
					</button>
					<button type="button" class="btn btn-primary">
						提交更改
					</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal -->
	</div>
	
	<!-- 更换头像（Modal） -->
	<div class="modal fade" id="editUserPhoto" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						&times;
					</button>
					<h4 class="modal-title" id="myModalLabel">
						更换头像
					</h4>
				</div>
				<div class="modal-body">
					更换头像
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭
					</button>
					<button type="button" class="btn btn-primary">
						提交更改
					</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal -->
	</div>
	
	<!-- 更换密码（Modal） -->
	<div class="modal fade" id="editUserPassword" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						&times;
					</button>
					<h4 class="modal-title" id="myModalLabel">
						更换密码
					</h4>
				</div>
				<div class="modal-body">
					更换密码
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭
					</button>
					<button type="button" class="btn btn-primary">
						提交更改
					</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal -->
	</div>
  </body>
</html>
