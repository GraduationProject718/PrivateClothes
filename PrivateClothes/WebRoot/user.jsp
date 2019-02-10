<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/inside.css" rel="stylesheet">
    <link href="css/response.css" rel="stylesheet">
  </head>
  
  <body>
	<div id="content">
     <div class="LEFT">
      <div class="LEFT-s">
       <h1 class="logo"><a href="index.jsp"><img src="images/clothes.png" width="180" /></a></h1>
       <nav>
        <ul>
         <li class="navCur"><a href="about.html">关于我们</a>
          <div class="chilNav">
           <a href="about.html" class="chilNavCur"><span>&middot;</span>企业形象</a>
           <a href="about-xian.html"><span>&middot;</span>线下门店</a>
          </div><!--chilNav/-->
         </li>
         <li class="navCur"><a href="product.html">主营产品</a>
          <div class="chilNav">
           <a href="product.html"><span>&middot;</span>奢侈品</a>
           <a href="product.html"><span>&middot;</span>服装</a>
           <a href="product.html"><span>&middot;</span>汽车</a>
           <a href="product.html"><span>&middot;</span>奢侈品</a>
           <a href="product.html"><span>&middot;</span>服装</a>
           <a href="product.html"><span>&middot;</span>汽车</a>
           <a href="product.html"><span>&middot;</span>奢侈品</a>
           <a href="product.html"><span>&middot;</span>服装</a>
           <a href="product.html"><span>&middot;</span>汽车</a>
           <a href="product.html"><span>&middot;</span>奢侈品</a>
           <a href="product.html"><span>&middot;</span>服装</a>
           <a href="product.html"><span>&middot;</span>汽车</a>
          </div><!--chilNav/-->
         </li>
         <li class="navCur"><a href="new.html">新闻动态</a>
          <div class="chilNav">
           <a href="new.html"><span>&middot;</span>行业动态</a>
           <a href="new.html"><span>&middot;</span>企业动态</a>
          </div><!--chilNav/-->
         </li>
         <li class="navCur"><a href="contact.html">联系我们</a>
          <div class="chilNav">
           <a href="contact.html"><span>&middot;</span>联系方式</a>
           <a href="join.html"><span>&middot;</span>招商加盟</a>
          </div><!--chilNav/-->
         </li>
         <li class="navLast navCur"><a href="shopping.html">线上商城</a></li>
        </ul>
       </nav>
       <footer>
        <h2>Contact us</h2>
        <form action="#" method="get">
         <select>
          <option>友情链接</option>
          <option>十七素材</option>
          <option></option>
         </select>
        </form>
        <div class="acs">
         <a href="about.html">关于我们</a>|<a href="contact.html">联系我们</a>|<a href="shopping.html">线上商城</a>
        </div><!--acs/-->
        <div class="copy">
            <span style="position:relative;left:-28px;">Copyright © 2007-2014 juxin</span> <br />
            <span style="position:relative;left:-34px;">Foreign firm All Rights Reserved </span>
        </div><!--copy/-->
       </footer>
      </div><!--LEFT-s/-->
     </div><!--LEFT/-->
     <div class="MID">
      <div class="MID-s">
       <div class="positions">
        <a href="index.html" class="poIndex">十七素材</a>
        <a href="#">关于我们</a>
        <a href="#">企业形象</a>
       </div><!--positions/-->
       <div class="ParBox">
           <h3 class="Title">企业形象</h3>
           <div class="about">
           <img src="images/about.jpg" width="260" height="273" />
           <br />
            在古老的巴黎文化中寻找浪漫的时装元素,
    同时融合巴黎百年甜品老店”十七素材的精致甜品气息.
    为中国消费者带来”触手可及”的精美时装.
    <br /><br />
    …十七素材的产品以浪漫,复古,精致而区别与同类品牌. 
    让十七素材女孩每天都出彩,永远不出错.
    <br /><br />
    品牌价值：普通女孩的衣橱朋友,好像你的闺密,永远陪在你的身边
    客户定位：心理年龄22-32岁，<br />
    既可以是有一定消费能力的学生族，也可以是充满时尚感的小白领，以及富有年轻活力的时尚辣妈！
    设计DNA：自信 百变 浪漫 优雅<br />
    手绘字体 小写字母 橙红色的运用以及”…”的设计,宛如女孩子随手在日记本上的涂抹俏皮,复古,充满想象充分传达了品牌的原创,让人过目难忘
    在法国,女人们往往温柔地称呼可爱精灵, 百变如猫的闺密为“ma minette”,<br />
    意思是“象猫咪一样可爱的好朋友”<br />
    而法语“une minette”,又指对美丽装扮由衷追求的女性<br />
    我们的浪漫故事由此开始…
    
           </div><!--about/-->
       </div><!--parBox--> 
      </div><!--MID-s/-->
     </div><!--MID/-->
     <div class="clearfix"></div>
     <div class="footer2">
      <p>Copyright © 计本1501 201508110030 安源 &nbsp; </p>
      <p>版权所有：安源</p>
     </div><!--footer2/-->
    </div><!--content/-->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/js.js"></script>
    <!--导航定位 不要包含-->
    <script>
     $(function(){
		 $(".navCur:eq(0) a:first").addClass("A");
		 })
    </script>
  </body>
</html>
