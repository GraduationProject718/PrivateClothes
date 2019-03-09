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
    
    <title>服装管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/layui/css/layui.css">
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.all.js"></script>
	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

	<style type="text/css">
		body{
			background: none;
		}
		.layui-form-pane{
			padding-top:20px;
			padding-left:20px;
		}
		.layui-form-pane .layui-form-label{
			background-color: #1e9fff;
			margin-left: 20px;
		}
		.layui-table td, .layui-table th{
			padding:9px;
		}
		.layui-table{
			width:95%;
			margin-left: 20px;
		}
		.layui-input{
			width:200px;
		}
		.page{
			margin:0 auto;
		}
	</style>
	
	<script type="text/javascript">
		function delClothes(id){
			if(confirm("是否确认删除")){
				location="ClothesServlet?method=delClothes&id="+id;
			}else{
				return false;
			}
		}
		
		function editClothes(id){
			location="ClothesServlet?method=editClothesByIdUI&id="+id;
		}
	</script>
  </head>
  
  <body>
    <div class="layui-form layui-form-pane">
	<div class="layui-form-item">
	<table>
		<tr>
			<td>
				<a href="${pageContext.request.contextPath}/ClothesServlet?method=addClothesUI"><button class="layui-btn layui-btn-normal">发布服装</button></a>
			</td>
		</tr>
	</table>
	</div>
  	</div>
 	<table class="layui-table">
	  <colgroup>
	  	<col width="50">
	  	<col width="50">
	    <col>
	    <col width="50">
	    <col width="100">
	    <col width="150">
	  </colgroup>
	  <thead>
	    <tr>
	      <th>序号</th>
	      <th>封面</th>
	      <th>服装名</th>
	      <th>服装性别</th>
	      <th>发布时间</th>
	      <th>操作</th>
	    </tr> 
	  </thead>
	  <tbody>
	    <c:forEach items="${page.list}" var="c" varStatus="status">
	    <tr>
	    	<td>${status.count}</td>
			<td><img style="width:30px;height:30px;" src="${pageContext.request.contextPath}/${c.img }"> </td>
			<td>${c.name } </td>
			<c:if test="${c.gender == 'man' }">
				<td>男</td>
			</c:if>
			<c:if test="${c.gender == 'woman' }">
				<td>男</td>
			</c:if>
			<td>${c.date }</td>
			<td>
				<button class="layui-btn layui-btn-normal" onclick="editClothes('${c.id}');" ><i class="layui-icon">&#xe642;</i></button>
				<button class="layui-btn layui-btn-normal" onclick="delClothes('${c.id}');" ><i class="layui-icon">&#xe640;</i></button>
			</td>
	    </tr>
	    </c:forEach>
	  </tbody>
	</table>
  	<jsp:include page="../pageFile.jsp"></jsp:include>
  </body>
</html>
