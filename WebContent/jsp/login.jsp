<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Java在线考试系统</title>

<style type="text/css">
body{ margin:0; border:0; padding:0;}
#head{
	width: 0 auto;
	height: 200px;
	background-color: #B0E2FF;
}
#body{
	width: 0 auto;
	height: 500px;
	background-color: #EBEBEB;
}
#main{
	text-align: center;
    background-color: #fff;
    border-radius: 20px;
    width: 300px;
    height: 350px;
    margin: auto;
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
}
#login_id,#login_password,#login_submit{
	width: 250px;
    height: 70px;
    margin: auto;
    border: solid 0;
	text-align: center;
}
#login_submit{
	margin-top: 30px;
}
#button_submit{
	margin-top: 20px;
	width: 150px;
	padding: 5px;
	font-size: 18px;
	vertical-align:middle;
	-moz-border-radius: 3px;
	-webkit-border-radius:3px;
	border-radius: 3px; 
	border: 1px solid #c9c9c9 ;
	
}
.InputText{
	width: 200px; 
	padding: 5px; 
	height: 16px; 
	font-size: 14px;
	vertical-align:middle; 
	-moz-border-radius: 3px; 
	-webkit-border-radius: 3px; 
	border-radius: 3px; 
	border: 1px solid #c9c9c9;
}
h2{
	margin:0;
	padding:0;
	padding-top:5px;
	padding-bottom:5px;
}
</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="./layer-v3.1.1/layer/layer.js"></script>
<script type="text/javascript">
window.onload = function() {
	<%String flag = (String)request.getAttribute("flag");%>
	var flag = "<%=flag%>";
	if (flag != "null" && flag != "") {
		alert("账号密码出错!");
	}
}
</script>
</head>
<body>
<div id="head"></div>
<div id="body">
	<div id="main">
		<h1 style="color:#B0E2FF;">LOGIN</h1>
		<div id="login_">
			<form action="${pageContext.request.contextPath}/LoginServlet" method="post">
			<div id="login_id">
				<h2>name</h2>
				<input  class="InputText" name="userid" type="text" />
			</div>
			<div id="login_password">
				<h2>password</h2>
				<input  class="InputText" name="password" type="password" />
			</div>
			<div id="login_submit">
				<label><input name="Type" type="radio" value="admin" />管理员 </label> 
				<label><input name="Type" type="radio" value="teacher" />教师 </label> 
				<label><input name="Type" type="radio" value="student" checked="checked"/>学生 </label>
				<br/>
				<input id="button_submit" type="submit" value="登录"/>
			</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>