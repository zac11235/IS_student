<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: mings
  Date: 2020/6/30
  Time: 17:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>教师登录</title>
</head>
<body>
<div id="form">
    <s:form action="" class="" method="POST">
        <s:textfield name="loginName" label="职工号" size="22" value="admin"/>
        <s:password name="loginPwd"  label="密码" size="22"/>

        <s:submit  value="登录" align="center"/>
        <s:reset  value="重置" align="center"/>
    </s:form>
</div>
<div>
    <a href="">忘记密码，找回</a>
    <button id="index" action="index.jsp">退回</button>
</div>
</body>
</html>
