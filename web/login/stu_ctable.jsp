<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="lib.Student" %>
<%@ page import="org.apache.struts2.ServletActionContext" %>
<%@ page import="java.util.Vector" %>
<%@ page import="DB.Xuanke" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>课表</title>
</head>
<body>
<hr>
<table  width="600">
    <tr bgcolor="#dddddd" border="1">
        <td align="center" width="80">课程号</td>
        <td align="center" width="80">名字</td>
        <td align="center" width="80">地点</td>
        <td align="center" width="80">任课老师</td>
        <td align="center" width="80">时间</td>
    </tr>
    <jsp:useBean id="xuanke" class="DB.Xuanke"/>
    <%
        String st_Id,c_id,c_Name,c_Place,c_Teac,c_Time;
        Student stu=(Student) ServletActionContext.getRequest().getSession().getAttribute("student");
        //将查询结果集中的记录输出到页面上
        //从当前记录中读取各字段的值
        st_Id=stu.getId().trim();
        Vector xk=(Vector) xuanke.readLesson(st_Id);
        for(int i=0;i<xk.size();i++){
            Xuanke xuanke1=(Xuanke)xk.elementAt(i);
            c_id=xuanke1.getL_id();
            c_Name=xuanke1.getLesName();
            c_Place=xuanke1.getPlace();
            c_Teac=xuanke1.getTeacher();
            c_Time=xuanke1.getTime();

            out.println("<tr>");
            out.println("<td>");
            out.println(""+ c_id +"<br>");
            out.println("</td>");

            out.println("<td>");
            out.println(""+ c_Name +"<br>");
            out.println("</td>");
            out.println("<td>");
            out.println(""+ c_Place +"<br>");
            out.println("</td>");
            out.println("<td>");
            out.println(""+ c_Teac +"<br>");
            out.println("</td>");

            out.println("<td>");
            out.println(""+ c_Time +"<br>");
            out.println("</td>");
            out.println("</tr>");
        }



        /*out.println("</td>");
            out.println("<td><a href='buy.jsp?op=add&sp_No="+sp_No+"'>放入购物车</a></td>");
            out.println("</tr>");*/

    %>
</table>
<br>

</body>
</html>
