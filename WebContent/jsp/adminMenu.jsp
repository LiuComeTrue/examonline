<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员菜单</title>

<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style type="text/css">
body{
	margin: 0;
	border: 0;
	padding: 0;
	background-color: #B0E2FF;
}
a{
	color: #337ab7;
    text-decoration: none;
}
#head{
	width: 0 auto;
	height: 200px;
	background-color: #B0E2FF;
}
#title{
	height:100px;
	width:800px;
	margin:0 auto;
	font-size:80px;
}
#hello{
	float: left;
	margin-top: 30px;
	margin-left: 120px;
	font-size: 20px;
}
#exit{
	float:right;
	margin-top:60px;
	margin-right:300px;
	font-size: 20px;
}
#body{
	width: 0 auto;
	height: 52px;
	background-color: #B0B0B0;
	font-size:25px;
	padding-top: 12px;
	padding-left: 100px;
	border-radius: 10px;
}
a:link { color:black;text-decoration:none; }
a:visited { color:black;text-decoration:none; }
a:hover { color:#fff;text-decoration:none;background:#545652; }
a:active { color:#fff;text-decoration:none;background:#545652; }

</style>
<script type="text/javascript">
window.onload=function(){
	
	//登录管理员获取
	<%String name=(String)session.getAttribute("aName");%>
	
	var a="<%=name%>";
	
	if(a == null || a == ""){
		alert("您还未登录！");
		//window.parent.frames.location.href="../jsp/Login.jsp";
		//document.getElementById("Login_state").innerHTML="<a href='../jsp/Login.jsp'>登录</a>&nbsp;&nbsp;";
	}
	
	<% String ID=(String)session.getAttribute("aID");%>
</script>
</head>
<body>
<div id="head">
	<div id="title">
	<label>JAVA在线考试系统</label>
	</div>
	<div id="hello">
	<label>当前管理员:<%=name%></label><br/>
	</div>
	<div id="exit">
		<a href="${pageContext.request.contextPath}/jsp/updatePwd.jsp" target="main"  >修改密码</a>&nbsp;&nbsp;
		<a href="${pageContext.request.contextPath}/jsp/login.jsp" target="frame_main">退出系统</a>
	</div>
</div>
<div id="body">
	|<a href="${pageContext.request.contextPath}/jsp/personManage.jsp" target="main" >用户管理</a>|&nbsp;
	|<a href="${pageContext.request.contextPath}/jsp/addUser.jsp" target="main" >添加用户</a>|&nbsp;
</div>
</body>
</html>
