<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Gaea</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	if (!parent.document.getElementById("frame_id_1"))
		parent.location.href = contextPath + "/redirect?url=" + window.location.href;
</script>
</head>
<body>
<jsp:include page="${page }.jsp"></jsp:include>
</body>
<script type="text/javascript" src="${contextPath }/resources/js/page.js"></script>
</html>