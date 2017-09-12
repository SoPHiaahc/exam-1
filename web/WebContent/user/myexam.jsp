<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
<meta charset="UTF-8">

<style type="text/css">
body{ 
background: #f5faff;
}
.demo_con{
width: 960px;
margin:40px auto 0;
}
.button{
width: 240px;
line-height: 38px;
text-align: center;
font-weight: bold;
color: #fff;
text-shadow:1px 1px 1px #333;
border-radius: 5px;
margin:0 20px 20px 0;
position: relative;
overflow: hidden;
}
.button:nth-child(6n){
margin-right: 0;
}
.button.gray{
color: #8c96a0;
text-shadow:1px 1px 1px #fff;
border:1px solid #dce1e6;
box-shadow: 0 1px 2px #fff inset,0 -1px 0 #a8abae inset;
background: -webkit-linear-gradient(top,#f2f3f7,#e4e8ec);
background: -moz-linear-gradient(top,#f2f3f7,#e4e8ec);
background: linear-gradient(top,#f2f3f7,#e4e8ec);
}
.button.black{
border:1px solid #333;
box-shadow: 0 1px 2px #8b8b8b inset,0 -1px 0 #3d3d3d inset,0 -2px 3px #8b8b8b inset;
background: -webkit-linear-gradient(top,#656565,#4c4c4c);
background: -moz-linear-gradient(top,#656565,#4a4a4a);
background: linear-gradient(top,#656565,#4a4a4a);
}
.button.red{
border:1px solid #b42323;
box-shadow: 0 1px 2px #e99494 inset,0 -1px 0 #954b4b inset,0 -2px 3px #e99494 inset;
background: -webkit-linear-gradient(top,#d53939,#b92929);
background: -moz-linear-gradient(top,#d53939,#b92929);
background: linear-gradient(top,#d53939,#b92929);
}

#navigation {
    width:150px;
    font-family:Arial;
    font-size:14px;
    text-align:right
}

#navigation ul {
    list-style-type:none;                /* 不显示项目符号 */
    margin:0px;
    padding:0px;
}

#navigation li a{
    display:block;
    height:1em;
    padding:5px 5px 5px 0.5em;
    text-decoration:none;
    border-left:12px solid #151571;        /* 左边的粗边 */
    border-right:1px solid #151571;        /* 右侧阴影 */
}

li{list-style:none}

	</style>
</head>

<body>
<div class="page">
	<header id="header">
		<hgrounp class="white blank">
		<h1>请选择你的选项：</h1>
		</hgrounp>
	</header>
	<section class="demo">
<div class="demo_con">
 
    
	<ul>
		<li><input type="button" class="button gray" name="btn" value="参加考试" onclick="javascript:location.href='select.jsp'">
		<li><input type="button" class="button gray" name="btn" value="查看考试成绩" onclick="javascript:location.href='chart.jsp'">
	    <li><input type="button" class="button gray" name="btn" value="查看错题" onclick="javascript:location.href='select.jsp'">
    </ul>
</div>	
	</section>
</div>
</body>
</html>
