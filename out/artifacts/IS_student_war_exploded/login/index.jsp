<%--
  Created by IntelliJ IDEA.
  User: mings
  Date: 2020/6/30
  Time: 12:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
  <head>
    <title>学生信息系统</title>
    <link rel="stylesheet" type="text/css" href="../css/styles.css">
    <link rel="stylesheet"  href="../bs/css/bootstrap.css">
    <script src="../bs/js/jquery.min.js"></script>
    <script src="../bs/js/bootstrap.js"></script>
  </head>
  <body>
  <div class="bg-primary" align="center" style="background-color:lightblue">
    <h1>欢迎来到哈尔滨工业大学（威海）学生信息系统</h1>
  </div>
  <div id="form" class="bg-primary" align="center">
    <h4>学生登录</h4>
    <s:form action="loginAction.action" class="" method="POST">
      <s:textfield name="model.id" label="学号" size="22" />
      <s:password name="model.loginPwd"  label="密码" size="22"/>
      <%-- <checkboxlist list="">
         <checkbox value="stu">学生</checkbox>
         <checkbox value="teac">教师</checkbox>
         <checkbox value="mann">管理员</checkbox>
       </checkboxlist>
       --%>
      <s:submit  value="登录" align="center"/>
      <s:reset  value="重置" align="center"/>


    </s:form>

  <div id="">
    <a href="">忘记密码，找回</a>
    <button id="teacher" onclick="window.location.href = '../login/logTeacher.jsp'">教师登录</button>
    <button id="Mannager" onclick="window.location.href = '../login/logMannager.jsp'">管理员登录</button>
  </div>
  </div>
  </body>
</html>