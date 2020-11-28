<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"
	prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags"
	prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="form" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<c:choose>
	<c:when test="${RESULT == 'nobody' }">
	<h3 align="center">글을 올리리면 로그인 해야합니다.</h3>
	</c:when>
	<c:when test="${ITEM == 'nobody' }">
	<h3 align="center">상품정보를 올리려면, 
	로그인 해야 합니다.</h3>
	</c:when>
</c:choose>
<div class="container" style="text-align:center; align:center">
<div align="center" style="padding:15px;">
  <h2>로그인</h2>
  <p>서비스를 사용 하려면 먼저 로그인 해주세요.</p>
  <div align="center">
  <form action="../login/template.html" method="post">
    <label for="id">ID</label>
    <input type="text" class="form-control" id="user_id" placeholder="Enter ID" name="user_id">
    <br/>
    <label for="pwd">Password:</label>
    <input type="password" class="form-control" id="user_pw" placeholder="Enter password" name="user_pw">
    <br/><br/><br/>
    <div class="form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember"> 기억하기
      </label>
    </div>
    <button type="submit" class="btn btn-primary">로그인</button> &nbsp;&nbsp;
    <button type="reset" class="btn btn-primary">취소</button>
  </form>
  </div>
  </div>
  </div>
</body>
</html>