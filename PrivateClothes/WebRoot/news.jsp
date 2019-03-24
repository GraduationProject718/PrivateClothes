<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="css/style.css"/>
	<script type="text/javascript" src="js/NSW_Index.js"></script>
	<script type="text/javascript" src="js/rollup.min.js"></script>
  </head>
  
  <body>
	<jsp:include page="head.jsp"></jsp:include>
	<br />
	<div class="content">
  <div class="right">
    <div class="plc"><span class="red_x">当前位置：</span><a href="IndexServlet">首页</a> &raquo; <a href="ArticleServlet?method=indexGetList&num=1">新闻资讯</a></div>
    <div class="right_main">
      <div class="news_con">
       <c:forEach items="${page.list}" var="a">
        <dl class="news_dl">
          <dt class="png"><img src="${pageContext.request.contextPath}/${a.img }"></dt>
          <dd><span><a href="ArticleServlet?method=findArticleById&id=${a.id}" class="dt_1">${a.title }</a></span>${a.content } </dd>
        </dl>
         </c:forEach>
        <div class="news_jz02"> </div>
        <div class="clear"> </div>
        <div class="Page clearfix"><jsp:include page="pageFile.jsp"></jsp:include></div>
      </div>
    </div>
   </div>
  <!--左侧-->
 <jsp:include page="leftMenu.jsp"></jsp:include>
</div>
<!--Content:End-->
	 	<jsp:include page="footer.jsp"></jsp:include>
  </body>
</html>
