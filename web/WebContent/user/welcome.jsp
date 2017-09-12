<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form method="post" enctype="multipart/form-data" >
<select name="aaa" id="aaa">
<option value="">选择试卷难度</option>
<option value="survey1.jsp">1</option>
<option value="survey.jsp">2</option>
<option value="survey3.jsp">3</option>
</select>

<input type="button" name="" value="提交" id="tijiao"/>
</form>
<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
<script type="text/javascript">
$(function(){
$("#tijiao").click(function(){
var host = $("#aaa").val();

if(host == ''){
alert('请选择！');
return;
}
window.location.href = host ;
});
});
</script>
	
</body>
</html>