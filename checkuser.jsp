<%request.setCharacterEncoding("UTF-8");%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean id="db" scope="page" class="com.javaweb.zcx.Sqlclass"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>

<body>








<%




String name=request.getParameter("user");
out.println(name);
db.LinkSql("db","root","547896321");

int a=db.searchsz("select * from userdata where nickname=\""+name+"\"","nickname");
if(a==0)
{
	out.println("ok");
	}
	else
	{out.println("forbidden");
}
		
db.close();		
%>



</body>
</html>