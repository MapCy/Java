<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>谛听 总览</title>
    <link href="bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/index.css" rel="stylesheet" type="text/css">
	<link href="css/nav.css" rel="stylesheet" type="text/css">
	<link href="css/sum.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="js/echarts.min.js" ></script>
    
    <!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
	<script src="js/jquery-2.1.1.js"></script>
	<!-- 包括所有已编译的插件 -->
	<script src="bootstrap-3.3.7/js/bootstrap.min.js"></script>

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

    <div class="container" style="margin-top: 120px">
        <div class="container">
            <div class="row">
                <div class="col-md-0">
                    <table class="table table-striped">
					    <center><h1>工控协议主题简介</h1></center>
                        <h3 style="color:green">Protocols</h3>
                        <thead>
                        <tr>
                            <th>Service</th>
                            <th>Records</th>
                            <th>Port</th>
							<th>wiki</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr class="success">
                            <td><a href="http://localhost:8080/search?key=service&val=Siemens S7&pageNo=1">Siemens S7</a></td>
                            <td><a href="http://localhost:8080/search?key=port&val=102&pageNo=1">port:102</a></td>
                             <td><span class="label label-default">TCP</span><span class="label label-success">102</span></td>
							 <td><a href="http://baike.baidu.com/view/10285446.htm">Wikipedia</a></td>
                        </tr>
                        <tr>
                            <td><a href="http://localhost:8080/search?key=service&val=Modbus&pageNo=1">Modbus</a></td>
                            <td><a href="http://localhost:8080/search?key=port&val=502&pageNo=1">port:502</a></td>
                            <td><span class="label label-default">TCP</span><span class="label label-success">502</span></td>
							<td><a href="https://en.wikipedia.org/wiki/Modbus">Wikipedia</a></td>
                        </tr>
						<tr class="success">
                            <td><a href="http://localhost:8080/search?key=service&val=IEC 60870-5-104&pageNo=1">IEC 60870-5-104</a></td>
                            <td><a href="http://localhost:8080/search?key=port&val=2404&pageNo=1">port:2404</a></td>
                            <td><span class="label label-default">TCP</span><span class="label label-success">2404</span></td>
							<td><a href="https://en.wikipedia.org/wiki/IEC_60870-5">Wikipedia </a></td>
                        </tr>
                        <tr>
                            <td><a href="http://localhost:8080/search?key=service&val=DNP3&pageNo=1">DNP3</a></td>
                            <td><a href="http://localhost:8080/search?key=port&val=20000&pageNo=1">port:20000</a></td>
                            <td><span class="label label-default">TCP</span><span class="label label-success">20000</span></td>
							<td><a href="https://en.wikipedia.org/wiki/DNP3">Wikipedia </a></td>
                        </tr>
                        <tr class="success">
                            <td><a href="http://localhost:8080/search?key=service&val=EtherNet/IP&pageNo=1">EtherNet/IP</a></td>
                            <td><a href="http://localhost:8080/search?key=port&val=44818&pageNo=1">port:44818</a></td>
                            <td><span class="label label-default">TCP</span><span class="label label-success">44818</span></td>
							<td><a href="https://en.wikipedia.org/wiki/EtherNet/IP">Wikipedia </a></td>
                        </tr>
                        <tr>
                            <td><a href="http://localhost:8080/search?key=service&val=BACnet&pageNo=1">BACnet</a></td>
                            <td><a href="http://localhost:8080/search?key=port&val=47808pageNo=1">port:47808</a></td>
                            <td><span class="label label-default">TCP</span><span class="label label-success">47808</span></td>
							<td><a href="https://en.wikipedia.org/wiki/BACnet">Wikipedia</a></td>
                        </tr>
						<tr class="success">
                            <td><a href="http://localhost:8080/search?key=service&val=Tridium Niagara Fox&pageNo=1">Tridium Niagara Fox</a></td>
                            <td><a href="http://localhost:8080/search?key=port&val=1911pageNo=1">port:1911</a></td>
                            <td><span class="label label-default">TCP</span><span class="label label-success">1911</span></td>
							<td><a href="https://zh.wikipedia.org/wiki/Modbus">Wikipedia</a></td>
                        </tr>
						<tr>
                            <td><a href="http://localhost:8080/search?key=service&val=OMRON FINS&pageNo=1">OMRON FINS</a></td>
                            <td><a href="http://localhost:8080/search?key=port&val=9600pageNo=1">port:9600</a></td>
                            <td><span class="label label-default">TCP</span><span class="label label-success">9600</span></td>
							<td><a href="https://en.wikipedia.org/wiki/FINS">Wikipedia</a></td>
                        </tr>
						<tr class="success">
                            <td><a href="http://localhost:8080/search?key=service&val=PCWorx&pageNo=1">PCWorx</a></td>
                            <td><a href="http://localhost:8080/search?key=port&val=1962pageNo=1">port:1962</a></td>
                            <td><span class="label label-default">TCP</span><span class="label label-success">1962</span></td>
							<td><a href="https://en.wikipedia.org/wiki/PCWorx">Wikipedia</a></td>
                        </tr>
						<tr>
                            <td><a href="http://localhost:8080/search?key=service&val=ProConOs&pageNo=1">ProConOs</a></td>
                            <td><a href="http://localhost:8080/search?key=port&val=20547pageNo=1">port:20547</a></td>
                            <td><span class="label label-default">TCP</span><span class="label label-success">20547</span></td>
							<td><a href="https://en.wikipedia.org/wiki/ProConOs">Wikipedia</a></td>
                        </tr>
						<tr class="success">
						 <td><a href="http://localhost:8080/search?key=service&val=MELSEC-Q&pageNo=1">MELSEC-Q</a></td>
                            <td><a href="http://localhost:8080/search?key=port&val=5007pageNo=1">port:5007</a></td>
                            <td><span class="label label-default">TCP</span><span class="label label-success">5007</span></td>
							<td><a href="https://en.wikipedia.org/wiki/MELSEC-Q">Wikipedia</a></td>
                        </tr>						
                        </tbody>
                    </table>
                </div>
				<br>
				<br>
                <!-- <hr> -->
                <div class="col-md-0" style="margin-bottom: 75px">
                    <table class="table table-striped">
                        <h3 style="color:green">Products</h3>
                        <thead>
                        <tr>
                            <th>Vendor</th>
                            <th>Model</th>
                            <th>Version</th>
                            <th>Dork</th>
                        </tr>
                        </thead>
                        <tbody>
						<tr class="success">
                            <td>Allen-Bradley</td>
                            <td>Generic</td>
                            <td>Generic</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3AAllen-Bradley'>Allen-Bradley</a></td>
                        </tr>
						<tr>
                            <td>BroadWeb</td>
                            <td>Generic</td>
                            <td>Generic</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3ABroadWeb'>BroadWeb</a></td>
                        </tr>
                        <tr class="success">
                            <td>Generic</td>
                            <td>Generic</td>
                            <td>Generic</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3APLC'>PLC</a></td>
                        </tr>
						<tr>
                            <td>Generic</td>
                            <td>Generic</td>
                            <td>Generic</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3ASCADA'>SCADA</a></td>
                        </tr>

						<tr class="success">
                            <td>Siemens</td>
                            <td>Generic</td>
                            <td>Generic</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3ASiemens'>Siemens</a></td>
                        </tr>
						<tr>
                            <td>Siemens</td>
                            <td>Siemens s7</td>
                            <td>Generic</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3APortal0000.htm'>Portal0000.htm</a></td>
                        </tr>
						<tr class="success">
                            <td>General Electric</td>
                            <td>Generic</td>
                            <td>Cimplicity</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3ACIMPLICITY-HttpSvr'>CIMPLICITY-HttpSvr</a></td>
                        </tr>
						<tr>
                            <td>Schneider Electric</td>
                            <td>Generic</td>
                            <td>Generic</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3AClearSCADA'>ClearSCADA</a></td>
                        </tr>
						<tr class="success">
                            <td>Delta Controls</td>
                            <td>Generic</td>
                            <td>Generic</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3ADELTA'>DELTA</a></td>
                        </tr>
						<tr>
                            <td>Siemens</td>
                            <td>Generic</td>
                            <td>Generic</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3ASIMATIC'>SIMATIC</a></td>
                        </tr>
						<tr class="success">
                            <td>Generic</td>
                            <td>Generic</td>
                            <td>Generic</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3AGoAhead-Webs'>GoAhead-Webs</a></td>
                        </tr>
						<tr>
                            <td>Generic</td>
                            <td>Generic</td>
                            <td>Generic</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3AHMI'>HMI</a></td>
                        </tr>
						<tr class="success">
                            <td>HMS</td>
                            <td>Generic</td>
                            <td>Generic</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3AHMS'>HMS</a></td>
                        </tr><tr>
                            <td>Beck IPC</td>
                            <td>Generic</td>
                            <td>IPC@CHIP</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3AIPC@CHIP'>IPC@CHIP</a></td>
                        </tr>
						<tr class="success">
                            <td>Generic</td>
                            <td>Generic</td>
                            <td>Generic</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3AModbus'>Modbus</a></td>
                        </tr>
						
						<tr>
                            <td>Rockwell Automation</td>
                            <td>Generic</td>
                            <td>Micrologix</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3AMicrologix'>Micrologix</a></td>
                        </tr>
						<tr class="success">
                            <td>Moxa</td>
                            <td>Generic</td>
                            <td>Generic</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3AMoxaHttp'>MoxaHttp</a></td>
                        </tr>
						<tr>
                            <td>Tridium</td>
                            <td>Generic</td>
                            <td>Generic</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3ANiagara Web Server '>Niagara Web Server </a></td>
                        </tr>
						<tr class="success">
                            <td>Novatech</td>
                            <td>Generic</td>
                            <td>Generic</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3ANovatech'>Novatech</a></td>
                        </tr>
						<tr>
                            <td>Generic</td>
                            <td>Generic</td>
                            <td>Generic</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3APowerlink'>Powerlink </a></td>
                        </tr>
						<tr class="success">
                            <td>Reliance</td>
                            <td>Generic</td>
                            <td>Generic</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3AReliance'>Reliance</a></td>
                        </tr>
						<tr>
                            <td>Rockwell Automation</td>
                            <td>Generic</td>
                            <td>Generic</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3ARockwell'>Rockwell</a></td>
                        </tr>
						<tr class="success">
                            <td>Siemens</td>
                            <td>Siemens	s7</td>
                            <td>Generic</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3AS7-200'>S7-200</a></td>
                        </tr>
						<tr>
                            <td>Siemens</td>
                            <td>Scalance S/W</td>
                            <td>Generic</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3AScalance'>Scalance</a></td>
                        </tr>
						<tr class="success">
                            <td>Schneider Electric</td>
                            <td>Generic</td>
                            <td>Generic</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3ASchneider'>Schneider</a></td>
                        </tr>
						<tr>
                            <td>SpiderControl</td>
                            <td>Generic</td>
                            <td>Generic</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3ASpiderControl'>SpiderControl</a></td>
                        </tr>
						<tr class="success">
                            <td>Wind River</td>
                            <td>Generic</td>
                            <td>Generic</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3AVxWorks'>VxWorks</a></td>
                        </tr>
						<tr>
                            <td>Schneider Electric</td>
                            <td>Modicon</td>
                            <td>Generic</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3ATELEMECANIQUE BMX'>TELEMECANIQUE BMX</a></td>
                        </tr>
						<tr class="success">
                            <td>Wago</td>
                            <td>Generic</td>
                            <td>Generic</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3AWago'>Wago</a></td>
                        </tr>
						<tr>
                            <td>Codesys</td>
                            <td>Generic</td>
                            <td>Generic</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3AWebvisu'>Webvisu</a></td>
                        </tr>
						<tr class="success">
                            <td>NRG Systems</td>
                            <td>WindCube/td>
                            <td>Generic</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3AWindWeb'>WindWeb</a></td>
                        </tr>
						<tr>
                            <td>Wind River</td>
                            <td>Generic</td>
                            <td>Generic</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3AWindRiver-WebServer'>WindRiver-WebServer</a></td>
                        </tr><tr class="success">
                            <td>Tridium</td>
                            <td>Generic</td>
                            <td>Generic</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3Aniagara_audit '>niagara_audit </a></td>
                        </tr>
						<tr>
                            <td>Schneider Electric</td>
                            <td>Generic</td>
                            <td>Generic</td>
                            <td><a href = '__MODULE__/Result/index.html?query=keyword%3APowerLogic '>PowerLogic </a></td>
                        </tr>
						
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>




    <footer class="footer">
		<div class="container-fluid">
			<p class="copyright" align="center">&copy;2015-2016谛听 网络空间工控设备搜索引擎 权利全部保留</p>
		</div>
	</footer>
</div>
</body>
</html>
