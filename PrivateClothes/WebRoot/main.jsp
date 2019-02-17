<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    
    <link href="css/inside.css" rel="stylesheet">
    <link href="css/response.css" rel="stylesheet">
   
  </head>
  
  <body>
  <!--mainCont start-->
    <div class="mainCont">
     <ul class="nav" id="nav">
      <li class="nav-About">
       <a href="news.jsp" target="index">
        <span><img src="images/aboutimg.png" class="grayscale"></span>
        <strong>新闻资讯</strong>
       </a>
       <div class="musics"><embed src=mp3/m1_clip.mp3 autostart=true loop=true width=0 height=0></div>
      </li>
      <li class="nav-Products">
       <a href="menClothes.jsp" target="index">
        <span><img src="images/productimg.png" class="grayscale"></span>
        <strong>男士服装</strong>
       </a>
       <div class="musics"><embed src=mp3/m1_clip.mp3 autostart=true loop=true width=0 height=0></div>
      </li>
      <li class="nav-News">
       <a href="womenClothes.jsp" target="index">
        <span><img src="images/shopimg.png" class="grayscale"></span>
        <strong>女士服装</strong>
       </a>
       <div class="musics"><embed src=mp3/m1_clip.mp3 autostart=true loop=true width=0 height=0></div>
      </li>
      <li class="nav-shopping">
       <a href="privateClothes.jsp" target="index">
        <span><img src="images/newimg.png" class="grayscale"></span>
        <strong>私人定制</strong>
       </a>
       <div class="musics"><embed src=mp3/m1_clip.mp3 autostart=true loop=true width=0 height=0></div>
      </li>
      <li class="nav-Contact">
       <a href="tencent://Message/?Uin=2323553475&websiteName=q-zone.qq.com&Menu=yes" target="_blank">
        <span><img src="images/contactimg.png" class="grayscale"></span>
        <strong>在线客服</strong>
       </a>
       <div class="musics"><embed src=mp3/m1_clip.mp3 autostart=true loop=true width=0 height=0></div>
      </li>
     </ul><!--nav/-->
    </div>
    <!--mainCont end-->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/js.js"></script>
  
    
  </body>
</html>
