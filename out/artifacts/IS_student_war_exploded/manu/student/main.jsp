
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv= "Content-Type" content="text/html; charset=utf-8" >
    <style>
        #header {
            background-color:#b9def0;
            color:black;
            text-align:center;
            padding:5px;

        }
        #nav {
            line-height:30px;
            background-color:#b9def0;
            color: black;
            height:300px;
            width:100px;
            float:left;
            padding:5px;
        }

        #section {
            width:1300px;
            float:center;
            text-align:center;
            padding:30px;
        }
    </style>
</head>

<body>

<div id="header">
    <h2>个人信息查询</h2>
</div>

<div id="nav">
    <tr>
        <a href="info.jsp" target="section">个人信息</a> <br>
        <a href="stu_ctable.jsp" target="section">课表</a><br>
        <a href="stu_grade.jsp" target="section">成绩</a><br>
        <a href="shopcart/index.jsp" target="section">选课</a><br>
        <a href="shopcart/cart.jsp" target="section" >修改密码</a><br>
        <li><a href="index.jsp" >退出</a></li>



</div>

<div id="section">

    <iframe name="section" src="info.jsp" height="550" width="1200" frameborder="0" marginheight="0" >
    </iframe>

</div>
</body>
</html>
