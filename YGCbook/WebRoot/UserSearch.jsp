<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<from action="usersearch" method="get">
	姓名<input type = "text" name = "name" id = "name" /></br>
	性别<input type = "radio" name="sex" id ="sex" value="o">男
		<input type = "radio" name="sex" id ="sex" value="1">女</br>
	爱好<input type="checkbox" name="hobby" id="hobby" value="o">篮球
		<input type="checkbox" name="hobby" id="hobby" value="1">足球
		<input type="checkbox" name="hobby" id="hobby" value="2">网球
		</br>
	专业<select name="major" id="major">
			<option value="o">软件工程</option>
			<option value="1">英语</option>
			<option value="2">数学</option>
		</select>
		</br>
	<input type="submit" value ="检索">
	<input type="reset" value ="重置">
	</from>
</body>
</html>