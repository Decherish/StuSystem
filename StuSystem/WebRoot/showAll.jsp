<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'showAll.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>

<body>
	<c:if test="${empty st }">
    	无学生信息
    </c:if>
	<c:if test="${not empty st }">
		<table border="1" align="center" width="65%">
			<tr>
				<td>学生编号</td>
				<td>学生姓名</td>
				<td>学生性别</td>
				<td>学生宿舍</td>
				<td>学生班级</td>
				<td>出生年月</td>
			</tr>
			<c:forEach items="${st }" var="s">
				<tr>
					<td>${s.id }</td>
					<td>${s.name}</td>
					<td>${s.sex}</td>
					<td>${s.ldormitory}</td>
					<td>${s.classz}</td>
					<td>${s.birthday}</td>
				</tr>
			</c:forEach>
		</table>
		<a href="LoginServlet?id=${tid }">返回</a>
	</c:if>
</body>
</html>
