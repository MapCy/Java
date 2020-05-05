<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ICS中国各省分布报表</title>
        <link href="bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    </head>
    <body>
    	 <!--以下是内容部分-->
	    <div class="container" id="main" style="margin-top: 75px">
	    	<!--中国端口暴露分布图-->
	        <h3>中国工控系统暴露分布图</h3>
	        <div id="chinapiece" style="height:600px; margin:20px auto;width:auto;"></div>
        </div>
 	</body>
 	<script src="js/jquery-2.1.1.js"></script>
	<script type="text/javascript" src="js/echarts.min.js" ></script>
	<script type="text/javascript" src="js/echarts-gl.min.js" ></script>
	<script type="text/javascript" src="js/world.js"></script>
	<script type="text/javascript" src="js/china.js"></script>
	 <script type="text/javascript">
		
		 var myChart0 = echarts.init(document.getElementById('chinapiece'));
                    option = {
                        title : {
                            text: '中国工控系统暴露分布图',
							subtext: 'From ： 谛听 网络空间工控设备搜索引擎',
                            sublink : 'http://www.ditecting.com',
                            x:'center',
                            y:'top'
                        },
                        tooltip : {
                            trigger: 'item',
                            formatter : function (params) {
                                       
										 var value = (params.value + '').split('.');
										value = value[0].replace(/(\d{1,3})(?=(?:\d{3})+(?!\d))/g, '$1,');
										return params.seriesName + '<br/>' + params.name + ' : ' + value;
                                    }
                        },
                        toolbox: {
                            show : false,
                            orient : 'vertical',
                            x: 'right',
                            y: 'center',
                            feature : {
                                mark : {show: false},
                                dataView : {show: false, readOnly: false},
                                restore : {show: false},
                                saveAsImage : {show: false}
                            }
                        },
                        dataRange: {
                            min: 0,
                            max: 25,
                            text:['High','Low'],
                            realtime: false,
                            calculable : true,
                            color: ['orangered','yellow','lightskyblue']
                        },
                        series : [
                            {
                                name: 'ICS Server(2015)',
                                type: 'map',
                                mapType: 'china',
                                roam: false,
                                mapLocation: {
                                    y : 60
                                },
                                itemStyle:{
                                    emphasis:{label:{show:true}}
                                },
                                data:[
//                                        <foreach name="province_piece" item="vo">
//                                            {name :'{$vo['province']}',value : {$vo['value']}},
//                                        </foreach>
//                                    {name :'Beijing',value : 11},
                                            {name :'北京',value : 23},
                                            {name :'重庆',value : 3},
                                            {name :'福建',value : 4},
                                            {name :'甘肃',value : 1},
                                            {name :'广东',value : 6},
                                            {name :'广西',value : 1},
                                            {name :'海南',value : 1},
                                            {name :'黑龙江',value : 8},
                                            {name :'河南',value : 3},
                                            {name :'湖北',value : 3},
                                            {name :'湖南',value : 4},
                                            {name :'内蒙古',value : 1},
                                            {name :'江苏',value : 17},
                                            {name :'江西',value : 2},
                                            {name :'吉林',value : 2},
                                            {name :'辽宁',value : 5},
                                            {name :'宁夏',value : 1},
                                            {name :'青海',value : 1},
                                            {name :'山东',value : 4},
                                            {name :'上海',value : 12},
                                            {name :'四川',value : 2},
                                            {name :'天津',value : 1},
                                            {name :'新疆',value : 4},
                                            {name :'浙江',value : 13},
											{name:'台湾',value:535} 


//                                    {name : '北京', value : 28397.812},
//                                    {name : '内蒙古', value : 19549.124},
//                                    {name : '天津', value : 3150.143},
//                                    {name : '辽宁', value : 8441.537},
//                                    {name : '新疆', value : 403742.224},
//                                    {name : '四川', value : 603742.224}
                                ]
                            }
                        ]
                    };
                    myChart0.setOption(option);

    </script>
</html>