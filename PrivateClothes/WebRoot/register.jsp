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
	<link rel="stylesheet" href="css/reset.css" />
	<link rel="stylesheet" href="css/common.css" />
	<link rel="stylesheet" href="layui/css/layui.css" />
	<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript">
		function check(){
			var password = $("#password").val();
			var repassword = $("#repassword").val();
			if(password == repassword){
				return true;
			}
			return false;
		}
	</script>
  </head>
  
  <body>
   <jsp:include page="head.jsp"></jsp:include>
  <div class="wrap login_wrap">
			<div class="content">		
				<div class="logo"></div>
				<div class="login_box">	
					<div class="login_form">
						<div class="login_title">
							注册
						</div>
						<form action="UserServlet?method=register" method="post" >
							<div class="form_text_ipt">
								<input name="account" type="text" placeholder="账号">
							</div>
							<div class="ececk_warning"><span>数据不能为空</span></div>
							<div class="form_text_ipt">
								<input name="password" id="password"  type="password" placeholder="密码">
							</div>
							<div class="ececk_warning"><span>数据不能为空</span></div>
							<div class="form_text_ipt">
								<input name="repassword" id="repassword" type="password" placeholder="重复密码">
							</div>
							<div class="ececk_warning"><span>数据不能为空</span></div>
							<div class="form_text_ipt">
								<input name="name" type="text" placeholder="姓名">
							</div>
							<div class="ececk_warning"><span>数据不能为空</span></div>
							<div class="form_text_ipt">
								<input name="birthday" type="text" class="layui-input" id="birthday" placeholder="生日">
							</div>
							<div class="ececk_warning"><span>数据不能为空</span></div>
							<div class="form_text_ipt">
								<input name="phone" type="text" placeholder="电话">
							</div>
							<div class="ececk_warning"><span>数据不能为空</span></div>
							<div class="form_btn">
								<!-- <button type="button">注册</button> -->
								<input type="submit" value="注册" />
							</div>
							<div class="form_reg_btn">
								<span>已有帐号？</span><a href="login.jsp">马上登录</a>
							</div>
						</form>
						<div class="other_login">
							<div class="left other_left">
								<span>其它登录方式</span>
							</div>
							<div class="right other_right">
								<a href="#">QQ登录</a>
								<a href="#">微信登录</a>
								<a href="#">微博登录</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<script src="layui/layui.js"></script>
		<script>
		layui.use('laydate', function(){
		  var laydate = layui.laydate;
		  
		  laydate.render({
		    elem: '#birthday' 
		  });
		});
		</script>
		<script type="text/javascript" src="js/jquery.min.js" ></script>
		<script type="text/javascript" src="js/common.js" ></script>
		<jsp:include page="footer.jsp"></jsp:include>
  </body>
</html>
