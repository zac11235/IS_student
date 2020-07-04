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
    <title>教师信息</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <link rel="stylesheet"  href="bs/css/bootstrap.css">
    <script src="bs/js/jquery.min.js"></script>
    <script src="bs/js/bootstrap.js"></script>
</head>
<body>
<div id="header">
    <h1 id="captain">查询菜单</h1>
</div>
<div id="nav">
<ul class="nav nav-pills nav-stacked">
    <li ><a href="manu/teacher/main_teac.jsp" target = "showframe">个人信息</a></li>
    <li><a href="manu/teacher/t_lesson.jsp" target = "showframe">课程表</a></li>
    <li><a href="#" target = "showframe">成绩单</a></li>
</ul>
    </div>
<div id="section">
    <iframe name="showframe" width="100%" height="100%" src="manu/teacher/main_teac.jsp" method="post"/>
</div>
</body>
</html>
