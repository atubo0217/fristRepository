<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>用户注册页面</title>
</head>
<body>
	<form action="register" method="get">
		姓名<input type="text" name="username" id ="username" /><br>
		密码<input type="password" name="password" id ="password" /><br>
		性别<input type="radio" id ="sex" name ="sex" value="0" checked />男
			<input type="radio" id ="sex" name ="sex" value="1" />女
			<br>
		爱好<input type="checkbox" id ="hobby" name="hobby" value="0"/>篮球
			<input type="checkbox" id ="hobby" name="hobby" value="1"/>足球
			<input type="checkbox" id ="hobby" name="hobby" value="2"/>网球
			<br>
		专业<select name="major">
				<option value="0">软件工程</option>
				<option value="1">英语</option>
				<option value="2">数学</option>
			</select><br>
		简介<textarea name="intro">abcd</textarea><br>
		<input type="submit" value="注册" />
		<input type="reset" value="重置" />
	</form>
</body>
</html>