<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/contants/context.jsp"%>
<%@ include file="/WEB-INF/views/layout/include.jsp"%>
<div class="container" style="margin-top: 200px;">
	<div class="row"></div>
	<div class="row">
		欢迎${acctUser.account }！！！点击进入<a
			href="${contextPath }/user/memberCenter" target="frame_name_2">个人中心</a>去完善自己的资料吧!
	</div>
	</div>