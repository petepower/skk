<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/contants/context.jsp"%>
<%@ include file="/WEB-INF/views/layout/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>工业之友</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<jsp:include page="./layout/nav.jsp"></jsp:include>
	<div style="margin-top:100px;"></div>
	<iframe name="frame_name_2" src="${contextPath }/home/bs" width="100%" height="1500px" frameborder="no" border="0"
			scrolling="no" allowtransparency="yes"></iframe>
	<jsp:include page="./layout/footer.jsp"></jsp:include>
			
</body>
</html>