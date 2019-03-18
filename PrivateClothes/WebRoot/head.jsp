<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="js/NSW_Index.js"></script>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/rollup.min.js"></script>
 <!--顶部-->
<div class="t_bg">
  <div class="header">
    <div class="h_top"> <i>欢迎访问服装私人定制网！</i>
      <span><a href="#" onclick="AddFavorite(window.location,document.title)">登录</a>&nbsp;&nbsp; |&nbsp;&nbsp; <a href="#" onclick="SetHome(this,window.location)">注册</a></span>
    </div>
    <div class="h_con">
      <h1><img src="images/logo.png" alt="" width="400" height="66"/></h1>
      <div class="h_bt fl">专注某某服装生产12年<span>注重品质 提高服务 一站式服务</span></div>
      <div class="h_pho fr">个人中心<span>888-888-8888</span></div>
    </div>
    <div class="h_nav">
      <ul>
        <li><a href="default.html" ><span>网站首页</span></a></li>
        <li><a href="about.html" ><span>男士服装</span></a></li>
        <li><a href="product.html" ><span>女士服装</span></a></li>
        <li><a href="news.html" ><span>私人定制</span></a></li>
        <li><a href="product.html" ><span>新闻资讯</span></a></li>        
        <li><a href="about.html" ><span>联系我们</span></a></li>
      </ul>
    </div>
  </div>
</div>