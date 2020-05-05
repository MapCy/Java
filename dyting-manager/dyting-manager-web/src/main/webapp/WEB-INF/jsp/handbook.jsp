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
<title>Handbook</title>
<link href="bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/handbook.css" rel="stylesheet" type="text/css">
<link href="css/nav.css" rel="stylesheet" type="text/css">
<script src="js/jquery-2.1.1.js"></script>
<script src="bootstrap-3.3.7/js/bootstrap.min.js"></script>
<style>
@media screen and (max-width: 810px) {
	#section1, #section2, #section3, #section5, #section6, #section7,
		#section8 {
		margin-left: 150px;
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
			<a href="<%=basePath%>index" class="navbar-brand" style="font-family:Vladimir Script;font-size:26px">Ditecting</a>

		</div>
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li id="summary">
					<a href="<%=basePath%>sumary" title="统计总览">统计总览</a>
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
							<a href="<%=basePath%>world">ICS全球分布报表</a>
						</li>
						<li role="separator" class="divider"></li>
						<li>
							<a href="<%=basePath%>china">ICS中国各省分布报表</a>
						</li>
						<li role="separator" class="divider"></li>
						<li>
							<a href="<%=basePath%>normal">ICS常规服务开放报表</a>
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
	<div class="container">
		<div class="jumbotron">
			<h2>系统简介</h2>
			<p>
				<a href="http://baike.baidu.com/link?url=K40x6VGEAzU41_zd5zxt-XqiybORNG21TAWYo-tXkiRn2ewPmeL0fBzXQepXbdUctrQNKkPgSFVT4rLvWjKdnXqcJsNbqwivmenN9VintGa" style="color: green">谛听</a>
				乃是地藏菩萨经案下伏着的通灵神兽。可以通过听来辨认世间万物 尤其善于听人的心。
			</p>
			<p>传说是地藏菩萨的坐骑，谛听的原身是一条白犬，因为地藏法门以孝道为基，狗性忠诚，就如同文殊之狮子表智慧，普贤之白象表大行一样，地藏之谛听表忠诚不二之心。</p>
			<p>东北大学计算机学院姚羽教授组织学生编写研发——谛听(ditecting)网络空间工控设备搜索引擎，取谛听辨识万物之意，意在搜寻暴露在互联网上的工业控制系统联网设备， 帮助安全厂家维护工控系统安全、循迹恶意企图人士。</p>
			<p>通过谛听，你可以定位工控设备位置，捕捉开放端口，发现安全漏洞。通过谛听，你可以直观感受全球工控安全形势，关注你身边的工控系统安全。 谛听旨在为工控安全提供开放自由的研究环境，善用谛听，关注工控系统安全，促进工控安全发展。</p>
			<!-- <p class="sum">该套系统提供了强大的搜索查询功能，支持多种模式的设备搜索。主要包括：位置、端口、服务类型等。</p> -->
		</div>
		<div class="row">
			<div class="col-sm-3 col-md-3" id="myScrollspy">
				<ul class="nav nav-pills nav-stacked" data-spy="affix" data-offset-top="100">
					<li class="active">
						<a href="#section-1">使用方法和技巧</a>
					</li>
					<li>
						<a href="#section-2">基于协议的搜索</a>
					</li>
					<li>
						<a href="#section-3">基于端口的搜索</a>
					</li>
					<li>
						<a href="#section-4">基于IP地址的搜索</a>
					</li>
					<li>
						<a href="#section-5">基于扫描时间的搜索</a>
					</li>
					<li>
						<a href="#section-6">基于位置的搜索</a>
					</li>
					<li>
						<a href="#section-7">基于关键词搜索</a>
					</li>
					<li>
						<a href="#section-8">综合搜索</a>
					</li>
				</ul>
			</div>
			<div class="col-xs-12 col-sm-9 col-md-9">
				<h2 id="section-1">使用方法和技巧</h2>
				<br>
				<p class="sum">
					搜索基本语法为"搜索类型：关键字"；
					<br>
				</p>
				<p class="sum">
					当多个关键字或类型查询时，使用"&"进行分隔，同检索类型对应逻辑关系为“或”，不同检索类型对应逻辑关系为“与”；
					<br>
				</p>
				<p class="sum">
					检索词的使用是大小写不敏感的。
					<br>
					<br>
				</p>
				<hr>
				<h3 id="section-2">基于工控协议的搜索</h3>
				<br>
				<p class="sum">
					利用一些工业控制协议直接进行查询,语法
					<font color=#F7500>service ： 服务类型</font>
				</p>
				<p class="description">
					举例 : 搜索全球使用modbus协议的工控服务器的IP位置等信息时 service:modbus
					<br>
				</p>
				<hr>
				<h3 id="section-3">基于工控服务端口的搜索</h3>
				<br>
				<p class="sum">
					利用一些工业控制协议默认使用的端口号进行查询,语法
					<font color=#F7500>port ： 端口号</font>
				</p>
				<p class="description">
					举例 : 搜索全球使用modbus协议的工控服务器的IP位置等信息时 port:502。
					<br>
				</p>
				<hr>
				<h3 id="section-4">基于IP地址的搜索</h3>
				<br>
				<p class="sum">
					利用指定IP地址进行查询，可进行模糊查询,语法
					<font color=#F7500>ip ： IP地址</font>
				</p>
				<p class="description">
					举例 : 搜索IP地址为 225.225.225.0 的服务器： Ip: 225.225.225.0
					<br>
				</p>
				<p class="description">搜索IP地址为 225.225.* 的服务器： Ip: 225.225.*</p>
				<hr>
				<h3 id="section-5">基于扫描时间的搜索</h3>
				<br>
				<p class="sum">
					对扫描发生时间段进行查询，得到时间条件后的扫描结果,语法
					<font color=#F7500>time ： 时间</font>
				</p>
				<p class="description">举例：搜索扫描时间在2015年9月前的扫描结果 time:2015.9</p>
				<br>
				<hr>
				<h3 id="section-6">基于位置的搜索</h3>
				<br>
				<p class="sum">对扫描发生时间段进行查询，搜索类型包括country（国家）、 area（区域）、regname（省/州）、city（市）</p>
				<br>
				<p class="description">
					<font color=#F7500>country</font>
					： 国家查询，按照通用简写国家名
					<br>
				<p class="description">
					<font color=#F7500>area</font>
					： 可以根据国家简写搜索
					<br>
				<p class="description">
					举例: country：Danmark 或 area：DM
					<br>
				<p class="description">
					<font color=#F7500>regname</font>
					： 省/州 查询 根据某省份或区域进行查询
					<br>
				<p class="description">
					举例： regname:North Denmark,LiaoNing
					<br>
				<p class="description">
					<font color=#F7500>city</font>
					: 城市名称。
					<br>
				<p class="description">举例： city: Shenyang</p>
				<br>
				<hr>
				<h3 id="section-7">基于关键词搜索</h3>
				<br>
				<p class="sum">
					根据想要查找的指定设备型号、服务等关键词进行查询，可进行模糊查询,语法
					<font color=#F7500>keyword ： 关键词</font>
				</p>
				<p class="description">
					举例：搜索Siemens公司生产的或与Siemens相关的设备：keyword:Siemens
					<br>
				</p>
				<hr>
				<h3 id="section-8">综合信息搜索</h3>
				<br>
				<p class="sum">根据查找条件的叠加，精确定位查询信息。</p>
				<p class="description">
					搜索美国使用 502端口 且使用Siemens公司生产的服务器： country:US&port:502&keyword:Siemens
					<br>
				</p>
				<!-- <div style="height:200"></div> -->
			</div>
		</div>
	</div>

	<!-- 以上是主体 -->
	<div class="row" style="margin: 10px">
		<div class="col-md-4 col-md-offset-4">
			Copyright &copy; 2016
			<strong>
				<a href="#">谛听  </a>
			</strong>
			网络空间工控设备搜索引擎 权利全部保留
		</div>
	</div>
</body>
</html>