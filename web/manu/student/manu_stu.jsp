<%--
  Created by IntelliJ IDEA.
  User: mings
  Date: 2020/6/30
  Time: 18:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生信息</title>
    <link rel="stylesheet" type="text/css" href="../../styles.css">
    <link rel="stylesheet"  href="../../bs/css/bootstrap.css">
    <script src="../bs/js/jquery.min.js"></script>
    <script src="../../bs/js/bootstrap.js"></script>
</head>
<body>
<div id="header">
    <h1 id="captain">学生个人信息查询</h1>
</div>
<div id="nav">
<ul class="nav nav-pills nav-stacked">
    <li class="active"><a href="main.jsp" target = "showframe">个人信息</a></li>
    <li><a href="http://www.baidu.com" target = "showframe">课程表</a></li>
    <li><a href="#">成绩单</a></li>
    <li><a href="#">荣誉墙</a></li>
    <li><a href="#">违纪处分</a></li>
</ul>
</div>
<div id="section" >
    <iframe name="showframe" width="100%" height="100%" src="main.jsp" method="post"/>
</div>
</body>
</html>
