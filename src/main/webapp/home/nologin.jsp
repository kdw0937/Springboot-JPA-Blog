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
	<h3 align="center">���� �ø����� �α��� �ؾ��մϴ�.</h3>
	</c:when>
	<c:when test="${ITEM == 'nobody' }">
	<h3 align="center">��ǰ������ �ø�����, 
	�α��� �ؾ� �մϴ�.</h3>
	</c:when>
</c:choose>
<div class="container" style="text-align:center; align:center">
<div align="center" style="padding:15px;">
  <h2>�α���</h2>
  <p>���񽺸� ��� �Ϸ��� ���� �α��� ���ּ���.</p>
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
        <input class="form-check-input" type="checkbox" name="remember"> ����ϱ�
      </label>
    </div>
    <button type="submit" class="btn btn-primary">�α���</button> &nbsp;&nbsp;
    <button type="reset" class="btn btn-primary">���</button>
  </form>
  </div>
  </div>
  </div>
</body>
</html>