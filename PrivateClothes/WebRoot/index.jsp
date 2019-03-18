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
  </head>
  
  <body>
  <jsp:include page="head.jsp"></jsp:include>
<!--搜索-->
<div class="s_bg">
  <div class="h_ser">
    <p><b>热门关键词：</b><a href="">精品服装</a><a href="">精品服装哪家好</a><a href="">精品服装定制</a></p>
    <div class="s_inp fr">
      <input type="text" class="inp01" value="请输入关键字" id="seachkeywords"/>
      <input type="image" src="images/s_ss.gif" class="fl" id="sousuo"/>
    </div>
  </div>
</div>
<!--banner-->
<div class="banner">
	<ul class="slides">
		<li style="background:url(images/banner1.jpg) 50% 0 no-repeat;"></li>
		<li style="background:url(images/banner2.jpg) 50% 0 no-repeat;"></li>
	</ul>
</div>
<script src="js/jquery.flexslider-min.js"></script>
    <script>
    $(function(){
        $('.banner').flexslider({
            directionNav: true,
            pauseOnAction: false
        });
    });
    </script>
<div class="kh_bg">
  <div class="content">
    <div class="kh_top"><a href=""><span>COOPERATION</span>热销服装</a></div>
    <div class="kh_con">
      <div class="zz01 fl"><a href="javascript:;" id="flhzhb"></a></div>
      <div class="zz02 fl">
        <ul class="pr" id="hzhb">
          <li><a href=""><img src="images/h1.jpg" alt="" width="200" height="110" /></a><span><a href="">山西某某酒店</a></span></li>
		  <li><a href=""><img src="images/h2.jpg" alt="" width="200" height="110" /></a><span><a href="">某某绿色食品公司</a></span></li>
          <li><a href=""><img src="images/h3.jpg" alt="" width="200" height="110" /></a><span><a href="">某某机械生产公司</a></span></li>
		  <li><a href=""><img src="images/h4.jpg" alt="" width="200" height="110" /></a><span><a href="">汉庭酒店</a></span></li>
		  <li><a href=""><img src="images/h5.jpg" alt="" width="200" height="110" /></a><span><a href="">某某商务酒店</a></span></li>
		  <li><a href=""><img src="images/h6.jpg" alt="" width="200" height="110" /></a><span><a href="">某某物业服务公司</a></span></li>
        </ul>
      </div>
      <div class="zz03 fl"><a href="javascript:;" id="frhzhb"></a></div>
      <div class="clear"></div>
    </div>
  </div>
</div>
<script type="text/javascript">
    window.SetScrollPicleft('hzhb', 'flhzhb', 'frhzhb', 217 * 5, 217);
</script>

<div class="content">
  <div class="rx" id="prog">
    <div class="zx_top"><a href=""><span>PRODUCTS</span>产品展示</a></div>
    <div class="rx_nav">
      <ul last="nobor01">
        <li><a href="">春季精品服装</a></li>
        <li><a href="">夏季精品服装</a></li>
        <li><a href="">秋季精品服装</a></li>
        <li><a href="">冬季精品服装</a></li>
        <li><a href="">企业服装定制</a></li>
        <li><a href="">酒店服装定制</a></li>
		    <li><a href="">热销修身套装</a></li>
        <li><a href="">热销新款礼服</a></li>
      </ul>
    </div>
    <div class="rx_con">
      <dl>
        <dt hover="pk_show">
          <p class="rx_p"> <em> <i><a href="">精金品服装</a></i> <span> <a href=""><img src="images/rx_but01.gif" alt="" /></a> <a href=""><img src="images/rx_but02.gif" alt="" /></a> </span> </em> </p>
          <a href=""><img src="images/c1.jpg" alt="" width="304" height="507" /></a> </dt>
        <dd>
          <ul>
            <li><a href=""><img src="images/c2.jpg" alt="" width="201" height="247" /></a><span>精品女装礼服</span></li>
            <li><a href=""><img src="images/c3.jpg" alt="" width="201" height="247" /></a><span>春季精品女装</span></li>
            <li><a href=""><img src="images/c4.jpg" alt="" width="201" height="247" /></a><span>秋季热销女装</span></li>
            <li><a href=""><img src="images/c5.jpg" alt="" width="201" height="247" /></a><span>热销新款服装</span></li>
            <li><a href=""><img src="images/c6.jpg" alt="" width="201" height="247" /></a><span>夏季精品服装</span></li>
            <li><a href=""><img src="images/c7.jpg" alt="" width="201" height="247" /></a><span>企业精品服装</span></li>
			      <li><a href=""><img src="images/c8.jpg" alt="" width="201" height="247" /></a><span>办公室精品服装</span></li>
            <li><a href=""><img src="images/c9.jpg" alt="" width="201" height="247" /></a><span>热销休闲服装</span></li>
          </ul>
        </dd>
      </dl>
    </div>
  </div>
  <div class="clear"></div>
