<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码</title>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style type="text/css">
#main{
	text-align: center;
	width:700px;
    height: 400px;
    margin:0 auto;
    padding: 0;
    border: 0;
    font-size: 18px;
    margin-top:100px;
}
button {
	font-size: 30px;
}
.form-control{
	margin: 5px;
	padding: 5px;
	margin-bottom: 15px;

}
</style>

<script type="text/javascript">
window.onload=function() {
<%
	String type=(String)session.getAttribute("loginType");
	String ID="";
	String Password="";
	
	if(type==null||type.equals(""));
	else if(type.equals("teacher")){
		ID=(String)session.getAttribute("tID");
		Password=(String)session.getAttribute("PassWord");
	}else{
		ID=(String)session.getAttribute("aID");
		Password=(String)session.getAttribute("PassWord");
	}
	
	String Result=(String)request.getParameter("Result");
%>
	var result = "<%=Result%>";
	if(result==null);
	else if(result=="OK")
		alert("修改成功！");
	else if(result=="NO")
		alert("修改失败！");
}

function  checkPwd(){
	var old = $("#oldPassword").val();
	var rPwd = "<%=Password%>";
	var newPwd =  $("#newPassword").val();
	var checkPwd =  $("#checkPassword").val();
	
	if(old==""||newPwd==""||checkPwd==""){
		alert("不能为空");
		return false;
	}
	
	if(rPwd==old&&newPwd==checkPwd&&old!=null){
		return true;
	}else if(newPwd!=checkPwd){
		alert("两次输入密码不同");
		return false;
	}else{
		alert("旧密码输入错误");
		return false;
	}
}
</script>
</head>
<body>
<div id="main">
	<form  action="${pageContext.request.contextPath}/UpdatePassword?type=<%=type%>&id=<%=ID%>"   method="post" onsubmit="return checkPwd()" >
	<div>
	<div class="form-group">
		<label for="oldPassword" class="col-sm-2 control-label"  >旧密码</label>
		<div class="col-sm-9">
			<input name="oldPassword" id="oldPassword" class="form-control well" type="password" value=""></input>
		</div>
	</div>
	<div class="form-group">
		<label for="newPassword" class="col-sm-2 control-label" >新密码</label>
		<div class="col-sm-9">
			<input name="newPassword" id="newPassword" class="form-control well" type="password" value=""></input>
		</div>
	</div>
	<div class="form-group">
		<label for="checkPassword" class="col-sm-2 control-label">确认密码</label>
		<div class="col-sm-9">
			<input name="checkPassword" id="checkPassword" class="form-control well" type="password" value=""></input>
		</div>
	</div>
	</div>
	<div>
		<button type="submit" class="btn" >确定修改</button>
	</div>
	</form>      
</div>
</body>
</html>