<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>登录</title>	
	<link rel="stylesheet" type="text/css" href="../css/styles.css">
  </head>
  
  <body id="header">
   <h1 > 你尚未登录，请<a href="login.jsp">登录</a> <br></h1>
  </body>
</html>
