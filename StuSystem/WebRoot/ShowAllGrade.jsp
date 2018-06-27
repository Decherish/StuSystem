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

<title>My JSP 'ShowAllGrade.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<c:if test="${empty gList }">
    	无信息
   		</c:if>
	<c:if test="${not empty gList}">
		<table border="1">
			<tr>
				<td>课程名</td>
				<td>学生姓名</td>
				<td>成绩</td>
				<td>操作</td>
			</tr>

			<c:forEach items="${gList}" var="g">
				<form action="<%=basePath%>UpGradeServlet" method="get">
					<tr>
						<input type="hidden" name="tid" value="${tid }">
						<input type="hidden" name="sid" value="${g.id }">
						<td><input type="text" name="cname" value="${g.cname}"></td>
						<td>${g.name }</td>
						<td><input type="text" name="grade" value="${g.grade}"></td>
						<td><input type="submit" value="提交"></td>
					</tr>
				</form>
			</c:forEach>
		</table>
		<a href="LoginServlet?id=${tid }">返回</a>
	</c:if>
</body>
</html>
