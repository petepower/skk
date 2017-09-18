<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/contants/context.jsp"%>
<%@ include file="/WEB-INF/views/layout/include.jsp"%>

<!---------主体------------------>
<div class="container" style="margin-top: 200px;">
	<div class="row"></div>
	<div class="row">
		欢迎${acctUser.account }！！！点击进入<a href="${contextPath }/user/memberCenter">个人中心</a>
	</div>
	
</div>