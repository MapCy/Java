<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>谛听 ditecting</title>

<link href="bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/index.css" rel="stylesheet" type="text/css">
<link href="css/nav.css" rel="stylesheet" type="text/css">
<style>
@media screen and (max-width: 750px) {
	#main {
		margin-top: -80px;
	}
	#big {
		display: none;
	}
	.slogan {
		font-size: 20px;
	}
}

a {
	text-decoration: none
}

a:hover {
	text-decoration: none
}

@media screen and (min-width: 751px) {
	#small {
		display: none;
	}
}
</style>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse" aria-expanded="false">

				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a href="<%=basePath%>index" class="navbar-brand" style="font-family:rockwell;font-size:20px">Ditecting</a>

		</div>
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li id="summary">
					<a href="#" title="统计总览">统计总览</a>
				</li>
				<li id="earth">
					<a href="<%=basePath%>visualMap" title="统计总览">全球态势</a>
				</li>
				<!--<li id="earth"><a href="http://219.216.64.70:8080/Integration/Situation.html" title="统计总览"  target="_blank">全球态势</a></li>-->
				<li class="dropdown">
					<a id="report" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" title="工控报告">
						工控报告
						<span class="caret"></span>
					</a>
					<ul class="dropdown-menu" style="font-family: verdana;">
						<li>
							<a href="#">ICS全球分布报表</a>
						</li>
						<li role="separator" class="divider"></li>
						<li>
							<a href="#">ICS中国各省分布报表</a>
						</li>
						<li role="separator" class="divider"></li>
						<li>
							<a href="#">ICS常规服务开放报表</a>
						</li>
					</ul>
				</li>
				<li id="handbook">
					<a href="<%=basePath%>handBook" title="用户手册">用户手册</a>
				</li>
			</ul>

			<button type="button" class="btn btn-success navbar-btn pull-right" title="联系我们" data-container="body" data-toggle="popover" data-placement="bottom" data-content="ditecting@gmail.com或关注微信号：ditecting">
				<span class="glyphicon glyphicon-envelope" aria-hidden="true"> 联系我们</span>
			</button>
			<span class="btn  navbar-btn pull-right" title="选择语言">
				<a href="?l=zh-cn">
					<font color="white">简体中文</font>
				</a>
				<font color="white">|</font>
				<a href="?l=en-us">
					<font color="white">English</font>
				</a>
			</span>
		</div>
	</div>
	</nav>
	<!-- 以上是导航条 -->

	<div class="container-fluid">
		<div id="blank_top"></div>
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12">
				<div align="center">
					<img id="big" width=150 height=150 src="img/diting2.png" class="img-responsive" alt="logo">
				</div>

				<!-- <div align="center">
					<h1 class="slogan">辨工控网间之万物 探恶意漏洞以补天</h1>
				</div> -->
			</div>
			<br>
		</div>
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="col-md-12 input-group has-success" style="margin:20px">
					<input id="search_value" type="text" class="form-control" placeholder="service:Modbus" style="font-family:consolas;">
					<!-- <span class="input-group-btn">
						<button class="btn btn-default" type="submit" onclick="alert('点了地图Map')" style="background-color: #a9a9a9; color: white">地图视角</button>
					</span> -->
					<span class="input-group-btn">
						<button id="dyting_search" class="btn btn-success" type="button">谛听一下</button>
					</span>
				</div>
				<!-- <div>
					<em>
						为了得到更精确的查询结果，请按
						<strong>用户手册</strong>
						规则搜索或从
						<strong>统计总览</strong>
						找到你想了解的内容
					</em>
				</div> -->
			</div>
		</div>
		<div class="row" style="background:#EEEEEE;height:auto;border-top: 1px solid #e4e4e4;border-bottom: 1px solid #e4e4e4;margin-top:150px;">
				<h3>谛听能为你做些什么……</h3>
				<div class="col-md-8 col-md-offset-2">
					<div class="col-xs-12 col-sm-4 col-md-4" align="center">
						<img src="img/earth1.jpg" width=60 height=60 class="img-responsive">
						<h4>搜索工控设备</h4>
						<p style="font-size:15px;">搜索联网工控设备，定位工控系统位置</p>
					</div>
					<div class="col-xs-12 col-sm-4 col-md-4" align="center">
						<img src="img/shield2.jpg" width=60 height=60 class="img-responsive">
						<h4>发现安全威胁</h4>
						<p style="font-size:15px;">发现安全问题，评估安全问题</p>
					</div>
					<div class="col-xs-12 col-sm-4 col-md-4" align="center">
						<img src="img/lingdang.png" width=60 height=60 class="img-responsive">
						<h4>可视化分析</h4>
						<p style="font-size:15px;">可视化感知工控安全态势，关注你身边的工控系统安全</p>
					</div>
				</div>
		</div>
		<div class="row" style="margin:10px">
			<div class="col-md-4 col-md-offset-4">
				Copyright &copy; 2016 <strong><a href="#">谛听</a></strong> 网络空间工控设备搜索引擎  权利全部保留
			</div>	
		</div>
</body>
<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
<script src="js/jquery-2.1.1.js"></script>
<!-- 包括所有已编译的插件 -->
<script src="bootstrap-3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$('#dyting_search').click(function(){
		var text = $('#search_value').val();
		if(text == '' || text == undefined || text == null){
			//搜索内容为空，返回首页
			window.location.href="<%=basePath%>index";
			return;
		} 
		//console.log(text);
		//分离关键字和值并判断，若存在多组搜索式，则只取第一组。如port:502;service:tcp...则只取port:502
		var map = text.trim().split(":",2);
		
		/**************************\
		*      搜索式合法性验证                        *
		\**************************/
		//判断value是否有特殊字符或是否为空
        var flag = new RegExp("[`~!@#$^&*()=|{}':;',\\[\\].<>《》/?~！@#￥……&*（）——|{}【】‘；：”“'。，、？ ]");
		if((map[1] == '' || map[1] == undefined || map[1] == null) || flag.test(map[1])){
			alert("搜索式不合法！");
			return;
		}

		//alert(map[0]+"--"+map[1]);
		//return;
		
		var p = /^[0-9]+.?[0-9]*$/; //当关键字key为port时判断value部分是否为数字
		if ((map[0] == 'port' && p.test(map[1])) || map[0] == 'service' || map[0] == 'ip' || map[0] == 'time' ||
				map[0] == 'country' || map[0] == 'city') {
			window.location.href="<%=basePath%>search?key="+map[0]+"&val="+map[1]+"&pageNo="+1;
		}else{
			alert("语法错误！");
			return;
		}

	});
</script>
</html>