<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/contants/context.jsp"%>
<%@ include file="/WEB-INF/views/layout/include.jsp"%>

<!---------主体------------------>
<div class="container" style="margin-top: 100px; border: 1px solid gray">
	<div class="row">
		<h3>马上注册用户成为会员吧！</h3>
	</div>
	<div class="row">
		<div class="col-xs-12 col-md-10" style="margin-top:100px;">
			<form class="form-horizontal" action="${contextPath}/user/registUser"
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
					<label for="input_user_copy_passwd" class="col-sm-2 control-label">确认密码</label>
					<div class="col-sm-6">
						<input type="password" class="form-control"
							id="input_user_copy_passwd" name="input_user_copy_passwd"
							placeholder="请确认密码">
					</div>
				</div>
				<div class="form-group">
					<label for="input_user_phone" class="col-sm-2 control-label">手机号</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="input_user_phone"
							name="input_user_phone" placeholder="请输入手机号">
					</div>
					<div class="col-sm-2">
						<button id="sendPhoneValidateCodeBtn" class="btn btn-default">发送验证码</button>
					</div>
				</div>
				<div class="form-group">
					<label for="input_user_validate_code"
						class="col-sm-2 control-label">验证码</label>
					<div class="col-sm-6">
						<input type="text" class="form-control"
							id="input_user_validate_code" name="input_user_validate_code"
							placeholder="请输入手机收到的验证码">
					</div>
				</div>
				<div class="form-group">
					<label for="input_user_email" class="col-sm-2 control-label">邮箱</label>
					<div class="col-sm-6">
						<input type="email" class="form-control" id="input_user_email"
							name="input_user_email" placeholder="请输入邮箱">
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
						<button type="submit" class="btn btn-success">注册</button>
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