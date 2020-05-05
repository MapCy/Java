<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ICS常规服务开放报表</title>
        <link href="bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    </head>
    <body>
    	 <!--以下是内容部分-->
	    <div class="container" id="main" style="margin-top: 75px">
	    	<h3>暴露的工控系统上常规服务比例图</h3>
    		<div id="normal" style="height:700px; width:auto;margin:30px auto;"></div>
        </div>
 	</body>
 	<script src="js/jquery-2.1.1.js"></script>
	<script type="text/javascript" src="js/echarts.min.js" ></script>
	<script type="text/javascript" src="js/echarts-gl.min.js" ></script>
	<script type="text/javascript" src="js/world.js"></script>
	<script type="text/javascript" src="js/china.js"></script>
	 <script type="text/javascript">
		
		var myChart = echarts.init(document.getElementById('normal'));
            option = {
				title : {
                    text: '暴露的工控系统上常规服务比例图',
                    subtext: 'From ： 谛听，网络空间安全搜索引擎',
                    sublink : 'http://www.ditecting.com',
                    x:'center',
                    y:'top'
                },
                tooltip : {
                    trigger: 'item',
                    formatter: "{a} <br/>{b} : {c} ({d}%)"
                },
                color:['#D58465','#92C8B0','#60A1A9','#C33430','#2E4454','#749F83','#CB8722' ,'#BDA39B','#6E7074','#546470','#C5CDD3'],
                legend: {
                    orient : 'vertical',
                    x : 'left',
                    data:[
                      'ftp','ssh','telnet','Unknown','http','mongodb','websphere-javaw','msrdp','mysql','rlogin','mssql','vnc','finger','pop3','rpc','smb',
                      'db2','rsync','postgres']
                },
                toolbox: {
                    show : false,
                    feature : {
                        mark : {show: true},
                        dataView : {show: true, readOnly: false},
                        magicType : {
                            show: true,
                            type: ['pie', 'funnel']
                        },
                        restore : {show: true},
                        saveAsImage : {show: true}
                    }
                },
                calculable : false,
                series : [
                    {
                        name:'ICS port',
                        type:'pie',
                        selectedMode: 'single',
                        radius : [0, 70],
						center:['60%', '55%'],
                        // for funnel
                        x: '20%',
                        width: '40%',
                        funnelAlign: 'right',
                        max: 1548,

                        itemStyle : {
                            normal : {
                                label : {
                                    position : 'inner'
                                },
                                labelLine : {
                                    show : false
                                }
                            }
                        },

                        data:[
                         {value:18492, name:'102'},{value:0, name:'502'},{value:0, name:'1911'},{value:84, name:'1962'},{value:104, name:'2404'},{value:9644, name:'20000'},{value:11866, name:'44818'},{value:3206, name:'47808'},{value:4333, name:'9600'},{value:2772, name:'5007'},{value:12706, name:'20547'},     
                        ]

                    },
                    {
                        name:'normal service',
                        type:'pie',
                        radius : [100, 140],

                        // for funnel
                        x: '60%',
                        width: '35%',
                        funnelAlign: 'left',
                        max: 1048,
						center:['60%', '55%'],
                        data:[
                           	{value:118, name:'ftp'},{value:7739, name:'http'},{value:8, name:'mongodb'},{value:386, name:'msrdp'},{value:25, name:'mysql'},{value:5, name:'pop3'},{value:1, name:'postgres'},{value:3, name:'rlogin'},{value:1, name:'rsync'},{value:2, name:'smb'},{value:224, name:'ssh'},{value:15, name:'telnet'},{value:9940, name:'Unknown'},{value:25, name:'vnc'},{value:5, name:'ftp'},{value:38, name:'http'},{value:9, name:'msrdp'},{value:2, name:'ssh'},{value:30, name:'Unknown'},{value:1, name:'ftp'},{value:55, name:'http'},{value:11, name:'msrdp'},{value:37, name:'Unknown'},{value:84, name:'ftp'},{value:1124, name:'http'},{value:2, name:'mongodb'},{value:27, name:'msrdp'},{value:36, name:'ssh'},{value:8371, name:'Unknown'},{value:87, name:'ftp'},{value:8422, name:'http'},{value:6, name:'mongodb'},{value:233, name:'msrdp'},{value:16, name:'mysql'},{value:3, name:'pop3'},{value:1, name:'postgres'},{value:2, name:'smb'},{value:138, name:'ssh'},{value:6, name:'telnet'},{value:2938, name:'Unknown'},{value:12, name:'vnc'},{value:2, name:'websphere-javaw'},{value:47, name:'ftp'},{value:1896, name:'http'},{value:3, name:'mongodb'},{value:108, name:'msrdp'},{value:9, name:'mysql'},{value:1, name:'pop3'},{value:1, name:'rsync'},{value:2, name:'smb'},{value:54, name:'ssh'},{value:5, name:'telnet'},{value:1060, name:'Unknown'},{value:19, name:'vnc'},{value:1, name:'websphere-javaw'},{value:36, name:'ftp'},{value:2755, name:'http'},{value:10, name:'mongodb'},{value:146, name:'msrdp'},{value:48, name:'mysql'},{value:1, name:'rsync'},{value:67, name:'ssh'},{value:1, name:'telnet'},{value:1252, name:'Unknown'},{value:17, name:'vnc'},{value:28, name:'ftp'},{value:2141, name:'http'},{value:1, name:'mongodb'},{value:60, name:'msrdp'},{value:1, name:'mysql'},{value:1, name:'rlogin'},{value:21, name:'ssh'},{value:1, name:'telnet'},{value:514, name:'Unknown'},{value:4, name:'vnc'},{value:101, name:'ftp'},{value:9481, name:'http'},{value:10, name:'mongodb'},{value:259, name:'msrdp'},{value:29, name:'mysql'},{value:1, name:'pop3'},{value:1, name:'rpc'},{value:1, name:'rsync'},{value:2, name:'smb'},{value:157, name:'ssh'},{value:6, name:'telnet'},{value:2638, name:'Unknown'},{value:17, name:'vnc'},{value:3, name:'websphere-javaw'},    
                        ]
                    }
                ]
            };
			
            myChart.setOption(option);

    </script>
</html>