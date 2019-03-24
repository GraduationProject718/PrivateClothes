<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
      <c:if test="${empty user}">
      	<span><a href="login.jsp">登录</a>&nbsp;&nbsp; |&nbsp;&nbsp; <a href="register.jsp">注册</a></span>
      </c:if>
      <c:if test="${not empty user}">
      	<span>欢迎<a href="user.jsp">${user.name}</a></span>
      </c:if>
    </div>
    <div class="h_con">
      <h1><img src="images/logo.png" alt="" width="400" height="66"/></h1>
     
      <c:if test="${not empty user}">
      	<div><a href="user.jsp"><img style="border-radius: 50%; width:120px;height:100px;float:right;" src="${pageContext.request.contextPath}/${user.img}"></a></div>
      </c:if>
    </div>
    
    <div class="h_nav">
      <ul>
        <li><a href="IndexServlet" ><span>网站首页</span></a></li>
        <li><a href="ClothesServlet?method=manClothes&num=1" ><span>男士定制</span></a></li>
        <li><a href="ClothesServlet?method=womanClothes&num=1" ><span>女士定制</span></a></li>
        <li><a href="product.html" ><span>团体定制</span></a></li>
        <li><a href="ArticleServlet?method=indexGetList&num=1"><span>新闻资讯</span></a></li>        
      </ul>
    </div>
  </div>
</div>