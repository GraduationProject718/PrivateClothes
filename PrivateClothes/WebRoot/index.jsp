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
    <style type="text/css">
    	 .userImg{width:80px;height:80px;border-radius:80px}
    </style>
  </head>
  
  <body>
    <!--header start-->
    <div class="header">
     <div class="top">
      <h1 class="logo">
      	<a href="index.jsp"><img src="images/clothes.png" style="width:400px;margin-top:-15px;"/></a>
      </h1>
      <div class="phone">
      	<c:if test="${user.name == null}">
       		<a href="login.jsp">登录</a> <a href="register.jsp">注册</a>
       	</c:if>
       	<c:if test="${user.name != null}">
       		<a target="index" href="user.jsp"><img class="userImg" src="${user.imgUrl }"></a>
       	</c:if>
      </div><!--phone/-->
     </div><!--top/-->
    </div>
    <!--headers end/-->
    <iframe name="index" src="main.jsp" style="width:100%;height:83%;margin:0px;padding:0px;"></iframe>
    <!--footer start-->
    <div class="footer">
     Copyright @ 计本1501 201508110030 安源 &nbsp; 
    </div>
    <!--footer end-->
    
    
    
  </body>
</html>
