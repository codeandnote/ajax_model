
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>



<script language="javascript" src="JS/AjaxRequest.js"></script>
<script language="javascript">

//函数1 提交数据
function getSysTime(){
	//var loader=new net.AjaxRequest("checkuser.jsp?nocache="+new Date().getTime(),deal,onerror,"GET");
	var loader=new net.AjaxRequest("checkuser.jsp?nocache="+new Date().getTime(),deal,onerror,"POST","user="+form1.user.value);
	//document.getElementById(id).value
//javascript:alert(getCookie("name"));


}

//函数2 接收数this.req.responseText据处理
function deal(){
	document.getElementById("tooltip").innerHTML="现在是："+this.req.responseText;
}

//timer = window.setInterval("getSysTime();",1000); 
</script>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>

<body>


<p>禁止符号，数据库查询会出错</p>
<form name="form1" action="checkuser.jsp" method="post" onSubmit="return check(this)" >
  <p>昵称:
    <input name="user" type="text" id="user" onkeyup="getSysTime()"/>
    <input type="submit" name="chec" id="chec" value="检测" onClick="checkuser(username.value);"/>
  <div id="tooltip">1</div>
  </p>
  <p>&nbsp;</p>
  <p>
    <input type="submit" name="submit" id="submit" value="提交" />
  </p>
</form>




<p>&nbsp;</p>
</body>
</html>