<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="co.jp.netwisdom.entity.UserinfoAndHobby"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<% UserinfoAndHobby uahEntity = (UserinfoAndHobby)request.getAttribute("uahEntity");%>
	<% String hobby = (String)request.getAttribute("hobby");%>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>用户检索页面</title>
</head>
<body>
	<% if(uahEntity != null && hobby != null){%>
		<form action="usersearch" method="get">
	姓名:<input type = "text" name = "name" id = "name" value = "<%=uahEntity.getUsername() %>"/><br>
	性别:<input type = "radio" name="sex" id ="sex" value="0" <%=uahEntity.getSex().equals("0")? "checked" : ""%>>男
		<input type = "radio" name="sex" id ="sex" value="1" <%=uahEntity.getSex().equals("1")? "checked" : ""%>>女<br>
	爱好:<input type="checkbox" name="hobby" id="hobby" value="0" <%=hobby.contains("0")? "checked" : "" %>>篮球
		<input type="checkbox" name="hobby" id="hobby" value="1" <%=hobby.contains("1")? "checked" : "" %>>足球
		<input type="checkbox" name="hobby" id="hobby" value="2" <%=hobby.contains("2")? "checked" : "" %>>网球
		<br>
	专业:<select name="major" id="major">
			<option value="0" <%=uahEntity.getMajor().equals("0")? "selected" : "" %>>软件工程</option>
			<option value="1" <%=uahEntity.getMajor().equals("1")? "selected" : "" %>>英语</option>
			<option value="2" <%=uahEntity.getMajor().equals("2")? "selected" : "" %>>数学</option>
		</select>
		<br><br>
	<input type="submit" value ="检索">
	<input type="reset" value ="重置">
	</form>
	<% }%>
	
	<hr>
</body>
</html>