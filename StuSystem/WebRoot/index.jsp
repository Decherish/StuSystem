<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
    <form action="<%=basePath %>LoginServlet" method="post">
    	用户名：<input type="text" name="id" id="user"><br/>
    	密码：<input type="password" name="password" id="password"><br/>
    	<input type="submit" value="提交 " onclick="check()">
    </form>
  </body>
   <script type="text/javascript">
	  function check(){
		  	var user = document.getElementById("user").value;
		  	var password = document.getElementById("password").value;
		  	if(user==null || user==""){
		  		alert("用户名不能为空")
		  	}
		  	if(password==null || password==""){
		  		alert("密码不能为空")
		  	}
		  }
  </script> 
</html>
