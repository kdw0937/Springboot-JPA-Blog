<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

.ct input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

.ct input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
.ct input[type=reset] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

.ct input[type=submit]:hover {
  background-color: #45a049;
}

.ct {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>

<title>질문게시판 > 글쓰기</title>
</head>
<body>
<div class="gbt">
<p>
	<strong>질문 게시판 > 글쓰기</strong>
</p>
</div>
<div class="ct">
<form:form modelAttribute="qna"
	action="../home/write.html" method="post">

<label for="write_name">제  목 : </label>
    <form:input path="write_name" maxlength="50" placeholder="글 제목을 입력하세요." />    
  	<label for="pw">비밀번호</label><br/>
    <form:input path="pw" maxlength="20" placeholder="비밀번호를 입력하세요."/><br/>    
    <form:textarea path="write_context" rows="10" cols="100"></form:textarea><br/>
    <font color="red"><form:errors path="write_context"/></font>
    
    <input type="submit" value="확  인">
    <input type="reset" value="취소하기">

</form:form>

</div>

</body>
</html>