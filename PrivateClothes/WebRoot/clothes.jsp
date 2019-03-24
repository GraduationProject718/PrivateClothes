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
	
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script type="text/javascript" src="js/NSW_Index.js"></script>
	<script type="text/javascript" src="js/rollup.min.js"></script>
	
	
  </head>
  
  <body>
 	
 	
 	<jsp:include page="head.jsp"></jsp:include>
	<br />
<!--Content:Start-->
<div class="content">
  <div class="right">
    <div class="plc"><span class="red_x">当前位置：</span><a href="">首页</a> &raquo; <a href="">产品展示</a> &raquo; <a href="">产品型号</a></div>
    <div class="right_main">
      <div class="plc_l">
       <c:forEach items="${page.list}" var="a">
        <dl class="pd_list_dl">
          <dt><a href="ClothesServlet?method=findClothesById&id=${a.id }"><img src="${pageContext.request.contextPath}/${a.img }" alt="" width="208" height="252" /></a></dt>
          <dd> <span><a href="">${a.name }</a></span> </dd>
        </dl>
         </c:forEach>
        <div class="clear"></div>
        <div class="Page clearfix"><jsp:include page="pageFile.jsp"></jsp:include></div>
      </div>
    </div>
  </div>
  <!--左侧-->
  <jsp:include page="leftMenu.jsp"></jsp:include>
</div>
<script type="text/javascript" src="js/picmain.js"></script>
 	<jsp:include page="footer.jsp"></jsp:include>
  </body>
</html>