</div>
<!--横条-->
<div class="ys01"><img src="images/ys01.jpg" alt=""/></div>
<!--客户见证-->
<div class="jz_bg">
  <div class="content">
    <div class="jz_con">
      <div class="zz01 fl"><a href="javascript:;" id="flkhjz"></a></div>
      <div class="jz02 fl">
        <div class="pr" id="khjz">
          <dl>
            <dt><a href=""><img src="images/k1.png" alt="" width="187" height="187"/></a><span><a href="">某某服装价格优惠，质量很好</a></span></dt>
            <dd>
              <p>我做采购经理好多年了，去年接到总部的通知。重新找工作服厂家设计定制我们的工作服。经过朋友的介绍，我认识了河北某某服装有限公司的王经理，经过交谈，双方都非常满意，王经理多次到集团接洽，就工作服的事宜我们进行了商讨……</p>
              <i><a href=""></a></i> </dd>
          </dl>
          <dl>
            <dt><a href=""><img src="images/k2.png" alt="" width="187" height="187"/></a><span><a href="">某某服装厂家直销，款式多</a></span></dt>
            <dd>
              <p>去年10月份和河北某某服装有限公司接洽。定制整个中国大陆厂区的工服。接到意向书之后24小时河北某某服装有限公司资深设计师便上门沟通恰谈去年接洽事宜。定制整个中国大陆厂区的工服接到意向书之后河北某某服装有限公司资深设计师……</p>
              <i><a href=""></a></i> </dd>
          </dl>
          <dl>
            <dt><a href=""><img src="images/k3.png" alt="" width="187" height="187"/></a><span><a href="">某某服装公司产品质量好，款式多</a></span></dt>
            <dd>
              <p>实行订货+现货供货的方式，降低客户库存和经营风险。销售部全程跟踪为店铺的科学管理出谋划策品计划合理配发货品，及时调拨库存降低经营风险</p>
              <i><a href=""></a></i> </dd>
          </dl>
		  <dl>
            <dt><a href=""><img src="images/k4.png" alt="" width="187" height="187"/></a><span><a href="">服装的款式新颖、价格优惠</a></span></dt>
            <dd>
              <p>厂家直供货源"一流品质，三流价格"品牌聚集着来自世界各地的优秀设计师捕捉国际最新的时尚信息和潮流趋势，以最快的速度设计出潮流最新款</p>
              <i><a href=""></a></i> </dd>
          </dl>
        </div>
      </div>
      <div class="zz03 fl"><a href="javascript:;" id="frkhjz"></a></div>
      <div class="clear"></div>
    </div>
  </div>
</div>
<script type="text/javascript">
    window.SetScrollPicleft('khjz', 'flkhjz', 'frkhjz', 272 * 4, 272);
