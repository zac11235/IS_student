<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: mings
  Date: 2020/6/30
  Time: 19:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <link rel="stylesheet"  href="../../bs/css/bootstrap.css">
    <script src="../bs/js/jquery.min.js"></script>
    <script src="../../bs/js/bootstrap.js"></script>
    <title>教师基本信息</title>
</head>
<body>
<table class="table">
    <h1 align="center">教师信息</h1>
    <thead>
    <tr>
        <th>职工号</th>
        <th>姓名</th>
        <th>学院</th>
        <th>办公室</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <s:property value="manBean.getDept()" />
        <td><s:property  value="#session.logined"/><br/></td>
        <td><s:property value="#session.name"/></td>
        <td><s:property value="#session.dept"/></td>
        <td><s:property value="#session.office"/></td>
    </tbody>
</table>
</body>
</html>
