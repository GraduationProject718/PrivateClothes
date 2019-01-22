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
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/css.css" rel="stylesheet">
  </head>
  
  <body>
    <div class="bg"><img src="images/bg.jpg" /></div>
    <!--header start-->
    <div class="header">
     <div class="top">
      <h1 class="logo">
      	<a href="index.html"><img src="images/clothes.png" style="width:400px;margin-top:2px;"/></a>
      </h1>
      <div class="phone">
       	<a href="login.jsp">登录</a>
      </div><!--phone/-->
     </div><!--top/-->
    </div>
    <!--headers end/-->
    <!--mainCont start-->
    <div class="mainCont">
     <ul class="nav" id="nav">
      <li class="nav-Index">
       <a href="index.html">
        <span><img src="images/indeximg.jpg" class="grayscale"></span>
        <strong>
         首页<br />
         <i>Index</i>
        </strong>
       </a>
       <div class="musics"><embed src=mp3/m1_clip.mp3 autostart=true loop=true width=0 height=0></div>
      </li>
      <li class="nav-About">
       <a href="about.html">
        <span><img src="images/aboutimg.png" class="grayscale"></span>
        <strong>
         新闻资讯<br />
         <i>About us</i>
        </strong>
       </a>
       <div class="musics"><embed src=mp3/m1_clip.mp3 autostart=true loop=true width=0 height=0></div>
      </li>
      <li class="nav-Products">
       <a href="product.html">
        <span><img src="images/productimg.png" class="grayscale"></span>
        <strong>
         主营产品<br />
         <i>Products</i>
        </strong>
       </a>
       <div class="musics"><embed src=mp3/m1_clip.mp3 autostart=true loop=true width=0 height=0></div>
      </li>
      <li class="nav-News">
       <a href="shopping.html">
        <span><img src="images/shopimg.png" class="grayscale"></span>
        <strong>
         线上商城<br />
         <i>Online shopping mall</i>
        </strong>
       </a>
       <div class="musics"><embed src=mp3/m1_clip.mp3 autostart=true loop=true width=0 height=0></div>
      </li>
      <li class="nav-shopping">
       <a href="new.html">
        <span><img src="images/newimg.png" class="grayscale"></span>
        <strong>
         在线客服<br />
         <i>News</i>
        </strong>
       </a>
       <div class="musics"><embed src=mp3/m1_clip.mp3 autostart=true loop=true width=0 height=0></div>
      </li>
      <li class="nav-Contact">
       <a href="contact.html">
        <span><img src="images/contactimg.png" class="grayscale"></span>
        <strong>
        关于我们<br />
         <i>Contact us</i>
        </strong>
       </a>
       <div class="musics"><embed src=mp3/m1_clip.mp3 autostart=true loop=true width=0 height=0></div>
      </li>
     </ul><!--nav/-->
    </div>
    <!--mainCont end-->
    <!--footer start-->
    <div class="footer">
     Copyright @ 计本1501 201508110030 安源 &nbsp; 
    </div>
    <!--footer end-->
    <!--客服代码-->
    <span class="cc1" title="点击展开联系我们">联<br />系<br />我<br />们</span>
    <div class="kefu">
     <div class="kefuBOx">
      <div class="kefunone">
         <h3>联系我们</h3>
         地址：上海市普陀区曹杨路<br />
         业务咨询1：<a href="tel:021-31127521">021-31127521</a><br />
         业务咨询2：<a href="tel:021-60521286">021-60521286</a><br />
         <a href="http://wpa.qq.com/msgrd?v=3&uin=2445638917&site=qq&menu=yes" class="btn btn-success" target="_blank">QQ客服</a>
      </div>   
         <span class="contactClick" title="点击隐藏">联<br />系<br />我<br />们</span>
     </div><!--kefuBOx/-->
    </div><!--kefu/-->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/js.js"></script>
    
  </body>
</html>
