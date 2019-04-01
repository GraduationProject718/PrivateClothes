<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="js/NSW_Index.js"></script>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/rollup.min.js"></script>

<div class="f_bg">
  <div class="footer">
    <div class="f_pic01 fl"> <a href=""><img src="images/f_pic01.gif" alt="" /></a> <span><img src="images/WeiXin.png" alt="" width="115" height="115" /></span> </div>
    <div class="f_con fl">
      <div class="f_nav"><a href="IndexServlet" >网站首页</a> · <a href="ClothesServlet?method=manClothes&num=1" >男士定制</a> · <a href="ClothesServlet?method=womanClothes&num=1" >女士定制</a> · <a href="" >团体定制</a> · <a href="ArticleServlet?method=indexGetList&num=1" >新闻资讯</a></div>
      <p><em>忻州师范学院-计算机系</em> <em>手机：18834401856 </em><em>店主：安源</em></p>
      <span>版权所有：计本1501安源&nbsp;&nbsp;&nbsp;&nbsp;学号：201508110030</span>
  </div>
</div>