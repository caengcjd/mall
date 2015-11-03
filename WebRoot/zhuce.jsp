<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'zhuce.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
      <form action="regedit.do" method="post">
	   ĞÕÃû£º <input type="text" name="uname"></br></br>
	   ÃÜ&nbsp;&nbsp;Âë£º<input type="password" name="upass"></br></br>
	    Äê&nbsp;&nbsp;Áä£º<input type="text" name="usex"></br></br>
	     µØ&nbsp;&nbsp;Ö·£º<input type="text" name="uaddress"></br></br>
	   <input type="submit" value="µÇÂ¼">
    </form>
  </body>
</html>
