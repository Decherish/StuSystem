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
    
    <title>My JSP 'showClasspalce.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
  </head>
  
  <body>
  <c:if test="${empty cpList}">
    	无信息
    </c:if>
	<c:if test="${not empty cpList}">
		<table border="1" align="center" width="65%">
			<tr>
				<td>课程名</td>
				<td>课程教师</td>
				<td>上课地点</td>
				<td>上课时间</td>
			</tr>
			<c:forEach items="${cpList }" var="c">
			<tr>
				<td>${c.cname }</td>
				<td>${c.cteacher }</td>
				<td>${c.place }</td>
				<td>${c.time }</td>
			</tr>
			</c:forEach>
		</table>
		<a href="<%=basePath%>LoginServlet?id=${id}">返回</a>
	</c:if>
  </body>
</html>
