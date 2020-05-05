<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <title>StatisticMap</title>
        <link href="bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="css/result.css" rel="stylesheet" type="text/css">
		<link href="css/nav.css" rel="stylesheet" type="text/css">
		<script src="js/jquery-2.1.1.js"></script>
		<script src="bootstrap-3.3.7/js/bootstrap.min.js"></script>
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
				}
				
				p{
					margin: 5px;
					font-weight: 300;
				}
		</style>
    </head>
    <body>
    	<div class="container-fluid">
    		<div class="row">
    			<div class="col-md-3">
    				<div class="row">
    					<p>服务</p>
    					<div id="service" style="width: 100%;height:400px;"></div>
    				</div>
    			</div>
    			<div class="col-md-6">
    				<div class="row">
    					<p>全球态势</p>
    					<div id="3D-earth" style="width: 100%;height:600px;"></div>
    				</div>
    			</div>
    			<div class="col-md-3">
    				<div class="row">
    					<p>端口</p>
    					<div id="port" style="width: 100%;height:400px;"></div>
    				</div>
    			</div>
    		</div>
    		<div class="row text-center">
    			<p style="font-family: '楷体';">谛听全球工控态势</p>
    		</div>
    	</div>
 	</body>
 	
	<script type="text/javascript" src="js/echarts.min.js" ></script>
	<script type="text/javascript" src="js/echarts-gl.min.js" ></script>
	<script type="text/javascript" src="js/world.js" ></script>
	<script src="js/jquery-2.1.1.js"></script>
 	<script type="text/javascript">
 	//初始化echarts
		var service = echarts.init(document.getElementById("service"));
		var port = echarts.init(document.getElementById("port"));
		var earth = echarts.init(document.getElementById("3D-earth"));

		//服务
		$.ajax({
			type:"post",
			url:"map/service",
			async:true,
			success:function(res){
				serviceOption = {
				    tooltip: {
				        trigger: 'item',
				        formatter: "{a} <br/>{b}: {c} ({d}%)",
				    },
				    legend: {
				        orient: 'horizontal',
				        x: 'left'
				    },
				    series: [
				        {
				            name: '谛听',
				            type: 'pie',
				            radius: '55%',
							center: ['50%', '50%'],
							data: res.data[0].item,
							roseType: 'radius',
				            label: {
				            	show: true,
				                color: 'rgba(0,0,0,0.3)'
				            },
				            labelLine: { //视觉引导线
				                lineStyle: {
				                    color: 'rgba(0, 0, 0, 0.3)'
				                },
				                smooth: 0.2,
				                length: 10,
				                length2: 20
				            },
				            itemStyle: {
				                color: '#c23531'
				            }
				        }
				    ]
				};
				service.setOption(serviceOption);
			}
		});
		
		//端口
		$.ajax({
			type:"post",
			url:"map/port",
			async:true,
			success:function(res){
				portOption = {
					dataset:{
						source:res.data[0].item
					},
				    tooltip : {
				        trigger: 'axis'
				    },
				    toolbox: {
				        show : true,
				        feature : {
				            dataView : {show: true, readOnly: false},
				            magicType : {show: true, type: ['line', 'bar']},
				            restore : {show: true},
				            saveAsImage : {show: true}
				        }
				    },
				    xAxis : [
				        {
				            type : 'category'
				        }
				    ],
				    yAxis : [
				        {
				            type : 'value'
				        }
				    ],
				    series : [
				        {
				            name:'谛听',
				            type:'bar',
				            barWidth:20,
				            markPoint : {
				                data : [
				                    {type : 'max', name: '最大值'},
				                    {type : 'min', name: '最小值'}
				                ]
				            }
				        }
				    ]
				};
				port.setOption(portOption);
			}
		});
		
		
		/********************************************************************************
		 *     					3D地球数据可视化，展示全球工控态势
		 * ******************************************************************************/
		// 使用 echarts 绘制世界地图的实例作为纹理
		var canvas = document.createElement('canvas');
		var mapChart = echarts.init(canvas, null, {
		    width: 4096, height: 2048
		});
		mapChart.setOption({
		    series : [
		        {
		            type: 'map',
		            map: 'world',
		            // 绘制完整尺寸的 echarts 实例
		            top: 0, left: 0,
		            right: 0, bottom: 0,
		            //二维数组，定义定位的左上角以及右下角分别所对应的经纬度
		            boundingCoords: [[-180, 90], [180, -90]],
		            itemStyle: {
	                    show: true,
	                    areaColor:"rgb(5,101,123)",
	                    borderColor:"#03001a",
	                    borderWidth:1
	                },
	                showLegendSymbol:false,
	                label: {
	                    show: true,
	                    textStyle:{
	                        color:'#fff',
	                        fontSize:12,
	                        fontFamily:'Consolas'
	                    }
	                },
	                emphasis:{
	                	label: {
		                    show: true,
	                        textStyle:{
	                            color:'#000',
	                            fontSize:28,
	                            fontWeight:'bold',
	                            fontFamily:'Consolas',
	                            backgroundColor: 'rgba(0,23,11,0)'
	                        }
		                },
		                itemStyle: {
		                    show: true,
	                        areaColor:"#eee",
	                        borderColor:"#03001a",
	                        borderWidth:1
		                }
	                }
		        }
		    ]
		});
		
		//获取全球工控态势数据
		$.ajax({
			type:"get",
			url:"data/data1.json",
			async:true,
			success:function(data){
					var max = -Infinity;
					var min = Infinity;
					//map函数：遍历数组并重组
					data = data.map(function(dataItem) {
						max = Math.max(dataItem[2], max);
						min = Math.min(dataItem[2], min);
						//返回对象
						return{
							name: '('+dataItem[1]+','+dataItem[0]+')',
							value: [dataItem[1], dataItem[0],dataItem[2]]
						}
					});
					//console.log(data);
					
					var Opt = {
						backgroundColor: "#000",
					    globe:{
						    baseTexture: 'img/water.jpg', //贴图
						    displacementScale: 0.04,
						    environment:'#fff',
						    shading:"color",
					        viewControl:{
					        	 //autoRotate: false
					        },
					        layers:[{ //云层
					        	show: true,
					        	type: 'blend', //混合
					        	name: 'cloud',
			            		texture: mapChart
					        }]
					    },
					    series: [{
				            type: 'bar3D',
				            coordinateSystem: 'globe',
				            data: data,
				            barSize: 0.6,
				            minHeight: 0.2,
				            silent: false, //图形是否不响应和触发鼠标事件，默认为 false，即响应和触发鼠标事件
				            itemStyle: {
				                color: 'orange'
				            },
				            emphasis:{
			                	label: {
				                    show: true,
				                    formatter: function(f){ //自定义标签显示格式
				                    	return f.name+":"+f.value[2];
				                    },
			                        textStyle:{
			                            color:'#000',
			                            fontSize:28,
			                            fontWeight:'bold',
			                            fontFamily:'Consolas',
			                            backgroundColor: 'rgba(0,23,11,0)'
			                        }
				                },
				                itemStyle: {
				                    show: true,
			                        color:"red"
				                }
			                }
				        }]
					};
					earth.setOption(Opt);	
			}
		});
 		
 	</script>
</html>