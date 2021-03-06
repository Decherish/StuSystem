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
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
<link rel="stylesheet" href="<%=basePath%>css/navbar.css">
</head>

<body>
	<div class="container">
		<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">StuSystem</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="<%=basePath%>AllStuMessageServlet?tid=${tid}">显示学生信息</a></li>
					<li><a href="<%=basePath%>AllStuGradeServlet?tid=${tid}">显示学生成績</a>
					</li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="<%=basePath%>index.jsp">退出登陸</a></li>
				</ul>
			</div>
		</div>
		</nav>
		<div class="jumbotron">
			<c:if test="${empty gList }">
				<br>
			</c:if>
			<c:if test="${not empty gList}">
				<table class="table table-bordered table-hover">
					<tr>
						<td>课程名</td>
						<td>学生姓名</td>
						<td>成绩</td>
						<td>操作</td>
					</tr>
					<c:forEach items="${gList}" var="g">
							<form action="<%=basePath%>UpGradeServlet" method="get" class="">
							<tr>
								<input type="hidden" name="tid" value="${tid }">
								<input type="hidden" name="sid" value="${g.id }">
								<input type="hidden" name="cname" value="${g.cname}">
								<td>${g.cname}</td>
								<td>${g.name }</td>
								<td><input type="text" name="grade" value="${g.grade}"></td>
								<td><button type="submit" class="btn btn-default">修改</button></td>
							</tr>
						</form>
					</c:forEach>
				</table>
			</c:if>
		</div>
	</div>
</body>
</html>
