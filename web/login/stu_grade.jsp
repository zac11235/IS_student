<%@ page import="lib.Student" %>
<%@ page import="org.apache.struts2.ServletActionContext" %>
<%@ page import="java.util.Vector" %>
<%@ page import="DB.Xuanke" %><%--
  Created by IntelliJ IDEA.
  User: rillac
  Date: 2020/7/4
  Time: 10:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>成绩</title>
</head>
<body>
<hr>
<table  width="600">
    <tr bgcolor="#dddddd" border="1">
        <td align="center" width="50">课程号</td>
        <td align="center" width="80">课程名</td>
        <td align="center" width="80">成绩</td>
        <td align="center" width="80">排名</td>
    </tr>
    <jsp:useBean id="xuanke" class="DB.Xuanke"/>
    <%
        String st_Id,c_id,c_Name,Score,rank;
        int avr=0,sum=0;
        Student stu=(Student) ServletActionContext.getRequest().getSession().getAttribute("student");
        //将查询结果集中的记录输出到页面上
        //从当前记录中读取各字段的值
        st_Id=stu.getId().trim();
        Vector xk=(Vector) xuanke.readLesson(st_Id);
        for(int i=0;i<xk.size();i++){
            Xuanke xuanke1=(Xuanke)xk.elementAt(i);
            c_id=xuanke1.getL_id().trim();
            c_Name=xuanke1.getLesName();
            Score=xuanke1.getScore();
            rank=xuanke1.getRank();
            out.println("<tr>");
            out.println("<td>");
            out.println(""+ c_id +"<br>");
            out.println("</td>");

            out.println("<td>");
            out.println(""+ c_Name +"<br>");
            out.println("</td>");
            out.println("<td>");
            out.println(""+ Score +"<br>");
            out.println("</td>");
            out.println("<td>");
            out.println(""+ rank +"<br>");
            out.println("</td>");
            sum+=Integer.parseInt(Score);
        }
        avr=sum/(xk.size());
        out.println("<tr>");
        out.println("<td>");
        out.println("平均成绩："+ avr +"<br>");
        out.println("</td>");
        out.println("</tr>");



        /*out.println("</td>");
            out.println("<td><a href='buy.jsp?op=add&sp_No="+sp_No+"'>放入购物车</a></td>");
            out.println("</tr>");*/

    %>
</table>
<br>

</body>
</html>
