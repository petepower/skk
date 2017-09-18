<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/contants/context.jsp"%>
<%@ include file="/WEB-INF/views/layout/include.jsp"%>

<!---------主体------------------>
<div class="container" style="margin-top: 100px; border: 1px solid gray">
	<div class="row">
		<h3>login</h3>
	</div>
	<div class="row">
		<div class="col-xs-12 col-md-10" style="margin-top: 100px;">
			<form class="form-horizontal" 
				>
				<div class="form-group">
					<label for="input_user_account" class="col-sm-2 control-label">用户名</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="input_user_account"
							name="input_user_account" placeholder="请输入用户名">
					</div>
				</div>
				<div class="form-group">
					<label for="input_user_passwd" class="col-sm-2 control-label">密码</label>
					<div class="col-sm-6">
						<input type="password" class="form-control" id="input_user_passwd"
							name="input_user_passwd" placeholder="请输入密码">
					</div>
				</div>
				<div class="form-group">
					<label for="regist_return_value" class="col-sm-2 control-label"></label>
					<div class="col-sm-6">
						<span id="regist_return_value" style="display:none"></span>
					</div>
				</div>
				<!-- <div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<div class="checkbox">
					<label> <input type="checkbox"> Remember me
					</label>
				</div>
			</div>
		</div> -->
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<input type="button" class="btn btn-success" onclick="handleLogin()" value="go"/>
					</div>
				</div>
			</form>
		</div>
		<div class="col-xs-4 col-md-2">
			<div class="row"
				style="height: 150px; margin-top: 30px; border: 1px solid blue">
				快速登录入口
				<p>QQ</p>
				<p>WeiXin</p>
				<p>Weibo</p>
			</div>
		</div>

	</div>
</div>
<script type="text/javascript">
function handleLogin() {
	var account = $("input[name=input_user_account]").val();
	var passwd = $("input[name=input_user_passwd]").val();
	$.ajax({
		url : "${contextPath}/user/userLogin",
		type : "get",
		dataType : "json",
		data : {"input_user_account" : account, "input_user_passwd":passwd},
		success : function (data) {
			console.info(data);
			if (data) {
				if (data.status) {
					if (100 == data.status) {
						window.location.reload(true); // 登录 或者 注销完需要刷新一下 整个页面。怎么实现？？
						window.top.frame_name_2.location.href = "${contextPath}/home/bs";
						
					} else {
						$("#regist_return_value").show();
						$("#regist_return_value").html(data.result);
					}
				}
			}
		}
	});
}
</script>