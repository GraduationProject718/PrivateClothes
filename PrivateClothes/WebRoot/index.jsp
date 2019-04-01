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

	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<script type="text/javascript" src="js/NSW_Index.js"></script>
	<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="js/rollup.min.js"></script>
	 <link rel="stylesheet" href="layui/css/layui.css" media="all">
  </head>
  
  <body>
  <jsp:include page="head.jsp"></jsp:include>
  <br />
<center>
<div class="layui-carousel" id="test1">
  <div carousel-item>
    <div><img src="images/banner1.jpg"></div>
    <div><img src="images/banner2.jpg"></div>
    <div><img src="images/roll3.jpg"></div>
  </div>
</div>
 </center>
<script src="layui/layui.js"></script>
<script>
layui.use('carousel', function(){
  var carousel = layui.carousel;
  //建造实例
  carousel.render({
    elem: '#test1'
    ,width: '70%' //设置容器宽度
    ,height:'50%'
    ,arrow: 'always' //始终显示箭头
    //,anim: 'updown' //切换动画方式
  });
});
</script>

<div class="content">
  <div class="rx" id="prog">
    <div class="zx_top"><a href=""><span>PRODUCTS</span>服装展示</a></div>
    <div class="rx_nav">
      <ul last="nobor01">
      <c:forEach items="${clothesType}" varStatus="status" var="ct">
        	<li><a href="IndexServlet?id=${ct.id }">${ct.name}</a></li>
        </c:forEach>
      </ul>
    </div>
    <div class="rx_con">
      <dl>
    	<c:forEach  items="${clothes}" varStatus="status" var="c">
      	<c:if test="${status.first }">
        <dt hover="pk_show">
          <p class="rx_p"> <em> <i><a href="ClothesServlet?method=findClothesById&id=${c.id }">${c.name }</a></i> </em> </p>
          <a href="ClothesServlet?method=findClothesById&id=${c.id }"><img src="${pageContext.request.contextPath}/${c.img}" alt="" width="304" height="507" /></a> 
         </dt>
        </c:if>
        </c:forEach>
        <dd>
          <ul>
           <c:forEach  items="${clothes}" varStatus="status" var="c">
          	<c:if test="${!status.first }">
            	<li><a href="ClothesServlet?method=findClothesById&id=${c.id }"><img src="${pageContext.request.contextPath}/${c.img}" width="201" height="247" /></a><span>${c.name }</span></li>
             </c:if>
             </c:forEach>
          </ul>
        </dd>
       
      </dl>
     
    </div>
  </div>
  <div class="clear"></div>
</div>

<!--新闻中心-->
	<div class="dt_bg">
	<div class="content">
	<div class="dt fl" id="ZXS">
	
	<div class="dt_top">
		<span><a href="ArticleServlet?method=indexGetList&num=1">more+</a></span>
		<ul>
			<li><a href="">新闻资讯</a></li>
		</ul>
	</div>
	
	<c:forEach items="${article}" varStatus="status" var="a">
		<div class="dt_con">
			<c:if test="${status.first }">
				<dl>
					<dt>
						<a href="ArticleServlet?method=findArticleById&id=${a.id}"><img src="${pageContext.request.contextPath}/${a.img}" width="214"height="150" /></a>
					</dt>
					<dd>
						<h3><a href="ArticleServlet?method=findArticleById&id=${a.id}">${a.title }</a></h3>
						<%-- <p>${a.content }</p> --%>
						<span><a href="ArticleServlet?method=findArticleById&id=${a.id}">【查看更多】</a></span>
					</dd>
				</dl>
			</c:if>
			</div>
		
		<c:if test="${!status.first }">
		<div class="dt_list">
			<ul>
				<li><span>【${a.date }】</span><a href="ArticleServlet?method=findArticleById&id=${a.id}">${a.title }</a></li>
			</ul>
		</div>
		</c:if>
	</c:forEach>
	
	</div>
	</div>
	</div>

<jsp:include page="footer.jsp"></jsp:include>
  </body>
</html>
