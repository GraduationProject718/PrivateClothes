<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>新闻资讯</title>
    
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
	<div class="content">
		<div class="right">
			<div class="plc">
				<span class="red_x">当前位置：</span><a href="IndexServlet">首页</a>&raquo;<a href="ArticleServlet?method=indexGetList&num=1">新闻资讯</a>
			</div>
			<div class="right_main">
				<div class="agent_con">
					<h1>${article.title }</h1>
					<span>时间：${article.date }</span> <img
						src="${pageContext.request.contextPath }/${article.img}" id="imgs" />
					<div class="showt" align="left">
						${article.content }
					</div>
				</div>
			</div>
		</div>
	 <jsp:include page="leftMenu.jsp"></jsp:include>
	</div>
	
	 <jsp:include page="footer.jsp"></jsp:include>
	 <script type="text/javascript" src="js/picmain.js"></script>
</body>
</html>
