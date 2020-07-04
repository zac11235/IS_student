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
    <title>学生信息系统</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <link rel="stylesheet"  href="bs/css/bootstrap.css">
    <script src="bs/js/jquery.min.js"></script>
    <script src="bs/js/bootstrap.js"></script>
</head>
<body>
<div id="header">
    <h1 id="captain">管理员信息查询</h1>
</div>
<div id="nav">
<ul class="nav nav-pills nav-stacked">
    <li class="active"><a href="manu/mannager/main_m.jsp" target = "showframe">个人信息</a></li>
    <li><a href="manu/mannager/m_lesson.jsp" target = "showframe">课表</a></li>
    <li><a href="manu/mannager/search.jsp">搜索学生</a></li>
    <li><a href="manu/mannager/weiji.jsp">违纪处分</a></li>
</ul>
</div>
<div id="section">
    <iframe name="showframe" width="100%" height="100%" src="manu/mannager/main_m.jsp" method="post"/>
</div>
</body>
</html>
