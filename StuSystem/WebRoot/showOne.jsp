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

<title>My JSP 'showOne.jsp' starting page</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
					<li><a href="<%=basePath%>StuMessageServlet?id=${id}">显示个人信息</a></li>
					<li><a href="<%=basePath%>SCMServlet?id=${id}">显示课程信息</a></li>
					<li><a href="<%=basePath%>ChooseServlet?id=${id}">选课系统</a></li>
					<li><a href="<%=basePath%>GradeServlet?id=${id}">显示成绩</a></li>
					</li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="<%=basePath%>index.jsp">退出登陸</a></li>
				</ul>
			</div>
		</div>
		</nav>
		<div class="jumbotron">
			<c:if test="${empty s}">
    	无信息
    </c:if>
			<c:if test="${not empty s}">
				<table class="table table-bordered table-hover">
					<tr>
						<td>学生学号</td>
						<td>学生姓名</td>
						<td>学生性别</td>
						<td>学生宿舍</td>
						<td>学生班级</td>
						<td>出生年月</td>
					</tr>
					<tbody>
						<tr>
							<td>${s.id }</td>
							<td>${s.name }</td>
							<td>${s.sex }</td>
							<td>${s.ldormitory }</td>
							<td>${s.classz }</td>
							<td>${s.birthday }</td>
						</tr>
					</tbody>
				</table>
			</c:if>
		</div>
	</div>
</body>
</html>
