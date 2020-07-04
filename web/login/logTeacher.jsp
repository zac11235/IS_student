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
    <link rel="stylesheet" type="text/css" href="../css/styles.css">
    <link rel="stylesheet"  href="../bs/css/bootstrap.css">
    <script src="../bs/js/jquery.min.js"></script>
    <script src="../bs/js/bootstrap.js"></script>
    <title>教师登录</title>
</head>
<body>
<jsp:useBean id="manBean" class="teacher.TeacBean"/>
<jsp:setProperty name="manBean" property="*"/>
<div id="form" class="bg-primary" align="center">
    <h1>教师登录</h1>
    <s:form action="loginTeac.action" class="" method="POST">
        <s:textfield name="loginId" label="职工号" size="22" value="1703001"/>
        <s:password name="loginPwd"  label="密码" size="22"/>

        <s:submit  value="登录" align="center"/>
        <s:reset  value="重置" align="center"/>
    </s:form>
<div>
    <a href="">忘记密码，找回</a>
    <button id="index" action="index.jsp">退回</button>
</div></div>
</body>
</html>
