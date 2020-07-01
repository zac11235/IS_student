<%@ page contentType="text/html; charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
  <head>
    <title>登录</title>
    	<link rel="stylesheet" type="text/css" href="../styles.css">
    	 <link rel="stylesheet"  href="../bs/css/bootstrap.css">
  <script src="../bs/js/jquery.min.js"></script>
    <script src="../bs/js/bootstrap.js"></script>
  </head>
  <body >
 <div  id="header" >
     <h1>登录</h1>
   <form action="loginAction.action" method="post" >
      <p> 用户名：<s:textfield name="loginName"  size="22" value="admin"/></p><br/>
         <p>密码：<s:password name="loginPwd"  label="密码" size="22"/></p><br/>
    	<s:submit  value="登录" />&nbsp;
    	<s:reset  value="重置" />
    </form>
      <s:fielderror name="loginName"/><br/>
    </div>
  </body>
</html>