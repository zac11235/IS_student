<%@ page contentType="text/html; charset=gb2312"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
  <head>
    <title><s:text name="title.text"/></title>
  </head>  
  <body>
  	${userName},<s:text name="label.welcome"/><br/>
  	${reslutStr}
  </body>
</html>