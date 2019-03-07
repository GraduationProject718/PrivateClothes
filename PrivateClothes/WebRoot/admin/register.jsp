<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link type="text/css" rel="stylesheet" href="css/zhuce.css" />

  </head>
  
  <body>
   <!--head-->
   <div class="header">
   		<div class="inner">
   			<div class="logo">
   <a href="index.html" title="火车票"><img src="images/logo.png" width="350" height="60"/></a>
   			</div>
   			<div class="headlink">
   				<a href="index.html">网站导航</a>
   				&nbsp;|&nbsp;
   				<a href="login.html">登录</a>
   			</div>
   		</div>
   </div>
<!--head end-->
<!--middle-->
<div class="middle">
   <div class="cont">
   <!--填写-->
     <ul>
        <li>
        <span class="user_t" style="box-shadow:0px 0px 5px 4px #fff; ">
        </span>填写
        </li>
        <li><span class="user_y"></span>验证</li>
        <li><span class="user_z"></span>注册成功</li>
     </ul>
     
     <div class="user">
     <h3>用户注册</h3>
 <form method="post" action="">
 <div class="input">
 <label>手机号</label><input value="" placeholder="可用作登录名"  autocomplete="off" type="text" name="name" id="name" />&nbsp;<span class="t"></span></div>
 <div class="input">
 <label style="letter-spacing:15px">密码</label><input placeholder="8-20位字母、数字和符号" type="password" name="pw" id="pw" />&nbsp;<span class="t1"></span>
 <br />
 </div>
  <div class="input">
 <label for="pw">确认密码</label><input value="" placeholder="再次输入密码" type="password" name="pw1" id="pw1" />&nbsp;<span class="t2"></span>
 </div>
 
 <div class="input" id="input">
 <label></label>
 <input type="button" id="submit" class="submit" style="width:220px;" value="下一步" />
 </div>
</form> 
<br />
<a href="#" style="color:#FFC; display:block; margin-top:20px;">
注册即代表您同意我们的服务协议和隐私政策
</a>
    </div>
  <!--填写 end-->
  
  <!--验证-->
   <div class="validate">
      <h3>用户验证</h3>
      <p id="tel">请点击获取以下该手机号<span style="text-decoration:underline;" id="tell"></span>的验证码,
<br />请在重新获取验证之前完成验证。注:请勿刷新页面！</p>
    <div style="padding-left:88px;">
      <input type="text" id="yz" name="yz" placeholder="区分大小写" />
      
     

      <button style=" cursor:pointer;background:#fabf1f; border:0; border-radius:5px; color:#FFF;width:100px; height:30px" onclick="document.getElementById('y_z_m').innerHTML = y_z_m();">点击获取验证码</button> <span id="y_z_m"></span>
      &nbsp;<span class="yzm"></span>
    </div>
    <div style="padding-left:88px; margin-top:50px;">
    <input type="button" id="wanc" class="wanc" style="width:220px;" autocomplete="off" value="完成注册" />
    </div>
     <div style="padding-left:88px; margin-top:50px;">
    <input type="button" id="enter" class="enter" style="width:220px;" autocomplete="off" value="返回上一层" />
    </div>
   </div>
  <!--验证 end-->
  <!--完成-->
      <div class="complete">
         
          <p><img src="images/timg.png" width="100" height="100" />恭喜您,使用<span id="mob"></span>手机号注册成功！</p>
          
          <div class="dj">点击我,登录账号！</div>
      
      
      </div>
  
  
  <!--完成 end-->
   </div>
   </div>
   
   <!--middle end-->
   
   <div class="foot">
      
     <p>
     火车订票版权所有
     <br />
     重庆工程学院
     </p>
    </div>
    
</body>

<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="js/zhuce.js"></script>
</html>
