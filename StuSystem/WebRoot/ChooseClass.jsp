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

<title>My JSP 'ChooseClass.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>

<body>
	<c:if test="${empty cList}">
    	无信息
    </c:if>
	<c:if test="${not empty cList }">
		<table border="1">
			<tr>
				<td>课程名</td>
				<td>操作</td>
			</tr>
			<c:forEach items="${cList}" var="c">
				<tr>
					<td>${c.cname }</td>
					<td><a href="javascript:void(0)" onclick="chos('${c.cname}','${id}')">选课</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	<a href="<%=basePath%>LoginServlet?id=${id}">返回</a>
</body>
<script type="text/javascript">
	function chos(name,id) {

		var flag = window.confirm("确认选课吗");

		if (flag) {
			
			location.href = "<%=basePath%>CCServlet?name="+name+"&id="
					+ id;
		}
	}
</script>
</html>
