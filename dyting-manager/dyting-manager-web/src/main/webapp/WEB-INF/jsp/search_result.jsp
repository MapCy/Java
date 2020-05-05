<%@page import="java.util.List"%>
<%@page import="com.dyting.pojo.Portsinfo"%>
<%@page import="com.github.pagehelper.PageInfo"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	//获取搜索结果
	request.setCharacterEncoding("utf-8");

	String key = (String)request.getAttribute("key");
	String val = (String)request.getAttribute("val");

	PageInfo<Portsinfo> pageInfo = (PageInfo)request.getAttribute("page");
%>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1">
		<title>Search Result</title>
		<link href="bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="css/result.css" rel="stylesheet" type="text/css">
		<link href="css/nav.css" rel="stylesheet" type="text/css">
		<script src="js/jquery-2.1.1.js"></script>
		<script src="bootstrap-3.3.7/js/bootstrap.min.js"></script>
		<script type="text/javascript">
			$(function(){
				var flag = false;
				$('#lookStatc').click(function(){
					if(flag == true){
						return;
					}
					flag = true;
					$.ajax({
				        type: "GET",
				        url: "statistics?key=${key}&val=${val}",
					    contentType:"application/json; charset=utf-8",
						xhrFields:{withCredentials:true},
				       	success: function(res) {
				       		
				       		var stat = res.data;
				       		//console.log(stat);
				       		//console.log(Object.keys(stat).length);
							//遍历取值
							var i,j;
							for(i = 0; i < Object.keys(stat).length; i++){
								
								var column = document.createElement("div");
								column.className = "panel panel-success";
								column.innerHTML = '<div class="panel-heading">'+
											'<h4 class="panel-title">'+
												'<a style="cursor:pointer;" data-toggle="collapse" data-parent="#accordion" data-target=\"#'+stat[i].column+'\">'+stat[i].column+'</a><span id class="badge" style="float:right"></span>'+
											'</h4>'+
										'</div>'+
										'<div id=\"'+stat[i].column+'\" class="panel-collapse collapse">'+
										'</div>';
								var stat_show = document.getElementById("accordion");
								stat_show.appendChild(column);
								
								//创建项节点
								var item = stat[i].item;
								for(j = 0; j < Object.keys(item).length; j++){
									var ul_elem = document.createElement("ul");
									ul_elem.className = "list-group";
									ul_elem.innerHTML='<volist name="eachcount">'+
															'<li class="list-group-item" style="font-family:consolas;"><span class="badge">'+item[j].value+'</span>'+item[j].name+'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>'+
													  '</volist>';
									var panel = document.getElementById(stat[i].column);
									//console.log('\"'+stat[i].column+'\"');
									panel.appendChild(ul_elem);
								}
								
							}
								
				        }
			    	}); 
				});
			})
		</script>
		<style>
				@media screen and (max-width: 768px) {
				.right {
					display: none;
				}
			}
			
			@media screen and (max-width: 750px) {
				.num {
					display: none;
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
							<a id="report" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" title="工控报告">工控报告<span class="caret"></span></a>
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
					<a  href="?l=zh-cn"  ><font color="white">简体中文</font></a> <font  color="white">|</font>  <a href="?l=en-us"><font color="white">English</font></a>
				</span>
				</div>
			</div>
		</nav>
		<!-- 以上是导航条 -->

		<div class="container">
			<div class="top">
				<ul class="nav nav-tabs">
					<li role="presentation" class="active">
						<a href="#"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>搜索结果</a>
					</li>
					<li role="presentation">
						<a href="<%=basePath%>flatMap"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>地图展示</a>
					</li>
				</ul>
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-9 ">
					<div class="result">
						<p class="use">搜索
							<a href="#" style="color:green;font-family:consolas;">"${key}:${val}"</a>结果，共找到
							<a href="#" style="color:green;font-family:consolas;">${page.total}</a>条结果</p>
					</div>
					<div class="left">
						<volist name="list" id="vo" offset="1" length="1">
						<!--<foreach name="list" item="vo">-->
						<%
						for(Portsinfo p : pageInfo.getList()){
							%>
							<div class="panel panel-success">
								<div class="panel-heading" style="font-family:consolas;">
									<h3 class="panel-title"><p class="show"><strong><%=p.getIpsinfo().getIp() %></strong></p>
									<span class="label label-default"><%=p.getIpsinfo().getUpdateT() %></span>
									<span class="label label-danger"><%=p.getPort() %></span>
								</h3>
								</div>
								<div class="panel-body" style="word-break: break-all">
									<p class="show"><span class="label label-success">Location</span><span style="font-family:consolas;"> <%=p.getIpBaseInfo().getCountry() %> <%=p.getIpBaseInfo().getCity() %></span></p>
									<p class="show"><span class="label label-default">Service</span><span style="font-family:consolas;"> <%=p.getService() %></span></p>

									<p class="show"><span class="label label-success">Banner</span><pre><xmp style="font-family:consolas;"><%=p.getBanner() %></xmp></pre></p>

								</div>
							</div>
						<%}%>
						<!--</foreach>-->
						</volist>
					</div>
					<!--循环显示搜索结果,每页放10个结果 -->
					<!-- 分页条信息 -->
					<div class="bottom">
						<nav aria-label="Page navigation">
							<!-- 分页部分，后端用PageHelper分页插件实现 -->
							<ul class="pagination">
								<li>
									<a href="${pageContext.request.contextPath }/search?key=${key}&val=${val}&pageNo=1">首页</a>
								</li>
								<c:if test="${page.hasPreviousPage }">
									<li>
										<a href="${pageContext.request.contextPath }/search?key=${key}&val=${val}&pageNo=${page.pageNum-1}" aria-label="Previous"> <span aria-hidden="true">«</span>
										</a>
									</li>
								</c:if>

								<c:forEach items="${page.navigatepageNums }" var="page_Num">
									<c:if test="${page_Num == page.pageNum }">
										<li class="active">
											<a href="#">${page_Num }</a>
										</li>
									</c:if>
									<c:if test="${page_Num != page.pageNum }">
										<li>
											<a href="${pageContext.request.contextPath }/search?key=${key}&val=${val}&pageNo=${page_Num }">${page_Num }</a>
										</li>
									</c:if>

								</c:forEach>
								<c:if test="${page.hasNextPage }">
									<li>
										<a href="${pageContext.request.contextPath }/search?key=${key}&val=${val}&pageNo=${page.pageNum+1 }" aria-label="Next"> <span aria-hidden="true">»</span>
										</a>
									</li>
								</c:if>
								<li>
									<a href="${pageContext.request.contextPath }/search?key=${key}&val=${val}&pageNo=${page.pages}">末页</a>
								</li>
							</ul>
						</nav>

					</div>
				</div> 

				<div class="col-md-3">
					<a id="lookStatc" class="right" align="right" data-toggle="collapse" data-target="#show" 
						style="color:green;font-size:18px;margin-top:10px;cursor: pointer;">
						查询统计</a>
					<div id="show" class="right collapse">
						<div class="panel-group" id="accordion">
							<!-- 显示统计结果，动态生成 -->
						</div>
					</div>
				</div>

			</div>

		</div>

		<!-- 以上是主体 -->

		<footer class="footer">
			<div class="container-fluid">
				<p class="copyright" align="center">&copy;2015-2016谛听 网络空间工控设备搜索引擎 权利全部保留</p>
			</div>
		</footer>

	</body>

</html>