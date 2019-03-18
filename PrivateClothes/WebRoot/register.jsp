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

	<link href="css/bootstrap.min.css" rel="stylesheet">
	<script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/layui/css/layui.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.all.js"></script>
	
    <script type="text/javascript">
    	function check(){
    		var password = $("#password").val();
	    		var confirmPassword = $("#confirmPassword").val();
	    		if( password == confirmPassword){
	    			return true;
	    		}else{
	    			alert("您两次输入的密码不一致，请重新输入！");
	    			return false;
	    		}
    	}
    </script>
    
    <style type="text/css">
    	body{
			background: url("images/bg.jpg"); 
			font-size:2em;
    	}
    	.container{
    		margin-top:100px;
    		width:1100px;
    	}
    	#verify {
			height: 34px;
			vertical-align: top;
			font-size: 16px;
		}
	
		#code_img {
			width: 100px;
			height: 40px;
			cursor: pointer;
			vertical-align: top;
		}
    </style>
  </head>
  
  <body>
  	<div class="container">
	<form class="form-horizontal" action="UserServlet?method=register" method="post">
		<div class="form-group">
			<label for="firstname" class="col-sm-2 control-label"><a href="index.jsp" style="color:#2fa0ec;">服装私人定制网</a></label>
		</div>
		<div class="form-group">
			<label for="firstname" class="col-sm-2 control-label">注册邮箱</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="account" name="account" placeholder="请输入注册邮箱" />
			</div>
		</div>
		<div class="form-group">
			<label for="lastname" class="col-sm-2 control-label">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</label>
			<div class="col-sm-6">
				<input type="password" class="form-control" id="password" name="password" placeholder="请输入密码" />
			</div>
		</div>
		<div class="form-group">
			<label for="lastname" class="col-sm-2 control-label">确认密码</label>
			<div class="col-sm-6">
				<input type="password" class="form-control" id="confirmPassword" name="confirmPassword" placeholder="请重新输入密码" />
			</div>
		</div>
		<div class="form-group">
			<label for="lastname" class="col-sm-2 control-label">名字</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="name" name="name" placeholder="请输入姓名" />
			</div>
		</div>
		<div class="form-group">
			<label for="lastname" class="col-sm-2 control-label">个性签名</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="info" name="info" placeholder="请输入个性签名" />
			</div>
		</div>
		<div class="form-group">
			<label for="lastname" class="col-sm-2 control-label">性别</label>
			<div class="col-sm-6">
				<select name="gender">
					<option value="nan">男</option>
					<option value="nv">女</option>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label for="lastname" class="col-sm-2 control-label">出生年月日</label>
			<div class="col-sm-6">
				<input type="text" class="layui-input" id="birthday" name="birthday">
			</div>
		</div>
		<div class="form-group">
			<label for="lastname" class="col-sm-2 control-label">地址</label>
			<div class="col-sm-6">
				<input type="text" class="layui-input" id="address" name="address">
			</div>
		</div>
		<div class="form-group">
			<label for="lastname" class="col-sm-2 control-label">电话</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="phone" name="phone" placeholder="请输入姓名" />
			</div>
		</div>
		<div class="form-group">
			<label for="lastname" class="col-sm-2 control-label">验证码</label>
			<div class="col-sm-6">
				<input type="text" class="topAlign" id="verify" name="verify" required>
					<canvas width="100" height="40" id="verifyCanvas"></canvas>
					<img id="code_img">
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit"  class="btn btn-default">注册</button>
			</div>
		</div>
		<script src="/layui/layui.js"></script>
		<script>
		layui.use('laydate', function(){
		  var laydate = layui.laydate;
		  
		  //执行一个laydate实例
		  laydate.render({
		    elem: '#birthday' //指定元素
		  });
		});
		</script>
		
			
<script>
    var nums = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0", 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
        'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x',
        'y', 'z'];

    drawCode();
    // 绘制验证码
    function drawCode() {
        var canvas = document.getElementById("verifyCanvas");  //获取HTML端画布
        var context = canvas.getContext("2d");                 //获取画布2D上下文
        context.fillStyle = "cornflowerblue";                  //画布填充色
        context.fillRect(0, 0, canvas.width, canvas.height);   //清空画布
        context.fillStyle = "white";                           //设置字体颜色
        context.font = "25px Arial";                           //设置字体
        var rand = new Array();
        var x = new Array();
        var y = new Array();
        for (var i = 0; i < 5; i++) {
            rand[i] = nums[Math.floor(Math.random() * nums.length)]
            x[i] = i * 16 + 10;
            y[i] = Math.random() * 20 + 20;
            context.fillText(rand[i], x[i], y[i]);
        }
        //画3条随机线
        for (var i = 0; i < 3; i++) {
            drawline(canvas, context);
        }

        // 画30个随机点
        for (var i = 0; i < 30; i++) {
            drawDot(canvas, context);
        }
        convertCanvasToImage(canvas)
    }

    // 随机线
    function drawline(canvas, context) {
        context.moveTo(Math.floor(Math.random() * canvas.width), Math.floor(Math.random() * canvas.height));             //随机线的起点x坐标是画布x坐标0位置，y坐标是画布高度的随机数
        context.lineTo(Math.floor(Math.random() * canvas.width), Math.floor(Math.random() * canvas.height));  //随机线的终点x坐标是画布宽度，y坐标是画布高度的随机数
        context.lineWidth = 0.5;                                                  //随机线宽
        context.strokeStyle = 'rgba(50,50,50,0.3)';                               //随机线描边属性
        context.stroke();                                                         //描边，即起点描到终点
    }
    // 随机点(所谓画点其实就是画1px像素的线，方法不再赘述)
    function drawDot(canvas, context) {
        var px = Math.floor(Math.random() * canvas.width);
        var py = Math.floor(Math.random() * canvas.height);
        context.moveTo(px, py);
        context.lineTo(px + 1, py + 1);
        context.lineWidth = 0.2;
        context.stroke();

    }
    // 绘制图片
    function convertCanvasToImage(canvas) {
        document.getElementById("verifyCanvas").style.display = "none";
        var image = document.getElementById("code_img");
        image.src = canvas.toDataURL("image/png");
        return image;
    }

    // 点击图片刷新
    document.getElementById('code_img').onclick = function () {
        $('#verifyCanvas').remove();
        $('#verify').after('<canvas width="100" height="40" id="verifyCanvas"></canvas>')
        drawCode();
    }
</script>
	</form>
	</div>
  </body>
</html>
