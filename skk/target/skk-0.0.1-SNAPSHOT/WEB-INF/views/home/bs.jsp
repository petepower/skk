<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/contants/context.jsp"%>
<%@ include file="/WEB-INF/views/layout/include.jsp"%>
<!--------------------------------------------------轮播开始-------------------------------------------->
<div id="carousel-example-generic" class="carousel slide"
	data-ride="carousel">
	<!-- ol指示器  ol标签与ul标签不同 ol为是有序列表 ul为是无序列表 -->
	<ol class="carousel-indicators">
		<!-- 指示器 -->
		<li data-target="#carousel-example-generic" data-slide-to="0"
			class="active"></li>
		<li data-target="#carousel-example-generic" data-slide-to="1"></li>
		<li data-target="#carousel-example-generic" data-slide-to="2"></li>
	</ol>


	<!-- 包装的轮播图片-->
	<div class="carousel-inner" role="listbox">
		<!--图片-->
		<div class="item active">
			<img src="${contextPath }/resources/img/hw_bg1.png"  alt="风景1">
			<div class="carousel-caption">
				<!--h4中的内容显示到图片上面，-->
				<h4>真正的才智是刚毅的志向。 —— 拿破仑</h4>
			</div>
		</div>
		<div class="item">
			<img src="${contextPath }/resources/img/hw_bg.png" alt="风景2">
			<div class="carousel-caption">
				<h4>志向不过是记忆的奴隶，生气勃勃地降生，但却很难成长。 —— 莎士比亚</h4>
			</div>
		</div>
		<div class="item">
			<img src="${contextPath }/resources/img/hw_bg3.png" alt="风景3">
			<div class="carousel-caption">
				<h4>志向和热爱是伟大行为的双翼。 —— 歌德</h4>
			</div>
		</div>
	</div>

	<!-- Controls -->
	<a class="left carousel-control" href="#carousel-example-generic"
		role="button" data-slide="prev"> <span
		class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
		class="sr-only">Previous</span>
	</a> <a class="right carousel-control" href="#carousel-example-generic"
		role="button" data-slide="next"> <span
		class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span
		class="sr-only">Next</span>
	</a>
</div>
<!--------------------------------------------------轮播结束-------------------------------------------->
<div class="container" style="margin-top:50px;">
	<div class="row">
		<p class="text-center h3">快速入口</p>
	</div>
	<div class="row">
		<div class="col-xs-3 col-md-3">
			<a href="#" class="thumbnail"> <img
				src="${contextPath }/resources/img/appstore.png" alt="...">
			</a>
		</div>
		<div class="col-xs-3 col-md-3">
			<a href="#" class="thumbnail"> <img
				src="${contextPath }/resources/img/appstore.png" alt="...">
			</a>
		</div>
		<div class="col-xs-3 col-md-3">
			<a href="#" class="thumbnail"> <img
				src="${contextPath }/resources/img/appstore.png" alt="...">
			</a>
		</div>
		<div class="col-xs-3 col-md-3">
			<a href="#" class="thumbnail"> <img
				src="${contextPath }/resources/img/appstore.png" alt="...">
			</a>
		</div>
	</div>
	<div class="row">
		<div class="col-xs-12 col-sm-6 col-md-8">
			<div class="row" style="height:300px;border:1px solid blue">
			这里是推荐文库文档排行
			</div>
			<div class="row" style="height:300px;border:1px solid blue">
			这里是推荐视频排行
			</div>
		</div>
		<div class="col-xs-6 col-md-4">
			<div class="row" style="height:300px;border:1px solid blue">
			用户上传下载文档动态
			</div>
			<div class="row" style="height:300px;border:1px solid blue">
			用户上传观看视频动态
			</div>
		</div>
	</div>
</div>
