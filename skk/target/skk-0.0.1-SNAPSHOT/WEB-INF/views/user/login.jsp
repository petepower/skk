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
		<div class="col-xs-12 col-md-10" style="margin-top:100px;">
			<form class="form-horizontal" action="${contextPath}/user/userLogin"
				method="post" target="frame_name_2">
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
						<input type="hidden" class="form-control" id="regist_return_value"
							name="regist_return_value" placeholder="返回结果">
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
						<button type="submit" class="btn btn-success">登录</button>
					</div>
				</div>
			</form>
		</div>
		<div class="col-xs-4 col-md-2">
			<div class="row"
				style="height: 250px; margin-top: 50px; border: 1px solid blue">
				快速注册入口
				<p>QQ</p>
				<p>WeiXin</p>
				<p>Weibo</p>	
			</div>
		</div>

	</div>



</div>