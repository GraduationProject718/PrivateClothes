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
    
    <title>添加服装</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/layui/css/layui.css">
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.all.js"></script>
	<style type="text/css">
		.addClothesFrom{
			width:80%;
			padding:10px;
		}
		.layui-btn{
			background-color:#1E9FFF;		
		}
	</style>
  </head>
  
  <body>
  <form class="layui-form addClothesFrom" action="ClothesServlet?method=addClothes" method="post" enctype="multipart/form-data">
  <div class="layui-form-item">
    <label class="layui-form-label">服装名</label>
    <div class="layui-input-block">
      <input type="text" name="name" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">材质</label>
      <div class="layui-input-inline">
		<select name="materialId" lay-verify="required">
			<option value=""></option>
	      	 <c:forEach items="${materialList}" var="m">
	        	<option value="${m.id}">${m.name}</option>
	        </c:forEach>
	     </select>
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">尺寸</label>
      <div class="layui-input-inline">
		<select name="size" lay-verify="required">
		<option value=""></option>
	     	 <c:forEach items="${clothesSizeList}" var="cs">
	       	<option value="${cs.id}">${cs.name}</option>
	       </c:forEach>
	     </select>
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">类型</label>
      <div class="layui-input-inline">
        <select name="clothesTypeId" lay-verify="required">
			<option value=""></option>
      	 <c:forEach items="${clothesTypeList}" var="ct">
        	<option value="${ct.id}">${ct.name}</option>
        </c:forEach>
      </select>
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">性别</label>
      <div class="layui-input-inline">
        <select name="gender" lay-verify="required">
        	<option value=""></option>
        	<option value="man">男</option>
        	<option value="woman">女</option>
      </select>
      </div>
    </div>
  </div>
  
  <div class="layui-form-item">
    <label class="layui-form-label">价格</label>
    <div class="layui-input-block">
      <input style="max-width:100px;" type="text" name="price" required  lay-verify="required" placeholder="请输入价格" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">数量</label>
    <div class="layui-input-block">
      <input style="max-width:100px;" type="text" name="num" required  lay-verify="required" placeholder="请输入数量" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">颜色</label>
    <div class="layui-input-block">
      <input style="max-width:100px;" type="text" name="color" required  lay-verify="required" placeholder="请输入颜色" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">图片</label>
    <div class="layui-input-block">
      <input style="max-width:300px;background-color: #f000;border-style: none;" type="file" name="img" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">服装简介</label>
    <div class="layui-input-block">
      <textarea name="info" placeholder="请输入内容" class="layui-textarea"></textarea>
    </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <input type="submit" class="layui-btn" value="立即提交" />
      <input type="reset" class="layui-btn layui-btn-primary" value="重置" />
    </div>
  </div>
</form>
 <script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.all.js"></script>
  
  </body>
</html>
