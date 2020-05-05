<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ICS全球分布报表</title>
        <link href="bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    </head>
    <body>
    	 <!--以下是内容部分-->
	    <div class="container" id="main" style="margin-top: 75px">
            <h3>全球工控协议暴露统计</h3>
            <div id="portcake" style="height:500px;border:0px solid #ccc;margin:60px auto;"></div>
            <br><br>
            
			<h3>全球国家、地区工控系统暴露统计Top15</h3>
            <div id="withstrip" style="height:500px;border:0px solid #ccc;margin:20px auto;"></div>
			<br><br>
           
			<h3>工控系统协议暴露雷达统计</h3>
			<div id="radarcake" style="width: 900px;height:600px;"></div>
        </div>
 	</body>
 	<script src="js/jquery-2.1.1.js"></script>
	<script type="text/javascript" src="js/echarts.min.js" ></script>
	<script type="text/javascript" src="js/echarts-gl.min.js" ></script>
	<script type="text/javascript" src="js/world.js"></script>
	<script type="text/javascript" src="js/china.js"></script>
	 <script type="text/javascript">


		//端口暴露饼状图
        var portChart = echarts.init(document.getElementById('portcake'));
        var option1 = {
            title : {
                text: '全球工控协议暴露统计',
                subtext: 'From ：  谛听 网络空间工控设备搜索引擎',
                x:'center'
            },
            tooltip : {
                trigger: 'item',
                formatter: "{a} <br/>{b} : {c} ({d}%)"
            },
            legend: {
			<!-- orient : 'horizontal', -->
                 orient : 'vertical',
                x : 'left',
                data:[                            
				     'fox','modbus','EtherNet/IP','S7','Redlion Crimson3','IEC 60870-5-104','OMRON FINS','BACnet','DNP3','PCWorx','ProConOs','melsec-q',
                ]      
            },
			color:['#C23531','#254554','#61A0A8','#C4CCD3','#91C7AE','#D48625','#CA8622','#BDA29A','#6E7074','#546570','#749F83','#E98F6F'],
            toolbox: {
                show : false,
                feature : {
                    mark : {show: true},
                    dataView : {show: true, readOnly: false},
                    magicType : {
                        show: true,
                        type: ['pie', 'funnel'],
                        option: {
                            funnel: {
                                x: '25%',
                                width: '50%',
                                funnelAlign: 'left',
                                max: 1548
                            }
                        }
                    },
                    restore : {show: true},
                    saveAsImage : {show: true}
                }
            },
            calculable : false,
            series : [
                {
                    name:'ICS server',
                    type:'pie',
                    radius : '55%',
                    center: ['50%', '60%'],
                    data:[                                 
					 {value: 14271,name:'fox'},{value: 6278,name:'modbus'},{value: 2203,name:'EtherNet/IP'},{value: 1051,name:'S7'},{value: 889,name:'Redlion Crimson3'},{value: 503,name:'IEC 60870-5-104'},{value: 456,name:'OMRON FINS'},{value: 371,name:'BACnet'},{value: 242,name:'DNP3'},{value: 147,name:'PCWorx'},{value: 143,name:'ProConOs'},{value: 45,name:'melsec-q'},		
                    ]
                }
            ]
        };
   		portChart.setOption(option1);
		
		//全球国家协议TOP15
		var stripChart = echarts.init(document.getElementById('withstrip'));

        var option2 = {
				
    		    tooltip : {
    		        trigger: 'axis',
    		        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
    		            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
    		        }
    		    },
    		    legend: {
    		        data: [
					'fox','modbus','EtherNet/IP','S7','Redlion Crimson3','IEC 60870-5-104','OMRON FINS','BACnet','DNP3','PCWorx','ProConOs','melsec-q',]
				 },
				 color:['#C23531','#254554','#61A0A8','#C4CCD3','#91C7AE','#D48625','#CA8622','#BDA29A','#6E7074','#546570','#749F83','#E98F6F'],      		   
    		    grid: {
    		        left: '3%',
    		        right: '4%',
    		        bottom: '3%',
    		        containLabel: true
    		    },
    		    xAxis:  {
    		        type: 'value'
    		    },
    		    yAxis: {
    		        type: 'category',
    		        data: [
 				 	   'United States','Canada','France','United Kingdom','Netherlands','Spain','China Taiwan','Australia','Sweden','Poland','Germany','Italy','Turkey','Denmark','Finland', 
					]
					
    		    },
    		    series: [
    		       
    		        {
    		            name: 'fox',
    		            type: 'bar',
    		            stack: '总量',
    		            label: {
    		                normal: {
    		                    show: true,
    		                    position: 'insideRight'
    		                }
    		            },
    		            data: [
						
						 10391,972,150,443,528,45,122,365,47,17,26,70,101,73,191,]
    		        },
					{
    		            name: 'modbus',
    		            type: 'bar',
    		            stack: '总量',
    		            label: {
    		                normal: {
    		                    show: true,
    		                    position: 'insideRight'
    		                }
    		            },
    		            data: [
							1575,216,426,227,66,358,352,84,391,211,198,111,155,116,88,						]
    		        },

					{
    		            name: 'EtherNet/IP',
    		            type: 'bar',
    		            stack: '总量',
    		            label: {
    		                normal: {
    		                    show: true,
    		                    position: 'insideRight'
    		                }
    		            },
    		            data: [
						
							1428,254,5,14,6,74,42,33,3,32,4,15,4,59,0,
						]
    		        },
					{
    		            name: 'S7',
    		            type: 'bar',
    		            stack: '总量',
    		            label: {
    		                normal: {
    		                    show: true,
    		                    position: 'insideRight'
    		                }
    		            },
    		            data: [
							
						  128,12,65,11,39,64,7,7,11,126,96,73,7,47,7,	
						]
    		        },
					{
    		            name: 'Redlion Crimson3',
    		            type: 'bar',
    		            stack: '总量',
    		            label: {
    		                normal: {
    		                    show: true,
    		                    position: 'insideRight'
    		                }
    		            },
    		            data: [
							
						 633,52,102,38,0,0,2,21,7,0,0,1,0,0,0,		
						]
    		        },
					 {
    		            name: 'IEC 60870-5-104',
    		            type: 'bar',
    		            stack: '总量',
    		            label: {
    		                normal: {
    		                    show: true,
    		                    position: 'insideRight'
    		                }
    		            },
    		            data: [
					
						94,20,2,4,0,21,1,1,1,4,6,6,50,5,1,	
						]
    		        },					
					{
    		            name: 'OMRON FINS',
    		            type: 'bar',
    		            stack: '总量',
    		            label: {
    		                normal: {
    		                    show: true,
    		                    position: 'insideRight'
    		                }
    		            },
    		            data: [
					
						44,68,58,10,44,76,23,14,3,5,1,42,0,7,0,	
						]
    		        },
					{
    		            name: 'BACnet',
    		            type: 'bar',
    		            stack: '总量',
    		            label: {
    		                normal: {
    		                    show: true,
    		                    position: 'insideRight'
    		                }
    		            },
    		            data: [
						
							327,7,0,6,0,0,3,1,0,0,0,0,0,0,0,	
						]
    		        },
					{
    		            name: 'DNP3',
    		            type: 'bar',
    		            stack: '总量',
    		            label: {
    		                normal: {
    		                    show: true,
    		                    position: 'insideRight'
    		                }
    		            },
    		            data: [
					
						188,1,2,3,0,1,1,0,0,1,0,0,4,2,0,		
						]
    		        },
					{
    		            name: 'PCWorx',
    		            type: 'bar',
    		            stack: '总量',
    		            label: {
    		                normal: {
    		                    show: true,
    		                    position: 'insideRight'
    		                }
    		            },
    		            data: [
					
						10,6,2,1,0,24,0,0,7,14,16,25,16,0,0,		
						]
    		        },
					{
    		            name: 'ProConOs',
    		            type: 'bar',
    		            stack: '总量',
    		            label: {
    		                normal: {
    		                    show: true,
    		                    position: 'insideRight'
    		                }
    		            },
    		            data: [
					
					117,5,3,0,0,1,2,0,0,0,2,2,0,1,0,	
						]
    		        },
					{
    		            name: 'melsec-q',
    		            type: 'bar',
    		            stack: '总量',
    		            label: {
    		                normal: {
    		                    show: true,
    		                    position: 'insideRight'
    		                }
    		            },
    		            data: [
						117,5,3,0,0,1,2,0,0,0,2,2,0,1,0,						 
						]
    		        }

					
    		         
    		    ]
    		};
        stripChart.setOption(option2);

		//radar雷达——国家与协议
		var radarChart = echarts.init(document.getElementById('radarcake'));

        var option3 =  {
    		    title: {
    		        text: ''
    		    },
    		    legend: {
    		        data: ['Canada','United States','United Kingdom']
    		    },
    		    radar: [
    		        {
    		            indicator: [                         //图中各项名字
    		                { text: 'modbus' },
    		                { text: 'fox' },
    		                { text: 'S7' },
    		                { text: 'Ethernet/ip' },
    		                { text: 'IEC' } 
    		            ],
    		            center: ['50%', '50%'],
    		            radius: 120,
    		            startAngle: 90,
    		            splitNumber: 4,
    		            shape: 'circle',
    		            name: {
    		                formatter:'service:{value}',
    		                textStyle: {
    		                    color:'#72ACD1'
    		                }
    		            },
    		            splitArea: {
    		                areaStyle: {
    		                    color: ['rgba(114, 172, 209, 0.2)',
    		                    'rgba(114, 172, 209, 0.4)', 'rgba(114, 172, 209, 0.6)',
    		                    'rgba(114, 172, 209, 0.8)', 'rgba(114, 172, 209, 1)'],
    		                    shadowColor: 'rgba(0, 0, 0, 0.3)',
    		                    shadowBlur: 10
    		                }
    		            },
    		            axisLine: {
    		                lineStyle: {
    		                    color: 'rgba(255, 255, 255, 0.5)'
    		                }
    		            },
    		            splitLine: {
    		                lineStyle: {
    		                    color: 'rgba(255, 255, 255, 0.5)'
    		                }
    		            }
    		        }
    		    ],
    		    series: [
    		        {
    		            name: '雷达图',
    		            type: 'radar',
    		            itemStyle: {
    		                emphasis: {
    		                    // color: 各异,
    		                    lineStyle: {
    		                        width: 4
    		                    }
    		                }
    		            },
    		            data: [
    		                {
    		                    value: [
								12,216,20,972,254,	
								],
    		                    name: 'Canada',
    		                    label: {
    		                        normal: {
    		                            show: true,
    		                            formatter:function(params) {
    		                                return params.value;
    		                            }
    		                        }
    		                    },
    		                    symbol: 'rect',
    		                    symbolSize: 5,
    		                    lineStyle: {
    		                        normal: {
    		                            type: 'dashed'
    		                        }
    		                    }
    		                },
    		                {
    		                    value: [128,1575,94,10391,1427,],
    		                    name: 'United States',
    		                    areaStyle: {
    		                        normal: {
    		                            color: 'rgba(255, 255, 255, 0.5)'
    		                        }
    		                    }
    		                },
							{
    		                    value: [11,227,4,443,14,],
    		                    name: 'United Kingdom',
    		                    areaStyle: {
    		                        normal: {
    		                            color: 'rgba(255, 255, 255, 0.5)'
    		                        }
    		                    }
    		                }
							
    		            ]
    		        }
    		    ]
    		}

       radarChart.setOption(option3);


    </script>
</html>