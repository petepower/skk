<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/WEB-INF/views/contants/context.jsp"%>
<%@ include file="/WEB-INF/views/layout/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>工业之友</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" type="image/png" href="${contextPath}/resources/img/g1.png">
</head>
<body>
	<jsp:include page="./layout/nav.jsp"></jsp:include>
	<iframe id="frame_id_1" name="frame_name_1" src="${contextPath}/home" width="100%" height="1500px" frameborder="no" border="1" scrolling="no"
		></iframe>
	<jsp:include page="./layout/footer.jsp"></jsp:include>
</body>
</html>