<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html; charset=utf-8" %>
<%--解码字符要求为UTF-8，不然容易出错 --%>
<%@ page import="java.util.*"%>
<%@page import="teacher.TeacBean"%>
<%@ page import="DB.Lesson" %>
<%@ page import="org.apache.struts2.ServletActionContext" %>
<html><head>
    <link rel="stylesheet" type="text/css" href="../../css/styles.css">
    <link rel="stylesheet"  href="../../bs/css/bootstrap.css">
    <script src="../bs/js/jquery.min.js"></script>
    <script src="../../bs/js/bootstrap.js"></script>
    <title>教师信息</title>
    <%--
    <script>
   function stock() {
   document.getElementById("num").innerHTML ="39";
   }
   </script>
    --%>
</head>
<body>
    <h1 align="center">教师上课表</h1>
    <table  class="table table-bordered">
        <thead>
        <tr align="center" valign="middle">
            <th>课程号</th>
            <th>课程名</th>
            <th>上课地点</th>
            <th>上课时间</th>
        </tr>
        </thead>
        <jsp:useBean id="teacBean" class="teacher.TeacBean"/>
        <%
            Vector lesson=(Vector)teacBean.readLesson();
            for(int i=0;i<lesson.size();i++){
                Lesson order= (Lesson) lesson.elementAt(i);
        %>
            <tbody>
            <tr align="center" valign="middle">
                <td><%=order.getId()%></td>
                <td><%=order.getName()%></td>
                <td> <%=order.getPlace()%></td>
                <td><%=order.getTime()%></td>
                <%--脚本才有事件触发 --%>
            </tr>
            </tbody>

        <%} %>
    </table>
</body>
   <a href="manu_teac.jsp">退回</a>
</html>