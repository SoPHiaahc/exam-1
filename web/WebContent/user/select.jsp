<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="WelcomeStyle.css" />
</head>
<body>
  
  <div class="container">
	<section id="content">
		<form method="post" enctype="multipart/form-data" >
			<h1>Examination level</h1>
			<div class="button">
			    <select name="aaa" id="aaa">
                   <option value="">选择试卷难度</option>
                   <option value="survey1.jsp">1</option>
                   <option value="survey.jsp">2</option>
                   <option value="survey2.jsp">3</option>
                </select>
			</div>
			<div class="button">
			   
				<input type="button" name="" value="提交" id="tijiao"/>
			</div>
		</form><!-- form -->
		<div class="button">
			<a href="#">Welcome to the exam system</a>
		</div><!-- button -->
	</section><!-- content -->
</div><!-- container -->

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