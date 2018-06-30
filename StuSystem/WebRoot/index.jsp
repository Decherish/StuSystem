<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>My JSP 'index.jsp' starting page</title>
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
<link rel="stylesheet" href="<%=basePath%>css/signin.css">

</head>
<body>
	<div class="form-signin">
		<form action="<%=basePath%>LoginServlet" method="post">
			<h2 class="form-signin-heading">Please sign in</h2>
			<input type="text" name="id" id="user" class="form-control"
				placeholder="用户名"> <input type="password" id="password"
				name="password" class="form-control" id="password" placeholder="密码">
			<input type="submit" value="Sign in " onclick="check()"
				class="btn btn-lg btn-primary btn-block">
		</form>
</body>
<script type="text/javascript">
	function check() {
		var user = document.getElementById("user").value;
		var password = document.getElementById("password").value;
		if (user == null || user == "") {
			alert("用户名不能为空")
		}
		if (password == null || password == "") {
			alert("密码不能为空")
		}
	}
</script>
</html>
