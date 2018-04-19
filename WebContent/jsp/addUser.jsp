<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加用户</title>

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
    margin-top:50px;
}
.btn{
	width: 160px;
	height: 70px;
	border-radius: 10px;
	font-size: 20px;
}
.form-control{
	padding: 5px;
	margin-bottom: 10px;
}
.control-label{

}
#textBody{
	margin-top: 40px;
	margin-right:30px;
}
#sbmBtn{
	margin-top:10px;
	font-size: 25px;
	width: 140px;
	height: 50px;
}
</style>

<script type="text/javascript">
window.onload=function() {
	<%String Result=(String)request.getParameter("Result");%>
	var result = "<%=Result%>";
	if(result==null);
	else if(result=="OK")
		alert("添加成功！");
	else if(result=="NO")
		alert("添加失败！");
}
function show(a) {
	$("#textBody").css('display','block');
	if(a=='teacher'){
		$("#idChange").text("教工号");
		$("#titleChange").text("职称");
		$("#type").val("teacher");
	}else{
		$("#idChange").text("学号");
		$("#titleChange").text("系别");
		$("#type").val("student");
	}
}
function checkForm() {
	var id=$("#id").val();
	var name=$("#name").val();
	var IDcard=$("#IDcard").val();
	var title=$("#title").val();
	var phone=$("#phone").val();
	
	if(id==""){
		alert("ID不能为空");
		return false;
	}
	if(name==""){
		alert("姓名不能为空");
		return false;
	}
	if(IDcard==""){
		alert("身份证号不能为空");
		return false;
	}
	var gnl=confirm("是否确定要提交?");
	if (gnl==true){
		return true;
	}else{
		return false;
	}
}
</script>
</head>
<body>
<div id="main">
	<div >
		<button class="btn" type="button"  onclick="show('teacher')">添加教师用户</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<button class="btn" type="button"  onclick="show('student')">添加学生用户</button>
	</div>
	<div id="textBody" style="display:none;">
		<form  action="${pageContext.request.contextPath}/AddUser"   method="post" onsubmit="return checkForm()" >
		<input name="type" id="type" type="hidden" value="">
		<div>
		<div class="form-group">
			<label for="id" class="col-sm-2 control-label"  ><span id="idChange">学号</span></label>
			<div class="col-sm-9">
				<input name="id" id="id" class="form-control well" type="text" value=""></input>
			</div>
		</div>
		<div class="form-group">
			<label for="name" class="col-sm-2 control-label"  >姓名</label>
			<div class="col-sm-9">
				<input name="name" id="name" class="form-control well" type="text" value=""></input>
			</div>
		</div>
		<div class="form-group">
			<label for="sex" class="col-sm-2 control-label"  >性别</label>
			<div class="col-sm-9">
				<label ><input name="sex" id="sex1" type="radio" value="男" checked="checked"/>&nbsp;&nbsp;男&nbsp;&nbsp;</label>&nbsp;&nbsp;&nbsp;&nbsp;
				<label ><input name="sex" id="sex2" type="radio" value="女"/>&nbsp;&nbsp;女&nbsp;&nbsp;</label>
			</div>
		</div>
		<div class="form-group">
			<label for="IDcard" class="col-sm-2 control-label"  >身份证号</label>
			<div class="col-sm-9">
				<input name="IDcard" id="IDcard" class="form-control well" type="text" value=""></input>
			</div>
		</div>
		<div class="form-group">
			<label for="title" class="col-sm-2 control-label"  ><span id="titleChange">系别</span></label>
			<div class="col-sm-9">
				<input name="title" id="title" class="form-control well" type="text" value=""></input>
			</div>
		</div>
		<div class="form-group">
			<label for="phone" class="col-sm-2 control-label"  >电话</label>
			<div class="col-sm-9">
				<input name="phone" id="phone" class="form-control well" type="text" value=""></input>
			</div>
		</div>
		</div>
		<div>
			<button id="sbmBtn" type="submit" class="btn" >添加用户</button>
		</div>
		</form>
	</div>
</div>
</body>
</html>