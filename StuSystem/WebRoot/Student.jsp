<%@page import="com.stus.bean.Student"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'show.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	

  </head>

  <body>
  	<a href="<%=basePath%>StuMessageServlet?id=${id}">显示个人信息</a><br>
  	<a href="<%=basePath%>SCMServlet?id=${id}">显示课程信息</a><br>
  	<a href="<%=basePath%>ChooseServlet?id=${id}">选课系统</a><br>
  	<a href="<%=basePath%>GradeServlet?id=${id}">显示成绩</a>
  </body>
</html>
