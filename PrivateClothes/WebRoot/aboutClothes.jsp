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
    
    <title>新闻资讯</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	
	<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script type="text/javascript" src="js/NSW_Index.js"></script>
	<script type="text/javascript" src="js/rollup.min.js"></script>
	
	<link href="css/shopdetail.css" rel="stylesheet" type="text/css">
	<script src="js/shop.js"></script>
	
	<script type="text/javascript">
	  $(document).ready(function(){
		  var showproduct = {
			  "boxid":"showbox",
			  "sumid":"showsum",
			  "boxw":400,
			  "boxh":550,
			  "sumw":60,//列表每个宽度,该版本中请把宽高填写成一样
			  "sumh":60,//列表每个高度,该版本中请把宽高填写成一样
			  "sumi":7,//列表间隔
			  "sums":5,//列表显示个数
			  "sumsel":"sel",
			  "sumborder":1,//列表边框，没有边框填写0，边框在css中修改
			  "lastid":"showlast",
			  "nextid":"shownext"
			  };//参数定义	  
		 $.ljsGlasses.pcGlasses(showproduct);//方法调用，务必在加载完后执行 
		 $(function(){
			$('.tabs a').click(function(){
	
				var $this=$(this);
				$('.panel').hide();
				$('.tabs a.active').removeClass('active');
				$this.addClass('active').blur();
				var panel=$this.attr("href");
				$(panel).show();				
				return fasle;  //告诉浏览器  不要纸箱这个链接
				})//end click
	
				$(".tabs li:first a").click()   //web 浏览器，单击第一个标签吧
	
			})//end ready
			$(".centerbox li").click(function(){
				$("li").removeClass("now");
				$(this).addClass("now")
				
				});
			
		});	
	</script>
	
	<style type="text/css">
		.pingjia{
			width: 100px;
			height: 40px;
			border-width: 0px;
			border-radius: 3px;
			background: #1E90FF;
			cursor: pointer;
			outline: none;
			font-family: Microsoft YaHei;
			color: white;
			font-size: 17px;
		}
		.pingjia:hover{
			background: #5599FF;
		}
		
	</style>
  </head>
  
  <body>
   <jsp:include page="head.jsp"></jsp:include>
	<br />
	<div class="content">
		
		<!-----商品详情部分------->
<div class="shopdetails">
	<!-------放大镜-------->
	<div id="leftbox">
	<div id="showbox">
  <img src="${pageContext.request.contextPath }/${clothes.img}" width="400" height="550" />
	</div><!--展示图片盒子-->
	</div>
    <!----中间----->

    <div class="centerbox">
    	<p class="imgname">${clothes.name }</p><br/><br/><br/><br/>
    	
    	<p class="price">价格：<samp>￥${clothes.price }</samp></p>
    	
    	<p class="kefu">颜色：${clothes.color }</p>
      
        <div class="clear"></div>
        <p class="chima">尺码：
	        <c:forEach items="${clothesSizeList }" var="cs">
		        <c:if test="${cs.id == clothes.size }">
		        	${cs.name }
		        </c:if>
	        </c:forEach>
        </p>
      	<p class="chima">材质：
	        <c:forEach items="${materialList }" var="ml">
		        <c:if test="${ml.id == clothes.materialId }">
		        	${ml.name }
		        </c:if>
	        </c:forEach>
        </p>
        <p class="buy" ><a href="CartServlet?method=add&cid=${clothes.id }&uid=${user.id}" id="firstbuy">立即购买</a><a href="#">加入购物车</a></p>
   		<div class="clear"></div>
        <br /><br />
        <p class="fuwu">服务承诺：</p><img style="margin-top:-30px;margin-left:80px;" src="images/fuwu.png" /><br /><br />
        <p class="pay">支付方式：<img src="images/zhifu.png"></p>
    </div>
 

            
</div>
<!-----商品详情部分结束------->
<!-----商品详情评价部分-------> 
<div class="evaluate">
	<div class="classify">
        <jsp:include page="leftMenu.jsp"></jsp:include>
    
    
    <div class="tabbedPanels">
    	<ul class="tabs">
        	<li><a href="javascript:void(0)" onclick="document.getElementById('panel01').scrollIntoView();"  class="active">商品详情</a></li>
            <li><a href="javascript:void(0)" onclick="document.getElementById('panel02').scrollIntoView();" >服装评价</a></li>
        </ul>
        
     <div class="panelContainer">
       	<div class="panel" id="panel01">
        	<p class="sell">详细信息</p>
           ${clothes.info }
        	<div class="clear"></div>
        </div>
        <br />
        <div class="panel" id="panel02">
        	<p class="sell">服装评价</p>
            <form action="PingJiaServlet?method=add" method="post">
            	<textarea name="content" id="content" rows="10" cols="100"></textarea>
            	
            	<input type="submit" class="pingjia" value="评价" />
            	<input type="hidden" name="uId" id="uId" value="${user.id }">
            	<input type="hidden" name="cId" id="cId" value="${clothes.id }">            	
            </form>
            
           <%--  <c:forEach items="${pingjia}" var="pj">
            	<c:forEach items="${pjuser}" var="pju">
            		<c:if test="${pj.uId == pju.id }">
            			<div class="judge01">
            			<div style="padding:5px;height:150px;"><img style="width:60px;height:60px;border-radius: 50%; " src="${pageContext.request.contextPath }/${pju.img}">	</div>
           				<div class="write"><p class="idname"><b>${pju.name }</b></p>
           				 <p>${pj.content}</p>
			            <p class="which">${pj.date}</p> 
		    	        </div>
		    	        </div>
           			</c:if>
           		</c:forEach>
           		</div>
           	</c:forEach> --%>
	       
	       
            			
		<c:forEach items="${pingjia}" var="pj">
		<c:forEach items="${pjuser}" var="pju">
		<c:if test="${pj.uId == pju.id }">
			<div class="judge01">
			<div style="padding:5px;height:150px;"><img style="width:60px;height:60px;border-radius: 50%; " src="${pageContext.request.contextPath }/${pju.img}"></div>
			<div class="write"><p class="idname"><b>${pju.name }</b></p><p>${pj.content}</p><p class="which">${pj.date}</p></div>
			</div>
		</c:if>
		</c:forEach>
		</c:forEach> 			
           
    </div>
    </div>

</div>
</div>

<!-----商品详情评价部结束分-------> 
	</div>
	</div>
	 <jsp:include page="footer.jsp"></jsp:include>
	 <script type="text/javascript" src="js/picmain.js"></script>
</body>
</html>
