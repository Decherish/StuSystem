<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showOne.jsp' starting page</title>
    
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
    <c:if test="${empty s}">
    	无信息
    </c:if>
    <c:if test="${not empty s}">
    	<table border="1">
    		<tr>
    			<td>学生学号</td>
    			<td>${s.id }</td>
    		</tr>
    		<tr>
    			<td>学生姓名</td>
    			<td>${s.name }</td>
    		</tr>
    		<tr>
    			<td>学生性别</td>
    			<td>${s.sex }</td>
    		</tr>
    		<tr>
    			<td>学生宿舍</td>
    			<td>${s.ldormitory }</td>
    		</tr>
    		<tr>
    			<td>学生班级</td>
    			<td>${s.classz }</td>
    		</tr>
    		<tr>
    			<td>出生年月</td>
    			<td>${s.birthday }</td>
    		</tr>
    	</table>
    </c:if>
    <a href="<%=basePath%>LoginServlet?id=${s.id}">返回</a>
  </body>
</html>
