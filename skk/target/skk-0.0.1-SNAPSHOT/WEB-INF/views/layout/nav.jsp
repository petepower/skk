<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/include.jsp"%>
<%@ include file="/WEB-INF/views/contants/context.jsp"%>
<header class="am-topbar header">
	<div class="am-container-1">
		<div class="left hw-logo">
		  工业之友
    </div>

  <div class="am-collapse am-topbar-collapse right" id="doc-topbar-collapse">
    

    <div class=" am-topbar-left am-form-inline am-topbar-right" role="search">
      <ul class="am-nav am-nav-pills am-topbar-nav hw-menu">
      <li><a href="${contextPath }/index/index2" target="frame_name_1">首页</a></li>
      <li ><a href="${contextPath }/solutions" target="frame_name_1">SHUKONGWENKU</a></li>
      <li><a href="${contextPath }/resources/htmls/product-show.html" target="frame_name_1">SHUKONGJIAOCHENG </a></li>
      <li><a href="${contextPath }/resources/htmls/customer-case.html" target="frame_name_1">SHUKONGRUANJIAN</a></li>
      <li><a href="${contextPath }/resources/htmls/service-center.html" target="frame_name_1">SHUKONGKETANG</a></li>
      <li><a href="${contextPath }/resources/htmls/news.html" target="frame_name_1">新闻动态 </a></li>
    </ul>
    </div>
	<script>
		$(function(){
			$(".hw-menu").children("li").each(function(){
				$(this).click(function(){
					$(".hw-menu li").removeClass("hw-menu-active");
					$(this).addClass("hw-menu-active");
				})
			})
		})
	</script>
  </div>
  </div>
</header>