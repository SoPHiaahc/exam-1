<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- 引入 ECharts 文件 -->
    <script src="echarts.min.js"></script>
    <script src="jquery-3.2.1.js"></script>
</head>
<body>
<!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
<div id="main" style="width: 600px;height:400px;"></div>
<script type="text/javascript">
    var data = new Array();
    for (var i = 0; i < 3; i++)
        data[i] = new Array();
    // 利用ajax传递json给echarts
//    function loadData(option) {
//        $.ajax({
//            type : 'post',  //传输类型
//            async : false,  //同步执行
//            url : 'bar.do', //web.xml中注册的Servlet的url-pattern
//            data : {},
//            dataType : 'json', //返回数据形式为json
//            success : function(result) {
//                var index = 0;
//                if (result) {
//                    // 初始化title
//                    option.title.text = result[0].username+"的成绩展示";
//                    //初始化xAxis[0]的data
//                    option.xAxis[0].data = [];
//                    for (var i=0; i<result.length; i++) {
//////                         	option.xAxis[0].data.push('test1');
//////                         	option.xAxis[0].data.push('test2');
//////                         	option.xAxis[0].data.push('test3');
////                        option.xAxis[0].data = [];
////                        switch (result[i].test) {
////                            case "test1":
////                                data[0].push(result[i].testDate);
////                                break;
////                            case "test2":
//////                     				index = 2;
////                                data[1].push(result[i].testDate);
////                                break;
////                            case "test3":
//////                     				index = 3;
////                                data[2].push(result[i].testDate);
////                                break;
////                        }
////                        option.xAxis[index].data = data[0];
//                    }
//                    //初始化series[0]的data
//                    for (var i = 0; i < 3; i++)
//                        option.series[i].data = [];
//                    for (var i=0; i<result.length; i++) {
//                        switch (result[i].test) {
//                            case "test1":
//                                index = 0;
//                                break;
//                            case "test2":
//                                index = 1;
//                                break;
//                            case "test3":
//                                index = 2;
//                                break;
//                        }
//                        option.series[index].data.push(result[i].grade);
//                    }
//                }
//            },
//            error : function(errorMsg) {
////                alert("加载数据失败");
//            }
//        });
////    }
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));

    // 指定图表的配置项和数据
    var option = {
        title: {
            text: '成绩展示'
        },
        tooltip: {},
        legend: {
            data:['test1', 'test2', 'test3'],
            selectedMode: 'single'
//                 selected: {
//                 	'test2': false,
//                 	'test3': false
//                 }
        },
        xAxis: [ {
            name: '时间',
            type: 'category',
            data: ['1','2','3']
//            axisLabel: {
//                rotate: 40,
//                interval: 0
//            }
        } ],
        yAxis: [ {
            name: '成绩',
            type: 'value'

        } ],
        series: [ {
            name: 'test1',
            type: 'bar',
            barMaxWidth: 50,
            data: [90,80,30]
        }, {
            name: 'test2',
            type: 'bar',
            barMaxWidth: 50,
            data: [80,70,89]

        }, {
            name: 'test3',
            type: 'bar',
            barMaxWidth: 50,
            data: [70,90,80]

        } ]
    };
    // 加载数据到option
    //loadData(option);
    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
//    myChart.on('legendselectchanged', function(params) {
//        var name = params.name;
//        if (name == "test1") {
//            option.xAxis[0].data = data[0];
//        }
//        if (name == "test2") {
//            option.xAxis[0].data = data[1];
//        }
//        if (name == "test3") {
//            option.xAxis[0].data = data[2];
//        }
//        myChart.setOption(option);
//    });
</script>
</body>
</html>