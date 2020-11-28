<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
	prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags"
	prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="form" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인 하기</title>
</head>
<body>
<div align="center">
<form:form modelAttribute="user" method="post" 
	action="../login/template.html">
	<strong>I D</strong>
	<form:input path="user_id" size="10"/>
	<font color="red"><form:errors path="user_id"/></font>	
	<strong>PW</strong>
	<form:password path="user_pw" size="10"/>
	<font color="red"><form:errors path="user_pw"/></font>
	<br/>
	<input type="submit" value="로그인">     
	<input type="reset" value="취소">	
	<a href="../home/userentry.html">
	<input type="button" value="회원가입"></a>
	</form:form>	
</div>
</body>
</html>