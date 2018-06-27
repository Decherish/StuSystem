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

<title>My JSP 'ShowGrade.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>

<body>
	<c:if test="${empty eList }">
    	无信息
    </c:if>
	<c:if test="${not empty eList }">

		<table border="1">
			<tr>
				<td>选修课程</td>
				<td>成绩</td>
			</tr>

			<c:forEach items="${eList }" var="e">
				<tr>
					<td>${e.cname}</td>
					<td>${e.grade}</td>
				</tr>
			</c:forEach>

		</table>
	</c:if>
	<br>
	<c:if test="${empty oList }">
    	无信息
    </c:if>
	<c:if test="${not empty oList }">

		<table border="1">
			<tr>
				<td>必修课程</td>
				<td>成绩</td>
			</tr>

			<c:forEach items="${oList }" var="o">
				<tr>
					<td>${o.cname}</td>
					<td>${o.grade}</td>
				</tr>
			</c:forEach>

		</table>
	</c:if>
	
	<a href="<%=basePath%>LoginServlet?id=${id}">返回</a>
</body>
</html>
