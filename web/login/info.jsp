<%@ page import="org.apache.struts2.ServletActionContext" %>
<%@ page import="lib.Student" %>
<%@ page import="DB.Datab" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%--
  Created by IntelliJ IDEA.
  User: rillac
  Date: 2020/7/3
  Time: 20:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>基本信息</title>
</head>
<body>

<hr>
<table  width="600">
    <tr bgcolor="#dddddd" border="1">
        <td align="center" width="80">学号</td>
        <td align="center">班级</td>
        <td align="center" width="80">姓名</td>
        <td align="center" width="80">院系</td>
        <td align="center" width="80">奖惩记录</td>
    </tr>
    <%
        String st_Id,st_Name,st_Dept,st_Rec;
        int st_Class;
        Student stu=(Student) ServletActionContext.getRequest().getSession().getAttribute("student");
        //将查询结果集中的记录输出到页面上
        //从当前记录中读取各字段的值
        st_Id=stu.getId().trim();
        st_Class=stu.getSclass();
        Connection conn=Datab.getcon();
        String sql = "select * from class where class_id=?";
        PreparedStatement pr=conn.prepareStatement(sql);
        pr.setInt(1,st_Class);
        ResultSet rs = pr.executeQuery();
        st_Name=stu.getLoginName().trim();
        rs.next();
        st_Dept=rs.getString(2);
        st_Rec=stu.getRecord().trim();
        out.println("<tr>");
        out.println("<td>");
        out.println(""+ st_Id +"<br>");
        out.println("</td>");
        out.println("<td>");
        out.println(""+ st_Class +"<br>");
        out.println("</td>");
        out.println("<td>");
        out.println(""+ st_Name +"<br>");
        out.println("</td>");

        out.println("<td>");
        out.println(""+ st_Dept +"<br>");
        out.println("</td>");

        out.println("<td>");
        out.println(""+ st_Rec +"<br>");
        /*out.println("</td>");
            out.println("<td><a href='buy.jsp?op=add&sp_No="+sp_No+"'>放入购物车</a></td>");
            out.println("</tr>");*/

    %>
</table>
<br>

</body>
</html>
