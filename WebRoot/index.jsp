<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>
  
  <body align="center">
    <form action="login.do" method="post">
   гУЛЇУћЃК <input type="text" name="username"></br></br>
   Ум&nbsp;&nbsp;ТыЃК <input type="password" name="password"></br></br>
   <input type="submit" value="ЕЧТМ"><a href="zhuce.jsp">ЧызЂВс</a>
    </form>
  </body>
</html>
