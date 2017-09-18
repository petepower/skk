<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/contants/context.jsp"%>
<%@ include file="/WEB-INF/views/layout/include.jsp"%>
<!-----------------------------------------导航条设计开始--------------------------------->
<!--黑色导航条样式为navbar-inverse，白色样式为default  ， .navbar-fixed-top导航条固定在顶端-->
<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<!------button为实现响应式布局，如果在手机上查看，点击button就可以弹出菜单---->
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">工业之友</a>
			<!--方log的地方-->
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-2" >
			<form class="navbar-form navbar-right" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
				</div>
				<button type="submit" class="btn btn-default">搜索</button>
			</form>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">热门搜索:</a></li>
				<li><a href="#" style="color: #23527c">3d</a></li>
				<li><a href="#" style="color: #23527c">机器人</a></li>
				<li><a href="#" style="color: #23527c">智能</a></li>
			</ul>
		</div>
		
	</div>
	<div class="container-fluid" style="background-color:#222;font-color:white">
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1" >
			<!--具体菜单项-->
			<ul id="nav_id_1" class="nav nav-pills navbar-nav "
				style="margin-left: 300px;">
				<li role="presentation" class="active"><a
					href="${contextPath }/home/bs" target="frame_name_2">首页<span
						class="sr-only">(current)</span></a></li>
				<li role="presentation"><a href="${contextPath }/home/bs2"
					target="frame_name_2">数控文库</a></li>
				<li role="presentation"><a href="#">数控软件</a></li>
				<li role="presentation"><a href="#">数控课堂</a></li>
				<li role="presentation"><a href="#">数控教程</a></li>
				<li role="presentation"><a href="${contextPath }/user/memberCenter">个人中心</a></li>
			</ul>
			<!--搜索表单-->

			<!--导航栏右部，一般的登录 注册-->
			<ul class="nav navbar-nav navbar-right">
				<c:choose>
					<c:when test="${currentUser != null }">
					  <li role="presentation" class="dropdown">
					    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
					     ${currentUser.account } <span class="caret"></span>
					    </a>
					    <ul class="dropdown-menu">
					    	<li role="presentation"><a href="${contextPath }/user/memberCenter" target="frame_name_2">个人中心</a></li>
					    	<li role="presentation"><a href="#">我的资料</a></li>
					    	<li role="presentation"><a href="${contextPath }/user/quitLogin" target="frame_name_2">退出登录</a></li>
					    </ul>
					  </li>
					</c:when>
				<c:otherwise>
					<li><a href="${contextPath }/user/login" target="frame_name_2">登录</a></li>
					<li><a href="${contextPath }/user/registpage" target="frame_name_2">注册</a></li>
				</c:otherwise>
				</c:choose>
				
			</ul>
		</div>
		<!-- /.navbar-collapse -->

	</div>
	<!-- /.container-fluid -->


</nav>
<script>
	$(function() {
		$("#nav_id_1 > li").each(function() {
			$(this).click(function() {
				$("#nav_id_1 > li").removeClass("active");
				$(this).addClass("active");
			})
		})
	})
</script>
<!------------------------------------------导航条结束-------------------------------->