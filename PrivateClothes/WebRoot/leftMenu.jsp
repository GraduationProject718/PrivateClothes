<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script type="text/javascript" src="js/NSW_Index.js"></script>
	<script type="text/javascript" src="js/rollup.min.js"></script>
  <!--左侧-->
  <div class="left">
    <div class="leib2 news_">
      <div class="tit">产品中心</div>
      <div class="nr">
        <div class="clear"></div>
         <c:forEach items="${clothesType}" varStatus="status" var="ct">
        	<h3><a href="ClothesServlet?method=findClothesByTypeId&num=1&typeId=${ct.id }">${ct.name}</a></h3>
        </c:forEach>
      </div>
    </div>
    <div class="leib2">
      <div class="tit"> 联系我们</div>
      <div class="leftlx">
        <div class="dianh"><a href="tencent://Message/?Uin=2323553475&websiteName=q-zone.qq.com&Menu=yes" target="_blank"> <img src="images/QQ.png" alt="" width="208" height="200" /></a>
        </div>
      </div>
    </div>
  </div>
  <div class="clear"></div>
