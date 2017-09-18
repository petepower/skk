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
			<img src="${contextPath }/resources/img/hw_bg1.png" alt="风景1">
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
<div class="container" style="margin-top: 50px;">
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
			<div class="row" style="height: 300px; border: 1px solid blue">
				这里是推荐文库文档排行</div>
			<div class="row" style="height: 300px; border: 1px solid blue">
				这里是推荐视频排行</div>
		</div>
		<div class="col-xs-6 col-md-4">
			<div class="row" style="height: 300px;">
				<div style="height:20px;">
					用户下载上传最新动态
				</div>
				<div id="mq" onmouseover=iScrollAmount=0
					style="OVERFLOW: hidden; WIDTH: 100%; margin: 0 auto; HEIGHT: 270px; line-height: 22px;"
					onmouseout=iScrollAmount=1>
					<ul class="list-group">
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
					</ul>
				</div>
			</div>
			<div class="row" style="height: 300px;">
				<div style="height:20px;">
					用户下载上传最新动态
				</div>
				<div id="mq2" onmouseover=iScrollAmount2=0
					style="OVERFLOW: hidden; WIDTH: 100%; margin: 0 auto; HEIGHT: 270px; line-height: 22px;"
					onmouseout=iScrollAmount2=1>
					<ul class="list-group">
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
						<li class="list-group-item">hello1111111</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
var oMarquee = document.getElementById("mq"); //滚动对象 
var iLineHeight = 43; //单行高度，像素 
var iLineCount = 40; //实际行数 
var iScrollAmount = 1; //每次滚动高度，像素 
function run() { 
	oMarquee.scrollTop += iScrollAmount; 
	if ( oMarquee.scrollTop == iLineCount * iLineHeight ) 
		oMarquee.scrollTop = 0; 
	if ( oMarquee.scrollTop % iLineHeight == 0 ) { 
		window.setTimeout( "run()", 1000 ); 
	} else { 
		window.setTimeout( "run()", 10 ); 
	}
} 
oMarquee.innerHTML += oMarquee.innerHTML; 
window.setTimeout( "run()", 1000 );

var oMarquee2 = document.getElementById("mq2"); //滚动对象 
var iLineHeight2 = 43; //单行高度，像素 
var iLineCount2 = 40; //实际行数 
var iScrollAmount2 = 1; //每次滚动高度，像素 
function run2() { 
	oMarquee2.scrollTop += iScrollAmount2; 
	if ( oMarquee2.scrollTop == iLineCount2 * iLineHeight2 ) 
		oMarquee2.scrollTop = 0; 
	if ( oMarquee2.scrollTop % iLineHeight2 == 0 ) { 
		window.setTimeout( "run2()", 1000 ); 
	} else { 
		window.setTimeout( "run2()", 10 ); 
	}
} 
oMarquee2.innerHTML += oMarquee2.innerHTML; 
window.setTimeout( "run2()", 1000 );
</script>