</script>
<!--荣誉资质-->
<div class="content">
  <div class="zz fl">
    <div class="zz_top"> <span><a href="">more+</a></span>
      <h3><a href="">荣誉资质</a></h3>
    </div>
    <div class="zz_con">
      <div class="fl" id="ryzz">
        <p class="fl"><a href=""><img src="images/r1.jpg" alt="" height="305" width="220" /></a><span><a href="">精品服装荣誉证书</a></span></p>
		<p class="fl"><a href=""><img src="images/r2.jpg" alt="" height="305" width="220" /></a><span><a href="">精品服装质量认证</a></span></p>
      </div>
    </div>
  </div>
  <script type="text/javascript">
    window.SetScrollPicleft('ryzz', false, false, 182, 182);
  </script>
  <div class="zj fl">
    <div class="zz_top"> <span><a href="">more+</a></span>
      <h3><a href="">关于我们</a></h3>
    </div>
    <div class="zj_con">
      <dl>
        <dt><a href=""><img src="images/about.jpg" alt="" width="368" height="240" /></a></dt>
        <dd>
          <h3><a href="">河北某某服装有限公司</a></h3>
          <p>一豆品牌，它的载体是用以和自己有竞争者的产品或劳务相区分的名称、术语、象征、记号或者设计及其组合，来自于消费者心智中形成的关于其载体的印象。女装是一个时代发展的缩影。跟它相对的就是Man，它的出现更是这个时代进步、文明、兴旺发达、繁荣昌盛的象征。也映衬着一种民族的精神，传承着当地的历史文化，品牌与款式的多元化推动了时装的发展。它使女人倍添姿彩，同时装为产业增添亮点。品牌女装顾名思义就是两词的完美组合，但是在现今互联网络流行的阶段，它不再那么简单，在流行的网络语中，它富有低调的奢华...
</p>
          <span><a href=""><img src="images/zj_but01.gif" alt="" /></a></span> </dd>
      </dl>
    </div>
  </div>
  <div class="clear"></div>
  <div class="xc">
    <div class="xc_top"> <span><a href="">more+</a></span>
      <h3><a href="">店面展示</a></h3>
    </div>
    <div class="xc_con">
      <div class="xc01"><a href="javascript:;" id="flqyxc"></a></div>
      <div class="xc03"><a href="javascript:;" id="frqyxc"></a></div>
      <div class="xc02">
        <ul class="fl pr" id="qyxc">
          <li><a href=""><img src="images/g1.jpg" alt="" width="200" height="135" /></a><span><a href="">精品女装店铺</a></span></li>
		      <li><a href=""><img src="images/g2.jpg" alt="" width="200" height="135" /></a><span><a href="">春季热销款</a></span></li>
		      <li><a href=""><img src="images/g3.jpg" alt="" width="200" height="135" /></a><span><a href="">精品礼服店</a></span></li>
		      <li><a href=""><img src="images/g4.jpg" alt="" width="200" height="135" /></a><span><a href="">夏季清凉装</a></span></li>
		      <li><a href=""><img src="images/g5.jpg" alt="" width="200" height="135" /></a><span><a href="">精品服装销售</a></span></li>
        </ul>
      </div>
      <div class="clear"></div>
    </div>
  </div>
  <script type="text/javascript">
    window.SetScrollPicleft('qyxc', 'flqyxc', 'frqyxc', 229 * 5, 229);
