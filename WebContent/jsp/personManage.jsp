<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>人员信息管理</title>

<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style type="text/css">
#main{
	text-align: center;
	width:1000px;
    height: 400px;
    margin:0 auto;
    padding: 0;
    border: 0;
}
#button_submit{
	width: 80px;
	font-size: 15px;
	vertical-align:middle;
	-moz-border-radius: 3px;
	-webkit-border-radius:3px;
	border-radius: 2px; 
	border: 1px solid #c9c9c9 ;
}
table{
　　table-layout: fixed;
	height: auto;
}

td{
　　white-space: nowrap;
　　overflow: hidden;
　　text-overflow: ellipsis;
	word-wrap:break-word;
	text-align:center;
}
tr{
	text-align: center;height: 30px;line-height: 30px;
}
.form-control{
	margin: 0;
	padding: 5px;
}
.abtn{
	-webkit-appearance: button;
    -moz-appearance: button;
    appearance: button;

    text-decoration: none;
    color: initial;
}
</style>
<%
	String type=(String)request.getAttribute("type");
	String selectStyle=(String)request.getAttribute("selectStyle");
	String key=(String)request.getAttribute("key");
	String Page = "1";
	if (request.getAttribute("page") != null)
		Page=request.getAttribute("page").toString();
%>
<script type="text/javascript">
function editTest(obj) {
	var td0=$(obj).parent().parent().parent().find('td')[0];
	var id=$(td0).text();
	var td1=$(obj).parent().parent().parent().find('td')[1];
	var name=$(td1).text();
	var td2=$(obj).parent().parent().parent().find('td')[2];
	var sex=$(td2).text();
	var td3=$(obj).parent().parent().parent().find('td')[3];
	var idcard=$(td3).text();
	var td4=$(obj).parent().parent().parent().find('td')[4];
	var title=$(td4).text();
	var td5=$(obj).parent().parent().parent().find('td')[5];
	var password=$(td5).text();
	var td6=$(obj).parent().parent().parent().find('td')[6];
	var phone=$(td6).text();
	
	$("#ID").val(id);
	$("#name").val(name);
	$("#IDcard").val(idcard);
	$("#pwd").val(password);
	$("#perType").val(title);
	$("#phone").val(phone);
	
	$("#sex").find("option[value="+sex+"]").prop("selected",true);

}

function checkDelete() {
	var gnl=confirm("确定要删除?");  
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
	<div>
		<form action="${pageContext.request.contextPath}/ShowUserInfo?page=1" method="post"> 						<!--搜索四个值：page type selectStyle key  -->
		<label><input name="type" type="radio"   value="Teacher" <%if(type!=null&&type.equals("Teacher")) out.print("checked='true'"); %>/>教师</label>
		<label><input name="type" type="radio"   value="Student" <%if(type!=null&&type.equals("Student")) out.print("checked='true'"); %>/>学生</label>
		<label><select name="selectStyle" id="selectStyle">
			<option id="IDstyle" value ="id" <%if(selectStyle!=null&&selectStyle.equals("id")) out.print("selected='selected'");%>>用户ID</option>
			<option id="Namestyle" value ="name" <%if(selectStyle!=null&&selectStyle.equals("name")) out.print("selected='selected'");%> >姓名</option>
		</select></label>
		<label><input name="key" type="text" <%if(key!=null) out.print("value='"+key+"'");else out.print("value=''");%> /></label>
		<button id="button_submit" type="submit" >搜索</button>
		</form>
	</div>

	<%
		StringBuffer table=(StringBuffer)request.getAttribute("UserTable");
		if(table==null){
			response.sendRedirect("../ShowUserInfo?page=1&type=Teacher&selectStyle=id&key=");
		}else{
			out.print(table.toString());
		}
	%>
</div>

 
        <div class="modal fade" id="myModal1"  tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <!--  定义模态框，过渡效果为淡入，id为myModal,tabindex=-1可以禁用使用tab切换，aria-labelledby用于引用模态框的标题，aria-hidden=true保持模态框在触发前窗口不可见  -->
            <div class="modal-dialog" style="width:600px">
                <!--  显示模态框对话框模型（若不写下一个div则没有颜色）  -->
                <div class="modal-content">
                    <!--  显示模态框白色背景，所有内容都写在这个div里面  -->

                    <div class="modal-header">
                        <!--  模态框标题  -->
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <!--  关闭按钮  -->
                        <h4>修改用户信息</h4>
                        <!--  标题内容  -->
                    </div>

                    <div class="modal-body">
                        <!--  模态框内容，我在此处添加一个表单 -->
                        <form   action="${pageContext.request.contextPath}/UpdateUser?page=<%=Page%>&type=<%=type%>&selectStyle=<%=selectStyle%>&key=<%=key%>"  method="post" class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="ID" class="col-sm-2 control-label"><span id="idChange">教工号</span></label>
                                <div class="col-sm-9">
                               		<input name="ID" id="ID" class="form-control well" ></input>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="name" class="col-sm-2 control-label">名字</label>
                                <div class="col-sm-9">
                                    <input name="name" id="name" class="form-control well" ></input>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="sex" class="col-sm-2 control-label">性别</label>
                                <div class="col-sm-9">
                                    <select class="form-control" name="sex" id="sex">
									<option id="male" value ="男">男</option>
									<option id="female" value ="女">女</option>
									</select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="IDcard" class="col-sm-2 control-label">身份证号</label>
                                <div class="col-sm-9">
                                    <input name="IDcard" id="IDcard" class="form-control well" ></input>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="pwd" class="col-sm-2 control-label">密码</label>
                                <div class="col-sm-9">
                                    <input name="pwd" id="pwd" class="form-control well" ></input>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="perType" class="col-sm-2 control-label"><span id="typeChange">职称</span></label>
                                <div class="col-sm-9">
                                    <input name="perType" id="perType" class="form-control well" ></input>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="phone" class="col-sm-2 control-label">电话号码</label>
                                <div class="col-sm-9">
                                    <input name="phone" id="phone" class="form-control well" ></input>
                                </div>
                            </div>                    
                    </div>

                    <div class="modal-footer">
                        <!--  模态框底部样式，一般是提交或者确定按钮 -->
                        <button type="submit" class="btn btn-success">确定</button>
                        <button type="button" class="btn " data-dismiss="modal">取消</button>
                    </div>
				</form>
                </div><!-- /.modal-content -->
            </div>
        </div> <!-- /.modal -->
        
<script type="text/javascript">
$(document).ready{function (){
	if("<%=selectStyle%>"=="Teacher"){
		$("idChange").text("教工号");
		$("typeChange").text("职称");
	}else if("<%=selectStyle%>"=="Student"){
		$("idChange").text("学号");
		$("typeChange").text("系别");
	}
}}
</script>
</body>
</html>