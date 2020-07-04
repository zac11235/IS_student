<%--
  Created by IntelliJ IDEA.
  User: mings
  Date: 2020/6/30
  Time: 19:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="../../css/styles.css">
    <link rel="stylesheet"  href="../../bs/css/bootstrap.css">
    <script src="../bs/js/jquery.min.js"></script>
    <script src="../../bs/js/bootstrap.js"></script>
    <title>管理员基本信息</title>
</head>
<body>
<table class="table">
    <caption>管理员信息</caption>

    <thead> <tr>
        <th>账户</th>
        <th>姓名</th>
        <th>电话</th>
    </tr>
    </thead>
    <tbody>
    <s:property value="manBean.getDept()" />
    <td><s:property  value="#session.logined"/><br/></td>
    <td><s:property value="#session.name"/></td>
    <td><s:property value="#session.phone"/></td>

    </tbody>
</table>
</body>
</html>