</script>
</div>
<!--新闻中心-->
<div class="dt_bg">
  <div class="content">
    <div class="dt fl" id="ZXS">
      <div class="dt_top"> <span><a href="">more+</a></span>
        <ul>
          <li><a href="">企业快讯</a></li>
          <li><a href="">行业动态</a></li>
        </ul>
      </div>
      <div class="dt_con">
        <dl>
          <dt><a href=""><img src="images/n1.jpg" alt="" width="214" height="150" /></a></dt>
          <dd>
            <h3><a href="">都市精品简惑女装 彰显女性靓丽优雅</a></h3>
            <p>作为一名现代都市女性，不仅要应对严肃的工作场合，也要在舞会、酒会等交际场合游刃有余，更要成为步行街、商场、KTV等休闲场所的的时尚达人。因此，一个平常普通的女装品牌完全HOLD不住。简惑女装，18年来专业为都市女性定位不同角色，让她们处处彰显靓丽优雅。时尚都市女性作为一道移动的风景线，她们如同一个华服展示柜般，活动在城市的各个角落，将她们对审美和品味一一展现。为此，作为她们对时尚认知的载体，女装品牌的选择不可谓不慎。...</p>
            <span><a href="">【查看更多】</a></span> </dd>
        </dl>
        <div class="clear"></div>
        <div class="dt_list">
          <ul>
            <li><span>【2016-07-24】</span><a href="">精品、欧版、日韩女装免费代理一件代发</a></li>
            <li><span>【2016-07-24】</span><a href="">时尚精品女装 一手货源一件代发</a></li>
            <li><span>【2016-07-24】</span><a href="">羊绒大衣加盟 看女装的时尚之路</a></li>
            <li><span>【2016-07-24】</span><a href="">创业帮扶,精品服装“6元购”</a></li>
            <li><span>【2016-07-24】</span><a href="">2016年上海最值得推荐的20家精品服装买手店</a></li>
            <li><span>【2016-07-24】</span><a href="">微信女装一手厂家货源,微商女装货源免费招代理</a></li>
            <li><span>【2016-07-24】</span><a href="">互联网品牌裂帛入围“最佳风格女装品牌”奖项</a></li>
            <li><span>【2016-07-24】</span><a href="">时尚女装精品童装招微商代理</a></li>
            <li><span>【2016-07-24】</span><a href="">多款精品服装亮相精品屋 炫舞吧引领休闲潮流</a></li>
            <li><span>【2016-07-24】</span><a href="">2016年互联网时代下的女装服装加盟技巧你知道吗</a></li>
          </ul>
        </div>
      </div>
      <div class="dt_con">
        <dl>
          <dt><a href=""><img src="images/n2.jpg" alt="" width="214" height="150" /></a></dt>
          <dd>
            <h3><a href="">大型商场品牌服装开始换季 春夏款打折力度大</a></h3>
            <p>正价卖1000多元的衣服现在打折只卖300多元。记者从服装市场了解到，夏日里很多服装品牌已经开始换季，秋冬装上市的同时春夏款开始打折销售，此时消费者购买心仪品牌的服装挺划算。
　　记者昨天走访本市几家大型商场看到，几乎所有品牌服装都开始了换季，随着秋冬装的上市，春夏款服装开始打折销售，江南布衣、米盖尔等品牌都有大力度折扣，有的夏季款服装价格甚至只是前一阵刚上市的一半。与此同时，源于欧洲的一些大品牌服装也迎来折扣季，意大利的MAX MARA、法国的亚卡迪等也都开始打折，吸引不少市民海外代购。...</p>
            <span><a href="">【查看更多】</a></span> </dd>
        </dl>
        <div class="clear"></div>
        <div class="dt_list">
          <ul>
            <li><span>【2015-08-24】</span><a href="">温州调研服装产业:向时尚产业升级 为时尚之都添彩</a></li>
            <li><span>【2015-08-23】</span><a href="">服装行业竞争激烈 行业品牌需转型升级获高市场</a></li>
            <li><span>【2015-08-22】</span><a href="">服装培训细说对结构设计、裁剪和缝制的理解</a></li>
            <li><span>【2015-08-25】</span><a href="">美伦美奂蒙古族服装服饰大赛颁奖盛典闪耀青城</a></li>
            <li><span>【2015-08-30】</span><a href="">纺织服装行业深度报告:总需求平衡下结构性短缺导致棉花及纱线大涨</a></li>
            <li><span>【2015-08-24】</span><a href="">女王的衣橱:白金汉宫展出女王服装</a></li>
            <li><span>【2014-11-22】</span><a href="">细说服装设计中服装面料基础知识</a></li>
            <li><span>【2014-11-22】</span><a href="">服装店铺——装修装饰设计完全攻略</a></li>
            <li><span>【2014-11-22】</span><a href="">长款蕾丝一步裙搭配-服装知识</a></li>
            <li><span>【2014-11-22】</span><a href="">服装创意设计专业目前的市场需求分析</a></li>
          </ul>
        </div>
      </div>
    </div>
    <script type="text/javascript">
    TabCat("#ZXS>.dt_top ul li", "#ZXS>div.dt_con", "#ZXS>.dt_top span a");
</script>    
  </div>
</div>
<div class=" clear"></div>

<!--底部-->
<jsp:include page="footer.jsp"></jsp:include>
  </body>
</html>
