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

	<link href="css/bootstrap.min.css" rel="stylesheet">
	<script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
    <script type="text/javascript">
    	function check(){
    		var password = $("#password").val().trim();
    		var confirmPassword = $("#confirmPassword").val().trim();
    		if( password == confirmPassword){
    			return true;
    		}else{
    			alert("您两次输入的密码不一致，请重新输入！");
    			return false;
    		}
    	}
    </script>
  </head>
  
  <body>
  	
	<form class="form-horizontal" action="servlet/UserServlet?op=register" method="post" onsubmit="return check();">
		<div class="form-group">
			<label for="firstname" class="col-sm-2 control-label"><a href="index.jsp" style="color:#2fa0ec;">服装私人定制网</a></label>
		</div>
		<div class="form-group">
			<label for="firstname" class="col-sm-2 control-label">注册邮箱</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="account" name="account" placeholder="请输入注册邮箱" />
			</div>
		</div>
		<div class="form-group">
			<label for="lastname" class="col-sm-2 control-label">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</label>
			<div class="col-sm-10">
				<input type="password" class="form-control" id="password" name="password" placeholder="请输入密码" />
			</div>
		</div>
		<div class="form-group">
			<label for="lastname" class="col-sm-2 control-label">确认密码</label>
			<div class="col-sm-10">
				<input type="password" class="form-control" id="confirmPassword" name="confirmPassword" placeholder="请重新输入密码" />
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-default">注册</button>
			</div>
		</div>
	</form>
  </body>
</html>
